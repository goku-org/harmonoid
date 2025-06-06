import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/material.dart' hide Intent;
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:synchronized/extension.dart';

import 'package:harmonoid/core/configuration/configuration.dart';
import 'package:harmonoid/core/intent.dart';
import 'package:harmonoid/core/media_library.dart';
import 'package:harmonoid/core/media_player/media_player.dart';
import 'package:harmonoid/localization/localization.dart';
import 'package:harmonoid/state/lyrics_notifier.dart';
import 'package:harmonoid/state/now_playing_color_palette_notifier.dart';
import 'package:harmonoid/state/now_playing_mobile_notifier.dart';
import 'package:harmonoid/state/theme_notifier.dart';
import 'package:harmonoid/state/update_notifier.dart';
import 'package:harmonoid/ui/media_library/media_library_flags.dart';
import 'package:harmonoid/ui/media_library/media_library_inaccessible_directories_screen.dart';
import 'package:harmonoid/ui/media_library/media_library_search_bar.dart';
import 'package:harmonoid/ui/router.dart';
import 'package:harmonoid/utils/android_utils.dart';
import 'package:harmonoid/utils/keyboard_shortcuts.dart';
import 'package:harmonoid/utils/macos_menu_bar.dart';

class Harmonoid extends StatefulWidget {
  const Harmonoid({super.key});

  @override
  State<Harmonoid> createState() => _HarmonoidState();
}

class _HarmonoidState extends State<Harmonoid> with WidgetsBindingObserver {
  @override
  BuildContext get context => router.routerDelegate.navigatorKey.currentContext!;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Intent.instance.notify(playbackState: Configuration.instance.mediaPlayerPlaybackState);
      // HACK:
      if (Platform.isMacOS) {
        await const MethodChannel('com.alexmercerind/window_plus').invokeMethod('notifyUrls');
      }
      final inaccessibleDirectories = await MediaLibraryInaccessibleDirectoriesScreen.showIfRequired(context);
      if (!inaccessibleDirectories && Configuration.instance.mediaLibraryRefreshUponStart) {
        MediaLibrary.instance.refresh();
      }

      unawaited(UpdateNotifier.instance.check());
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<bool> didPopRoute() async {
    if (NowPlayingMobileNotifier.instance.slidingUpPanelOpened) {
      NowPlayingMobileNotifier.instance.closeSlidingUpPanel();
      return true;
    }
    if (NowPlayingMobileNotifier.instance.maximized) {
      NowPlayingMobileNotifier.instance.minimizeNowPlayingBar();
      return true;
    }
    if (mediaLibrarySearchController.isAttached && mediaLibrarySearchController.isOpen && mediaLibrarySearchViewVisible) {
      mediaLibrarySearchController.closeView('');
      return true;
    }
    if (!router.canPop()) {
      AndroidUtils.instance.moveTaskToBack();
      return true;
    }
    return super.didPopRoute();
  }

  // HACK:
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    synchronized(() async {
      try {
        if (Configuration.instance.notificationLyrics && LyricsNotifier.instance.lyrics.isNotEmpty && await Permission.notification.isGranted) {
          return;
        }
      } catch (exception, stacktrace) {
        debugPrint(exception.toString());
        debugPrint(stacktrace.toString());
      }

      if (state == AppLifecycleState.resumed) {
        MediaPlayer.instance.observeTimePosPlayer();
      } else {
        MediaPlayer.instance.unobserveTimePosPlayer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MediaLibrary.instance),
        ChangeNotifierProvider(create: (_) => MediaPlayer.instance),
        ChangeNotifierProvider(create: (context) => Localization.instance),
        ChangeNotifierProvider(create: (context) => ThemeNotifier.instance..update(context: context)),
        ChangeNotifierProvider(create: (_) => UpdateNotifier.instance),
        ChangeNotifierProvider(create: (_) => LyricsNotifier.instance),
        ChangeNotifierProvider(create: (_) => NowPlayingColorPaletteNotifier.instance),
        Provider(create: (_) => NowPlayingMobileNotifier.instance),
      ],
      builder: (context, _) => Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, _) => MacOSMenuBar(
          child: KeyboardShortcutsListener(
            child: MaterialApp.router(
              scrollBehavior: const DefaultScrollBehavior(),
              debugShowCheckedModeBanner: false,
              theme: themeNotifier.theme,
              darkTheme: themeNotifier.darkTheme,
              themeMode: themeNotifier.themeMode,
              routerConfig: router,
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultScrollBehavior extends MaterialScrollBehavior {
  const DefaultScrollBehavior();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return const ClampingScrollPhysics();
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        return const DefaultScrollPhysics();
      case TargetPlatform.iOS:
        return const BouncingScrollPhysics();
      case TargetPlatform.macOS:
        return const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast);
    }
  }
}

class DefaultScrollPhysics extends ScrollPhysics {
  const DefaultScrollPhysics({super.parent});

