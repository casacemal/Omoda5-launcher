package com.chery.common;

/* loaded from: classes.dex */
public final class PageConstants {

    public static class DialerIntents {
        public static final String ACTION_SHOW_PAGE = "com.chery.dialer.ACTION_SHOW_PAGE";
        public static final String EXTRA_ACTION_READ_MISSED = "com.chery.dialer.EXTRA_ACTION_READ_MISSED";
        public static final String EXTRA_CALL_NUMBER = "call_dialpad_number";
        public static final String EXTRA_SHOW_INCOMING_CALL = "show_incoming_call";
        public static final String EXTRA_SHOW_PAGE = "com.chery.dialer.EXTRA_SHOW_PAGE";

        public static final class PageId {
            public static final String CALL_HISTORY = "CALL_HISTORY";
            public static final String CONTACTS = "CONTACTS";
            public static final String DIAL_PAD = "DIAL_PAD";
        }
    }

    public static final class ManualBook {
        public static final String PAGE_SESSION_KEY = "section";

        public static final class PageId {
            public static final String AC_SETTING = "AC_SETTING";
            public static final String AIR_AUTO = "AIR_AUTO";
            public static final String AIR_ELECTRIC = "AIR_ELECTRIC";
            public static final String ANDROID_AUTO = "ANDROID_AUTO";
            public static final String ASSIS_DRIVE_SETTING = "ASSIS_DRIVE_SETTING";
            public static final String ATTENTION = "ATTENTION";
            public static final String BASE_INFO_SETTING = "BASE_INFO_SETTING";
            public static final String BRIEF = "BRIEF";
            public static final String BT_SETTING = "BT_SETTING";
            public static final String CARPLAY = "CARPLAY";
            public static final String DISPLAY_SETTING = "DISPLAY_SETTING";
            public static final String LAUNCHER = "LAUNCHER";
            public static final String LIGHT_SETTING = "LIGHT_SETTING";
            public static final String LIST = "NONE";
            public static final String MEDIA = "MEDIA";
            public static final String MEDIA_FPRMAT = "MEDIA_FPRMAT";
            public static final String NAVI = "NAVI";
            public static final String PERSONALITY_SETTING = "PERSONALITY_SETTING";
            public static final String PHONE = "PHONE";
            public static final String RADIO = "RADIO";
            public static final String SHORTCUT = "SHORTCUT";
            public static final String SMART_KEY_SETTING = "SMART_KEY_SETTING";
            public static final String SOUND_SETTING = "SOUND_SETTING";
            public static final String SYSTEM_SETTING = "SYSTEM_SETTING";
            public static final String USB_MUSIC = "USB_MUSIC";
            public static final String USB_PICTURE = "USB_PICTURE";
            public static final String USB_VIDEO = "USB_VIDEO";
            public static final String VR_FUNCTION = "VR_FUNCTION";
            public static final String VR_MEDIA_COMMAND = "VR_MEDIA_COMMAND";
            public static final String VR_SETTING = "VR_SETTING";
            public static final String VR_VEHICLE_COMMAND = "VR_VEHICLE_COMMAND";
            public static final String WIFI_SETTING = "WIFI_SETTING";
        }
    }

    public static final class Media {
        public static final String ACTION_OPEN = "com.chery.media.ACTION_OPEN";
        public static final String MEDIA_PAGE_ID_KEY = "MediaPageId";
        public static final String PICTURE_PAGE_ID_KEY = "PicturePageId";
        public static final String USB_TYPE_KEY = "UsbType";
        public static final String VIDEO_PAGE_ID_KEY = "VideoPageId";

        public static final class MediaPageId {
            public static final String PAGE_BT_MUSIC_PLAYER = "PAGE_BT_MUSIC_PLAYER";
            public static final String PAGE_DAB_PLAYER = "PAGE_DAB_PLAYER";
            public static final String PAGE_LOCAL_MUSIC_LIST = "PAGE_LOCAL_MUSIC_LIST";
            public static final String PAGE_LOCAL_MUSIC_PLAYER = "PAGE_LOCAL_MUSIC_PLAYER";
            public static final String PAGE_MENU = "PAGE_MENU";
            public static final String PAGE_NONE = "PAGE_NONE";
            public static final String PAGE_RADIO_PLAYER = "PAGE_RADIO_PLAYER";
            public static final String PAGE_USB_MUSIC_LIST = "PAGE_USB_MUSIC_LIST";
            public static final String PAGE_USB_MUSIC_PLAYER = "PAGE_USB_MUSIC_PLAYER";
        }

