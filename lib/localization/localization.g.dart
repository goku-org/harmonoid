// AUTO GENERATED FILE, DO NOT EDIT.

part of 'localization.dart';

class LocalizationBase extends Values {

  late LocalizationData current;

  Future<void> set({required LocalizationData value}) async {
    final data = await rootBundle.loadString('assets/localizations/localizations/${value.code}.json');
    final map = json.decode(data);
    current = value;
    ABOUT = map['ABOUT']!;
    ABOUT_HARMONOID = map['ABOUT_HARMONOID']!;
    ADD = map['ADD']!;
    ADDED_ENTRY_TO_PLAYLIST = map['ADDED_ENTRY_TO_PLAYLIST']!;
    ADDED_FOLDERS = map['ADDED_FOLDERS']!;
    ADDED_M_OF_N_FILES = map['ADDED_M_OF_N_FILES']!;
    ADDING_YOUR_MUSIC = map['ADDING_YOUR_MUSIC']!;
    ADD_NEW_FOLDER = map['ADD_NEW_FOLDER']!;
    ADD_NEW_FOLDER_SUBTITLE = map['ADD_NEW_FOLDER_SUBTITLE']!;
    ADD_PLAYLIST_TO_NOW_PLAYING = map['ADD_PLAYLIST_TO_NOW_PLAYING']!;
    ADD_THIS_FOLDER = map['ADD_THIS_FOLDER']!;
    ADD_TO_NOW_PLAYING = map['ADD_TO_NOW_PLAYING']!;
    ADD_TO_PLAYLIST = map['ADD_TO_PLAYLIST']!;
    ALBUM = map['ALBUM']!;
    ALBUMS = map['ALBUMS']!;
    ALBUM_ARTIST = map['ALBUM_ARTIST']!;
    ALBUM_ARTISTS = map['ALBUM_ARTISTS']!;
    ALBUM_DELETE_DIALOG_SUBTITLE = map['ALBUM_DELETE_DIALOG_SUBTITLE']!;
    ALIGNMENT = map['ALIGNMENT']!;
    ALL_FILES = map['ALL_FILES']!;
    ANIMATION_SPEED = map['ANIMATION_SPEED']!;
    ARTIST = map['ARTIST']!;
    ARTISTS = map['ARTISTS']!;
    ASCENDING = map['ASCENDING']!;
    AVAILABLE_STORAGES = map['AVAILABLE_STORAGES']!;
    A_TO_Z = map['A_TO_Z']!;
    BETA = map['BETA']!;
    BUFFERING = map['BUFFERING']!;
    CANCEL = map['CANCEL']!;
    CENTER = map['CENTER']!;
    CLEAR_LRC_FILE = map['CLEAR_LRC_FILE']!;
    COMING_UP = map['COMING_UP']!;
    CONTROL_PANEL = map['CONTROL_PANEL']!;
    COPY_AS_JSON = map['COPY_AS_JSON']!;
    COPY_LINK = map['COPY_LINK']!;
    CORRUPT_LRC_FILE = map['CORRUPT_LRC_FILE']!;
    COUNT = map['COUNT']!;
    CREATE = map['CREATE']!;
    CREATE_NEW_PLAYLIST = map['CREATE_NEW_PLAYLIST']!;
    DATE_ADDED = map['DATE_ADDED']!;
    DELETE = map['DELETE']!;
    DESCENDING = map['DESCENDING']!;
    DEVELOPER = map['DEVELOPER']!;
    DISCOVERING_FILES = map['DISCOVERING_FILES']!;
    DISPLAY_AUDIO_FORMAT = map['DISPLAY_AUDIO_FORMAT']!;
    DISPLAY_PROGRESS_ON_TASKBAR = map['DISPLAY_PROGRESS_ON_TASKBAR']!;
    DISPLAY_UPON_PLAYBACK = map['DISPLAY_UPON_PLAYBACK']!;
    DISPLAY_VOLUME_SLIDER = map['DISPLAY_VOLUME_SLIDER']!;
    DONATE = map['DONATE']!;
    DONE = map['DONE']!;
    EDIT = map['EDIT']!;
    EDIT_ALBUM_PARAMETERS_SUBTITLE = map['EDIT_ALBUM_PARAMETERS_SUBTITLE']!;
    EDIT_ALBUM_PARAMETERS_TITLE = map['EDIT_ALBUM_PARAMETERS_TITLE']!;
    EDIT_DETAILS = map['EDIT_DETAILS']!;
    EDIT_MINIMUM_FILE_SIZE = map['EDIT_MINIMUM_FILE_SIZE']!;
    ENABLE_ANIMATION_EFFECTS = map['ENABLE_ANIMATION_EFFECTS']!;
    ENABLE_DISCORD_RPC = map['ENABLE_DISCORD_RPC']!;
    ENABLE_NOTIFICATION_LYRICS = map['ENABLE_NOTIFICATION_LYRICS']!;
    ENABLE_NOW_PLAYING_RIPPLE_EFFECT = map['ENABLE_NOW_PLAYING_RIPPLE_EFFECT']!;
    ENABLE_VOLUME_BOOST_FILTER = map['ENABLE_VOLUME_BOOST_FILTER']!;
    ENABLE_VOLUME_BOOST_FILTER_WARNING = map['ENABLE_VOLUME_BOOST_FILTER_WARNING']!;
    END = map['END']!;
    ENTRIES = map['ENTRIES']!;
    ENTRY = map['ENTRY']!;
    ERROR = map['ERROR']!;
    EXIT_FULLSCREEN = map['EXIT_FULLSCREEN']!;
    EXIT_NOW_PLAYING = map['EXIT_NOW_PLAYING']!;
    EXIT_SUBTITLE = map['EXIT_SUBTITLE']!;
    EXIT_TITLE = map['EXIT_TITLE']!;
    FILE = map['FILE']!;
    FILE_INFORMATION = map['FILE_INFORMATION']!;
    FILE_PATH_OR_URL = map['FILE_PATH_OR_URL']!;
    FIND = map['FIND']!;
    FOLDER = map['FOLDER']!;
    FOLDER_NOT_FOUND = map['FOLDER_NOT_FOUND']!;
    FOLLOW_ON_X = map['FOLLOW_ON_X']!;
    FULLSCREEN = map['FULLSCREEN']!;
    GENRE = map['GENRE']!;
    GENRES = map['GENRES']!;
    GITHUB = map['GITHUB']!;
    GO_TO_SETTINGS = map['GO_TO_SETTINGS']!;
    HIDE = map['HIDE']!;
    HIDE_LYRICS = map['HIDE_LYRICS']!;
    HISTORY = map['HISTORY']!;
    IMAGES = map['IMAGES']!;
    IMPORT = map['IMPORT']!;
    LAST_DIRECTORY_REMOVED = map['LAST_DIRECTORY_REMOVED']!;
    LESS = map['LESS']!;
    LICENSE = map['LICENSE']!;
    LIKED_SONGS = map['LIKED_SONGS']!;
    LOOKUP_FOR_FALLBACK_COVERS = map['LOOKUP_FOR_FALLBACK_COVERS']!;
    LOOKUP_FOR_LRC_IN_DIRECTORY = map['LOOKUP_FOR_LRC_IN_DIRECTORY']!;
    LYRICS = map['LYRICS']!;
    LYRICS_NOT_FOUND = map['LYRICS_NOT_FOUND']!;
    LYRICS_RETRIEVING = map['LYRICS_RETRIEVING']!;
    LYRICS_SIZE = map['LYRICS_SIZE']!;
    MATERIAL_DESIGN = map['MATERIAL_DESIGN']!;
    MEDIA_FILES = map['MEDIA_FILES']!;
    MEDIA_LIBRARY = map['MEDIA_LIBRARY']!;
    MEDIA_LIBRARY_INACCESSIBLE_FOLDERS_SUBTITLE = map['MEDIA_LIBRARY_INACCESSIBLE_FOLDERS_SUBTITLE']!;
    MEDIA_LIBRARY_INACCESSIBLE_FOLDERS_TITLE = map['MEDIA_LIBRARY_INACCESSIBLE_FOLDERS_TITLE']!;
    MEDIA_LIBRARY_NO_ITEMS_SUBTITLE = map['MEDIA_LIBRARY_NO_ITEMS_SUBTITLE']!;
    MEDIA_LIBRARY_NO_ITEMS_TITLE = map['MEDIA_LIBRARY_NO_ITEMS_TITLE']!;
    MEDIA_LIBRARY_REFRESHING_DIALOG_SUBTITLE = map['MEDIA_LIBRARY_REFRESHING_DIALOG_SUBTITLE']!;
    MENU = map['MENU']!;
    MINIMUM_FILE_SIZE = map['MINIMUM_FILE_SIZE']!;
    MINIMUM_FILE_SIZE_WARNING = map['MINIMUM_FILE_SIZE_WARNING']!;
    MOBILE_ALBUM_GRID_SIZE = map['MOBILE_ALBUM_GRID_SIZE']!;
    MOBILE_ARTIST_GRID_SIZE = map['MOBILE_ARTIST_GRID_SIZE']!;
    MOBILE_GENRE_GRID_SIZE = map['MOBILE_GENRE_GRID_SIZE']!;
    MODIFY_BACKGROUND_IMAGES = map['MODIFY_BACKGROUND_IMAGES']!;
    MORE = map['MORE']!;
    MUTE = map['MUTE']!;
    M_TRACKS_AND_N_ALBUMS = map['M_TRACKS_AND_N_ALBUMS']!;
    NEXT = map['NEXT']!;
    NO = map['NO']!;
    NOTHING_IN_QUEUE = map['NOTHING_IN_QUEUE']!;
    NOW_PLAYING = map['NOW_PLAYING']!;
    NOW_YOU_ARE_GOOD_TO_GO_BACK = map['NOW_YOU_ARE_GOOD_TO_GO_BACK']!;
    NO_FOLDERS_ADDED = map['NO_FOLDERS_ADDED']!;
    NO_PLAYLISTS_FOUND = map['NO_PLAYLISTS_FOUND']!;
    N_ALBUMS = map['N_ALBUMS']!;
    N_ARTISTS = map['N_ARTISTS']!;
    N_ENTRIES = map['N_ENTRIES']!;
    N_GENRES = map['N_GENRES']!;
    N_TRACKS = map['N_TRACKS']!;
    OK = map['OK']!;
    OPEN_FILE_OR_URL = map['OPEN_FILE_OR_URL']!;
    OPEN_IN_BROWSER = map['OPEN_IN_BROWSER']!;
    OPTIONS = map['OPTIONS']!;
    ORDER = map['ORDER']!;
    PAUSE = map['PAUSE']!;
    PAUSED = map['PAUSED']!;
    PERMISSION_IMAGES_AND_PHOTOS = map['PERMISSION_IMAGES_AND_PHOTOS']!;
    PERMISSION_IMAGES_AND_PHOTOS_SUBTITLE = map['PERMISSION_IMAGES_AND_PHOTOS_SUBTITLE']!;
    PERMISSION_MUSIC_AND_AUDIO = map['PERMISSION_MUSIC_AND_AUDIO']!;
    PERMISSION_MUSIC_AND_AUDIO_SUBTITLE = map['PERMISSION_MUSIC_AND_AUDIO_SUBTITLE']!;
    PERMISSION_NOTIFICATIONS = map['PERMISSION_NOTIFICATIONS']!;
    PERMISSION_NOTIFICATIONS_SUBTITLE = map['PERMISSION_NOTIFICATIONS_SUBTITLE']!;
    PHONE = map['PHONE']!;
    PITCH = map['PITCH']!;
    PLAY = map['PLAY']!;
    PLAYING = map['PLAYING']!;
    PLAYLIST = map['PLAYLIST']!;
    PLAYLISTS = map['PLAYLISTS']!;
    PLAYLIST_ADD_DIALOG_SUBTITLE = map['PLAYLIST_ADD_DIALOG_SUBTITLE']!;
    PLAYLIST_ADD_DIALOG_TITLE = map['PLAYLIST_ADD_DIALOG_TITLE']!;
    PLAYLIST_CREATE_DIALOG_SUBTITLE = map['PLAYLIST_CREATE_DIALOG_SUBTITLE']!;
    PLAYLIST_DELETE_DIALOG_SUBTITLE = map['PLAYLIST_DELETE_DIALOG_SUBTITLE']!;
    PLAYLIST_ENTRY_REMOVE_DIALOG_SUBTITLE = map['PLAYLIST_ENTRY_REMOVE_DIALOG_SUBTITLE']!;
    PLAYLIST_RENAME_DIALOG_SUBTITLE = map['PLAYLIST_RENAME_DIALOG_SUBTITLE']!;
    PLAY_ALL = map['PLAY_ALL']!;
    PLAY_NOW = map['PLAY_NOW']!;
    PLAY_URL = map['PLAY_URL']!;
    PLAY_URL_SUBTITLE = map['PLAY_URL_SUBTITLE']!;
    PREVIOUS = map['PREVIOUS']!;
    PRIVACY = map['PRIVACY']!;
    PROCEED = map['PROCEED']!;
    PROPERTY = map['PROPERTY']!;
    QUIT_HARMONOID = map['QUIT_HARMONOID']!;
    READ = map['READ']!;
    READ_METADATA = map['READ_METADATA']!;
    RECOMMENDATIONS = map['RECOMMENDATIONS']!;
    RECOMMENDED_HINT = map['RECOMMENDED_HINT']!;
    REFRESH = map['REFRESH']!;
    REFRESH_MEDIA_LIBRARY_UPON_START = map['REFRESH_MEDIA_LIBRARY_UPON_START']!;
    REFRESH_MEDIA_LIBRARY_UPON_START_WARNING = map['REFRESH_MEDIA_LIBRARY_UPON_START_WARNING']!;
    REFRESH_SUBTITLE = map['REFRESH_SUBTITLE']!;
    REINDEX = map['REINDEX']!;
    REINDEX_SUBTITLE = map['REINDEX_SUBTITLE']!;
    REINDEX_WARNING = map['REINDEX_WARNING']!;
    REMOVE = map['REMOVE']!;
    REMOVE_FROM_PLAYLIST = map['REMOVE_FROM_PLAYLIST']!;
    RENAME = map['RENAME']!;
    REPEAT = map['REPEAT']!;
    RESET_PITCH = map['RESET_PITCH']!;
    RESET_SPEED = map['RESET_SPEED']!;
    RESTORE = map['RESTORE']!;
    RESTORE_DEFAULTS = map['RESTORE_DEFAULTS']!;
    RESULTS_FOR_QUERY = map['RESULTS_FOR_QUERY']!;
    SAVE = map['SAVE']!;
    SAVE_AS_PLAYLIST = map['SAVE_AS_PLAYLIST']!;
    SD_CARD = map['SD_CARD']!;
    SEARCH = map['SEARCH']!;
    SEARCH_BANNER_NO_ITEMS_SUBTITLE = map['SEARCH_BANNER_NO_ITEMS_SUBTITLE']!;
    SEARCH_BANNER_NO_ITEMS_TITLE = map['SEARCH_BANNER_NO_ITEMS_TITLE']!;
    SEARCH_BANNER_SUBTITLE = map['SEARCH_BANNER_SUBTITLE']!;
    SEARCH_BANNER_TITLE = map['SEARCH_BANNER_TITLE']!;
    SEARCH_HINT = map['SEARCH_HINT']!;
    SEE_ALL = map['SEE_ALL']!;
    SETTINGS = map['SETTINGS']!;
    SETTINGS_SECTION_DISPLAY_SUBTITLE = map['SETTINGS_SECTION_DISPLAY_SUBTITLE']!;
    SETTINGS_SECTION_DISPLAY_TITLE = map['SETTINGS_SECTION_DISPLAY_TITLE']!;
    SETTINGS_SECTION_LANGUAGE_SUBTITLE = map['SETTINGS_SECTION_LANGUAGE_SUBTITLE']!;
    SETTINGS_SECTION_LANGUAGE_TITLE = map['SETTINGS_SECTION_LANGUAGE_TITLE']!;
    SETTINGS_SECTION_MEDIA_LIBRARY_SUBTITLE = map['SETTINGS_SECTION_MEDIA_LIBRARY_SUBTITLE']!;
    SETTINGS_SECTION_MEDIA_LIBRARY_TITLE = map['SETTINGS_SECTION_MEDIA_LIBRARY_TITLE']!;
    SETTINGS_SECTION_MISCELLANEOUS_SUBTITLE = map['SETTINGS_SECTION_MISCELLANEOUS_SUBTITLE']!;
    SETTINGS_SECTION_MISCELLANEOUS_TITLE = map['SETTINGS_SECTION_MISCELLANEOUS_TITLE']!;
    SETTINGS_SECTION_NOW_PLAYING_SUBTITLE = map['SETTINGS_SECTION_NOW_PLAYING_SUBTITLE']!;
    SETTINGS_SECTION_NOW_PLAYING_TITLE = map['SETTINGS_SECTION_NOW_PLAYING_TITLE']!;
    SETTINGS_SECTION_PERMISSIONS_SUBTITLE = map['SETTINGS_SECTION_PERMISSIONS_SUBTITLE']!;
    SETTINGS_SECTION_PERMISSIONS_TITLE = map['SETTINGS_SECTION_PERMISSIONS_TITLE']!;
    SETTINGS_SECTION_STATS_SUBTITLE = map['SETTINGS_SECTION_STATS_SUBTITLE']!;
    SETTINGS_SECTION_STATS_TITLE = map['SETTINGS_SECTION_STATS_TITLE']!;
    SET_LRC_FILE = map['SET_LRC_FILE']!;
    SHARE = map['SHARE']!;
    SHOW_ALBUM = map['SHOW_ALBUM']!;
    SHOW_IN_FILE_MANAGER = map['SHOW_IN_FILE_MANAGER']!;
    SHOW_LYRICS = map['SHOW_LYRICS']!;
    SHOW_NOW_PLAYING_SCREEN = map['SHOW_NOW_PLAYING_SCREEN']!;
    SHUFFLE = map['SHUFFLE']!;
    SORT = map['SORT']!;
    SORT_BY = map['SORT_BY']!;
    SPEED = map['SPEED']!;
    START = map['START']!;
    THEME = map['THEME']!;
    THEME_MODE_DARK = map['THEME_MODE_DARK']!;
    THEME_MODE_LIGHT = map['THEME_MODE_LIGHT']!;
    THEME_MODE_SYSTEM = map['THEME_MODE_SYSTEM']!;
    TITLE = map['TITLE']!;
    TRACK = map['TRACK']!;
    TRACKS = map['TRACKS']!;
    TRACK_DELETE_DIALOG_SUBTITLE = map['TRACK_DELETE_DIALOG_SUBTITLE']!;
    TRACK_NUMBER = map['TRACK_NUMBER']!;
    TYPE = map['TYPE']!;
    UNMUTE = map['UNMUTE']!;
    UPDATE_AVAILABLE = map['UPDATE_AVAILABLE']!;
    URL = map['URL']!;
    USE_COLOR_PALETTE = map['USE_COLOR_PALETTE']!;
    USE_SYSTEM_COLOR_SCHEME = map['USE_SYSTEM_COLOR_SCHEME']!;
    USE_THESE_CHARACTERS_TO_SEPARATE_ARTISTS = map['USE_THESE_CHARACTERS_TO_SEPARATE_ARTISTS']!;
    VALUE = map['VALUE']!;
    VOLUME_BOOST = map['VOLUME_BOOST']!;
    WARNING = map['WARNING']!;
    X = map['X']!;
    YEAR = map['YEAR']!;
    YES = map['YES']!;
  }
}