  @override
  BouncingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return BouncingScrollPhysics(parent: buildParent(ancestor));
  }

  double frictionFactor(double overscrollFraction) {
    return 0.07 * math.pow(1 - overscrollFraction, 2);
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    assert(offset != 0.0);
    assert(position.minScrollExtent <= position.maxScrollExtent);

    if (!position.outOfRange) {
      return offset;
    }

    final double overscrollPastStart = math.max(position.minScrollExtent - position.pixels, 0.0);
    final double overscrollPastEnd = math.max(position.pixels - position.maxScrollExtent, 0.0);
    final double overscrollPast = math.max(overscrollPastStart, overscrollPastEnd);
    final bool easing = (overscrollPastStart > 0.0 && offset < 0.0) || (overscrollPastEnd > 0.0 && offset > 0.0);

    final double friction = easing ? frictionFactor((overscrollPast - offset.abs()) / position.viewportDimension) : frictionFactor(overscrollPast / position.viewportDimension);
    final double direction = offset.sign;

    return direction * _applyFriction(overscrollPast, offset.abs(), friction);
  }

  static double _applyFriction(double extentOutside, double absDelta, double gamma) {
    assert(absDelta > 0);
    double total = 0.0;
    if (extentOutside > 0) {
      final double deltaToLimit = extentOutside / gamma;
      if (absDelta < deltaToLimit) {
        return absDelta * gamma;
      }
      total += extentOutside;
      absDelta -= deltaToLimit;
    }
    return total + absDelta;
  }

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    if (value < position.pixels && position.pixels <= position.minScrollExtent) {
      return value - position.pixels;
    }
    if (position.maxScrollExtent <= position.pixels && position.pixels < value) {
      return value - position.pixels;
    }
    if (value < position.minScrollExtent && position.minScrollExtent < position.pixels) {
      return value - position.minScrollExtent;
    }
    if (position.pixels < position.maxScrollExtent && position.maxScrollExtent < value) {
      return value - position.maxScrollExtent;
    }
    return 0.0;
  }

  @override
  Simulation? createBallisticSimulation(ScrollMetrics position, double velocity) {
    final tolerance = toleranceFor(position);
    if (velocity.abs() >= tolerance.velocity || position.outOfRange) {
      return BouncingScrollSimulation(
        spring: spring,
        position: position.pixels,
        velocity: velocity,
        leadingExtent: position.minScrollExtent,
        trailingExtent: position.maxScrollExtent,
        tolerance: tolerance,
        constantDeceleration: 1400.0,
      );
    }
    return null;
  }

  @override
  double get minFlingVelocity => kMinFlingVelocity * 2.0;

  @override
  double carriedMomentum(double existingVelocity) {
    return existingVelocity.sign * math.min(0.000816 * math.pow(existingVelocity.abs(), 1.967).toDouble(), 40000.0);
  }

  @override
  double get dragStartDistanceMotionThreshold => 3.5;

  @override
  double get maxFlingVelocity {
    return kMaxFlingVelocity * 8.0;
  }

  @override
  SpringDescription get spring {
    return SpringDescription.withDampingRatio(
      mass: 0.3,
      stiffness: 75.0,
      ratio: 1.3,
    );
  }
}