        public static final class PicturePageId {
            public static final String PAGE_MAIN = "PAGE_MAIN";
            public static final String PAGE_NONE = "PAGE_NONE";
            public static final String PAGE_VIEWER = "PAGE_PLAYER";
        }

        public static final class UsbType {
            public static final String USB1 = "USB1";
            public static final String USB2 = "USB2";
            public static final String USB_NONE = "USB_NONE";
        }

        public static final class VideoPageId {
            public static final String PAGE_MAIN = "PAGE_MAIN";
            public static final String PAGE_NONE = "PAGE_NONE";
            public static final String PAGE_PLAYER = "PAGE_PLAYER";
        }
    }

    public static final class SystemSettings {
        public static final String ACTION_DELETE_DATA = "com.chery.setting.ACTION_DELETE_DATA";
        public static final String ACTION_DELETE_DATA_SUCCESS = "com.chery.setting.ACTION_DELETE_DATA_SUCCESS";
        public static final String ACTION_OPEN = "com.chery.setting.ACTION_OPEN_SYSTEM_SETTING";
        public static final String ACTION_SCROLL_TO_CUSTOME_BTN = "action_scroll_to_custome_btn";
        public static final String ACTION_SHOW_COVER = "com.chery.setting.ACTION_SHOW_COVER";
        public static final int BALANCE_CENTER = 7;
        public static final int BALANCE_MAX = 14;
        public static final String BRIGHTNESS_CHANGED_BY_OTHER = "brightness_changed_by_other";
        public static final int BRIGHTNESS_DAY_DEFAULT = 255;
        public static final int BRIGHTNESS_DAY_PROCESS_DEFAULT = 10;
        public static final String BRIGHTNESS_MODE = "brightness_mode";
        public static final int BRIGHTNESS_MODE_AUTO = 3;
        public static final int BRIGHTNESS_MODE_DAY = 1;
        public static final int BRIGHTNESS_MODE_NIGHT = 2;
        public static final int BRIGHTNESS_NIGHT_DEFAULT = 77;
        public static final int BRIGHTNESS_NIGHT_PROCESS_DEFAULT = 6;
        public static final String BRIGHTNESS_PROCESS_DAY = "brightness_process_day";
        public static final String BRIGHTNESS_PROCESS_NIGHT = "brightness_process_night";
        public static final String CALL_BROADCAST = "call_broadcast";
        public static final String CLOSE = "close";
        public static final String CUSTOM_BTN_FUN = "custom_btn_fun";
        public static final int DEFAULT_BT_MUSIC = 18;
        public static final int DEFAULT_CHIME = 5;
        public static final int DEFAULT_MEDIA = 15;
        public static final int DEFAULT_NAV = 5;
        public static final int DEFAULT_PHONE = 12;
        public static final int DEFAULT_RINGTONE = 12;
        public static final int DEFAULT_VR = 5;
        public static final String FALSE = "0";
        public static final String FINISH_BROADCAST = "finish_broadcast";
        public static final String FUN1 = "fun1";
        public static final String FUN2 = "fun2";
        public static final String FUN3 = "fun3";
        public static final String FUN4 = "fun4";
        public static final String FUN5 = "fun5";
        public static final String FUN6 = "fun6";
        public static final String FUN7 = "fun7";
        public static final String HOUR12 = "12";
        public static final String HOUR24 = "24";
        public static final String IS_FINISH_SELF = "is_finish_self";
        public static final String LAST_CONFIG_LANGUAGE = "last_config_language";
        public static final int METER_BRIGHTNESS_NIGHT_PROCESS_DEFAULT = 6;
        public static final String METER_BRIGHTNESS_PROCESS_DAY = "meter_brightness_process_day";
        public static final String METER_BRIGHTNESS_PROCESS_NIGHT = "meter_brightness_process_night";
        public static final String OPEN = "open";
        public static final String PAGE_ID_KEY = "SettingMenuID";
        public static final int PRESET_EQ_CLASSIC = 2;
        public static final int PRESET_EQ_DEFAULT = 7;
        public static final int PRESET_EQ_JAZZ = 5;
        public static final int PRESET_EQ_OFF = 0;
        public static final int PRESET_EQ_POPS = 3;
        public static final int PRESET_EQ_ROCK = 6;
        public static final int PRESET_EQ_SMART = 1;
        public static final int PRESET_EQ_USER = 7;
        public static final int PRESET_EQ_VOCAL = 4;
        public static final String REFRESH_LANGUAGE = "refresh_language";
        public static final String SCROLL_ACTION = "scroll_action";
        public static final String SCROLL_ACTION_CUSTOME_BTN = "scroll_action_custome_btn";
        public static final int SOUND_STAGE_ALL = 1;
        public static final int SOUND_STAGE_DRIVER = 2;
        public static final int SOUND_STAGE_OFF = 0;
        public static final int SVC_LEVEL_HIGH = 3;
        public static final int SVC_LEVEL_LOW = 1;
        public static final int SVC_LEVEL_MIDDLE = 2;
        public static final int SVC_LEVEL_OFF = 0;
        public static final String TIME_ZONE = "time_zone";
        public static final int TIME_ZONE_DEFUALT = 9;
        public static final String TRUE = "1";
        public static final String USE_GPS_TIME = "use_gps_time";
        public static final String VIDEO_SPEED_LIMITED = "video_speed_limited";
        public static final int ZERO = 0;

        public static final class LanguageId {

            /* renamed from: AR */
            public static final String f205AR = "ar";

            /* renamed from: EN */
            public static final String f206EN = "en";

            /* renamed from: ES */
            public static final String f207ES = "es";

            /* renamed from: IN */
            public static final String f208IN = "in";

            /* renamed from: IT */
            public static final String f209IT = "it";

            /* renamed from: PT */
            public static final String f210PT = "pt";

            /* renamed from: RU */
            public static final String f211RU = "ru";

            /* renamed from: TH */
            public static final String f212TH = "th";

            /* renamed from: TR */
            public static final String f213TR = "tr";
            public static final String UKR = "uk";

            /* renamed from: ZH */
            public static final String f214ZH = "zh";
        }

        public static final class PageId {
            public static final String PAGE_BLUETOOTH_SETTING = "1";
            public static final String PAGE_DISPLAY_SETTING = "5";
            public static final String PAGE_EQ_SETTING = "8";
            public static final String PAGE_NONE = "0";
            public static final String PAGE_SOUND_SETTING = "3";
            public static final String PAGE_SPEECH_SETTING = "4";
            public static final String PAGE_SYSTEM_SETTING = "6";
            public static final String PAGE_VOLUME_SETTING = "7";
            public static final String PAGE_WIFI_SETTING = "2";
        }
    }

    public static final class VehicleSettings {
        public static final String ACTION_OPEN = "com.chery.vehiclesetting.ACTION_OPEN_VEHICLE_SETTING";
        public static final int MUSIC_LIGHT_DISABLE = 0;
        public static final int MUSIC_LIGHT_ENABLE = 1;
        public static final String PAGE_ID_KEY = "CarSettingMenuID";

        public static final class PageId {
            public static final String PAGE_BASIC_SETTING = "8";
            public static final String PAGE_DRIVE_ASSISTANT_SETTING = "7";
            public static final String PAGE_HVAC_SETTING = "5";
            public static final String PAGE_LIGHT_SETTING = "4";
            public static final String PAGE_NONE = "0";
            public static final String PAGE_PERSONALIZED_SETTING = "9";
            public static final String PAGE_SMART_KEY_SETTING = "1";
        }
    }

    private PageConstants() {
    }
}
