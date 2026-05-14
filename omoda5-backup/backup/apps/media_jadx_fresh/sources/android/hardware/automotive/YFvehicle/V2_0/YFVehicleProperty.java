package android.hardware.automotive.YFvehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class YFVehicleProperty {
    public static final int ABS_ACTIVE = 287310858;
    public static final int AEB_STS = 557854834;
    public static final int AEB_SWT_SET = 557854728;
    public static final int AIR_PRESSURE = 557850675;
    public static final int ALRM_VOL_CTRL = 557854826;
    public static final int AMBLGHT_ASSOCIATED_WITH_MUSIC_MODE = 557854784;
    public static final int AMBLGHT_MUSIC_SHOW = 557854806;
    public static final int AMBLIGHT_ASSOCIATED_DRIVER_MODE = 557854761;
    public static final int AMBLIGHT_BRIGHTNESS = 557854762;
    public static final int AMBLIGHT_COLOR = 557854763;
    public static final int AMBLIGHT_COLOR_7 = 557854807;
    public static final int AMBLIGHT_ON = 557854760;
    public static final int AM_RADIO_FREQUANCE_VALUE = 557854751;
    public static final int AP_POWER_BOOTUP_REASON = 289409538;
    public static final int AP_POWER_STATE_REPORT = 289475073;
    public static final int AP_POWER_STATE_REQ = 289475072;
    public static final int AUDIBLE_ALARM = 557854836;
    public static final int AUDIO_BEEP_RATE = 557850639;
    public static final int AUTO_FOLD_STS = 557854722;
    public static final int AUTO_LOCK_STS = 557854721;
    public static final int AVM_CALIBRATION_STATUS = 561037315;
    public static final int AVM_DATA_STORAGE = 561037319;
    public static final int AVM_ENGINEERING_MODE = 561037314;
    public static final int AVM_ENTER_EXIT_STATE = 561037312;
    public static final int AVM_FACTORY_RESET = 561037323;
    public static final int AVM_LOG_SETTINGS = 561037318;
    public static final int AVM_SET_LICENSE_PLATE = 561037313;
    public static final int AVM_SIMULATE_OTHERS = 561037320;
    public static final int AVM_TOUCH_EVENT = 561037322;
    public static final int AVM_VERSION = 561037321;
    public static final int AVM_VIEW_PARAMS = 561037317;
    public static final int AVM_VIEW_STATE = 561037316;
    public static final int BCM_ARMING_STS = 557850688;
    public static final int BCM_HOOD_STS = 557850647;
    public static final int BKLT_BRI_ADJ = 557854827;
    public static final int BSD_SWITCH_STS = 557854746;
    public static final int CABIN_LIGHTS_STATE = 289410817;
    public static final int CABIN_LIGHTS_SWITCH = 289410818;
    public static final int CAL_DIAGNOSTIC_CONFIG_7010 = 561013250;
    public static final int CAL_DIAGNOSTIC_CONFIG_7019 = 561013251;
    public static final int CAL_DIAGNOSTIC_CONFIG_701A = 561013252;
    public static final int CAL_DIAGNOSTIC_CONFIG_701B = 561013253;
    public static final int CAL_DIAGNOSTIC_CONFIG_7038 = 561013263;
    public static final int CAL_ECU_HW_NUMBER = 554721799;
    public static final int CAL_ECU_SERIAL_NUMBER = 554721800;
    public static final int CAL_ECU_SW_NUMBER = 554721798;
    public static final int CAL_EXTERIOR_COLOR = 561013248;
    public static final int CAL_SC = 561013261;
    public static final int CAL_SK = 561013262;
    public static final int CAL_SYSTEM_SUPPLIER_IDENTIFIER = 554721804;
    public static final int CAL_UUID = 554721802;
    public static final int CAL_VEHICLE_PART_NUMBER = 554721801;
    public static final int CAL_VIN = 554721803;
    public static final int CAL_Vehicle_VIN = 554721793;
    public static final int CPAA_DIAG_DATA = 557850682;
    public static final int CRUISE_SPEED = 557850674;
    public static final int CRUISE_STATE = 557850673;
    public static final int CTP_DRIVE_MODE_SET = 557854785;
    public static final int CTP_DRIVE_MODE_SET_BCM = 557854793;
    public static final int CTP_KEY_VOICE_REMIND = 557850696;
    public static final int CURRENT_GEAR = 289408001;
    public static final int CWC_CHARGING_STS = 557854774;
    public static final int CWC_PHONE_FORGOTTEN_FUN_STS = 557854727;
    public static final int CWC_PHONE_FORGOTTEN_MSG = 557854780;
    public static final int CWC_WORKING_STS = 557854726;
    public static final int DAI_SWT_SET = 557854740;
    public static final int DAY_NIGHT_MODE_LIGHT = 557850683;
    public static final int DAY_NIGHT_MODE_LIGHT_CAN = 557850684;
    public static final int DAY_NIGHT_MODE_LIGHT_SENSOR = 557850685;
    public static final int DIAG_TIHU_IHU_RES = 560996394;
    public static final int DIR_IND_LEFT = 557850626;
    public static final int DIR_IND_RIGHT = 557850625;
    public static final int DISPLAY_BRIGHTNESS = 289409539;
    public static final int DISTANCE_DISPLAY_UNITS = 289408512;
    public static final int DISTANCE_WARNING_STS = 557854835;
    public static final int DMS_ALRM_SWT = 557854829;
    public static final int DOOR_LOCK = 371198722;
    public static final int DOOR_MOVE = 373295873;
    public static final int DOOR_POS = 373295872;
    public static final int DRIVER_DOOR_STS = 557850642;
    public static final int DRIVER_UNLOCK_ONLY = 557854821;
    public static final int DRIVE_MODE_INTERNAL = 557854778;
    public static final int DTC_PROPID_CLEARDTCLOG = 561009154;
    public static final int DTC_PROPID_GETDTCLOG = 561009152;
    public static final int DTC_PROPID_SETDTCLOGEND = 561009153;
    public static final int DVD_SET_RCW = 557854745;
    public static final int DVD_TRUNK_CMD = 557854781;
    public static final int DVR_INTERACTION = 560996421;
    public static final int DVR_SNAP_SHOT = 557854838;
    public static final int EASY_ENTRY_STS = 557854824;
    public static final int ENGINE_COOLANT_TEMP = 291504897;
    public static final int ENGINE_OIL_LEVEL = 289407747;
    public static final int ENGINE_OIL_TEMP = 291504900;
    public static final int ENGINE_RPM = 291504901;
    public static final int ENGINE_SPEED = 557850661;
    public static final int ENGINE_STS = 557850689;
    public static final int ENV_OUTSIDE_TEMPERATURE = 291505923;
    public static final int EOL_BLUETOOTH_TEST_MODE_ON_OFF = 561008673;
    public static final int EOL_CLEAR_BT_PAIRED_LIST = 561008690;
    public static final int EOL_CLEAR_DIAGNOSTIC_DTC_INFORMATION = 561008648;
    public static final int EOL_DIMMING_LEVEL = 561008780;
    public static final int EOL_ECU_PART_NUMBER = 561008657;
    public static final int EOL_ECU_SERIAL_NUMBER = 561008661;
    public static final int EOL_GET_ACC_IGN_STATUS = 561008651;
    public static final int EOL_GET_ALTITUDE = 561008735;
    public static final int EOL_GET_AP_KEY = 561008753;
    public static final int EOL_GET_ARKAMYS_STATUS = 561008711;
    public static final int EOL_GET_AUDIO_SOURCE = 561008693;
    public static final int EOL_GET_AZTH_DATA = 561008729;
    public static final int EOL_GET_BALANCE_LEVEL = 561008699;
    public static final int EOL_GET_BATTERY_DATA = 561008647;
    public static final int EOL_GET_BEZEL_BUTTON_TEST = 561008774;
    public static final int EOL_GET_BLUETOOTH_TEST_STATUS = 561008674;
    public static final int EOL_GET_BT_MODULE_STATUS = 561008692;
    public static final int EOL_GET_BT_MUSIC_MODE_STATUS = 561008682;
    public static final int EOL_GET_BT_PAIRING_MODE = 561008678;
    public static final int EOL_GET_BT_PAIRING_STATUS = 561008680;
    public static final int EOL_GET_BT_WHETHER_ON_PHONE = 561008688;
    public static final int EOL_GET_ELV_DATA = 561008728;
    public static final int EOL_GET_EQ_STATUS = 561008707;
    public static final int EOL_GET_EQ_USER_DEFINE_VALUE = 561008710;
    public static final int EOL_GET_FADE_LEVEL = 561008697;
    public static final int EOL_GET_GPS_CN_VALUE = 561008740;
    public static final int EOL_GET_HDOP = 561008738;
    public static final int EOL_GET_ILL_STATUS = 561008652;
    public static final int EOL_GET_LATITUDE = 561008733;
    public static final int EOL_GET_LATITUDE_DIRECTION = 561008732;
    public static final int EOL_GET_LONGITUDE = 561008731;
    public static final int EOL_GET_LONGITUDE_DIRECTION = 561008730;
    public static final int EOL_GET_LOUDNESS_STATUS = 561008703;
    public static final int EOL_GET_MAP_VERSION = 561008727;
    public static final int EOL_GET_MCUSW_VERSION = 561008646;
    public static final int EOL_GET_MUTE_SIGNAL_INPUT_STATUS = 561008653;
    public static final int EOL_GET_MUTE_STATUS = 561008701;
    public static final int EOL_GET_NAVIGATION_SW_VERSION = 561008726;
    public static final int EOL_GET_QD_LINK_STATUS = 561008656;
    public static final int EOL_GET_RESCUE_CALL_STATUS = 561008655;
    public static final int EOL_GET_RESCUE_CALL_TEST = 561008654;
    public static final int EOL_GET_SCREEN_STATUS = 561008768;
    public static final int EOL_GET_SOCSW_VERSION = 561008645;
    public static final int EOL_GET_SPEECH_RECOGNIZE_RESULT = 561008745;
    public static final int EOL_GET_SPEECH_RECOGNIZE_SWITCH_STATUS = 561008746;
    public static final int EOL_GET_SPEED_VOLUME_STATUS = 561008705;
    public static final int EOL_GET_SWC_BUTTON_TEST = 561008775;
    public static final int EOL_GET_SYSTEM_INITIAL_STATUS = 561008642;
    public static final int EOL_GET_TFT_ILLUMINATION_LEVEL = 561008766;
    public static final int EOL_GET_TOUCH_PANEL_SELF_CALIBRATION_STATUS = 561008770;
    public static final int EOL_GET_TRACKED_SATELLITES = 561008736;
    public static final int EOL_GET_USB_ICM_CONNECT_STATUS = 561008759;
    public static final int EOL_GET_USB_IPOD_CURRENT_STATE = 561008718;
    public static final int EOL_GET_USB_TBOX_CONNECT_STATUS = 561008758;
    public static final int EOL_GET_VDOP = 561008739;
    public static final int EOL_GET_VEHICLE_SPEED_FROM_GPS = 561008734;
    public static final int EOL_GET_VISIBLE_SATELLITES = 561008737;
    public static final int EOL_GET_VOLUME_LEVEL = 561008695;
    public static final int EOL_GET_WHETHER_CALL_COMMING_IN = 561008686;
    public static final int EOL_GET_WIFI_MODULE_CONNECT_STATUS = 561008754;
    public static final int EOL_GET_WIFI_MODULE_SIGNAL_STRENGTH = 561008755;
    public static final int EOL_GET_WIFI_MODULE_STATUS = 561008749;
    public static final int EOL_GET_WIFI_MODULE_WORK_MODE = 561008751;
    public static final int EOL_GET_X1_Y1_POSITION = 561008772;
    public static final int EOL_GPS_LOCATION_STATUS = 561008778;
    public static final int EOL_GYRO_DATA_INFO = 561008742;
    public static final int EOL_HARDWARE_VERSION_NUMBER = 561008659;
    public static final int EOL_LOGISTIC_SW_PART_NUMBER = 561008658;
    public static final int EOL_MAP_VERSION = 561008783;
    public static final int EOL_NUMBER_OF_SATELLITES = 561008779;
    public static final int EOL_OS_VERSION = 561008782;
    public static final int EOL_PROPID_GETSOCSWVERSION = 561008641;
    public static final int EOL_READ_BT_ADDRESS = 561008784;
    public static final int EOL_READ_BT_MODULE_VERSION = 561008676;
    public static final int EOL_READ_DIAGNOSTIC_DTC_NUMBER = 561008649;
    public static final int EOL_REQUEST_AVM = 561037324;
    public static final int EOL_SD_CARD_STATUS = 561008781;
    public static final int EOL_SET_ALARM_AUDIO_PLAY = 561008756;
    public static final int EOL_SET_ALARM_AUDIO_STOP = 561008757;
    public static final int EOL_SET_ARKAMYS_STATUS = 561008712;
    public static final int EOL_SET_AUDIO_SOURCE = 561008694;
    public static final int EOL_SET_BACK_CAMERA_VIEW_ON_OFF = 561008723;
    public static final int EOL_SET_BALANCE_LEVEL = 561008700;
    public static final int EOL_SET_BT_AUDIO_PLAY_MODE = 561008685;
    public static final int EOL_SET_BT_AUDIO_PLAY_PAUSE = 561008684;
    public static final int EOL_SET_BT_AUDIO_SKIP_TRACK = 561008683;
    public static final int EOL_SET_BT_DISCONNECT_ALL_CONNECTIONS = 561008689;
    public static final int EOL_SET_BT_IN_MUSIC_MODE = 561008681;
    public static final int EOL_SET_BT_MODULE_ON_OFF = 561008691;
    public static final int EOL_SET_BT_PAIRING_ON_OFF = 561008677;
    public static final int EOL_SET_BT_PAIRING_TO_SPECIFY_DEVICE = 561008679;
    public static final int EOL_SET_BT_PHONE_ANSWER_REJECT = 561008687;
    public static final int EOL_SET_DATA_LOG_ON_OFF = 561008771;
    public static final int EOL_SET_EOL_TEST_MODE_ON_OFF = 561008644;
    public static final int EOL_SET_EQ_STATUS = 561008708;
    public static final int EOL_SET_EQ_USER_DEFINE_VALUE = 561008709;
    public static final int EOL_SET_FACTORY_REST = 561008650;
    public static final int EOL_SET_FADE_LEVEL = 561008698;
    public static final int EOL_SET_FRONT_CAMERA_VIEW_ON_OFF = 561008720;
    public static final int EOL_SET_GPS_ENTER_HIGH_GAIN_MODE = 561008741;
    public static final int EOL_SET_LEFT_CAMERA_VIEW_ON_OFF = 561008721;
    public static final int EOL_SET_LOUDNESS_STATUS = 561008704;
    public static final int EOL_SET_MIC_ON_OFF = 561008743;
    public static final int EOL_SET_MUTE_STATUS = 561008702;
    public static final int EOL_SET_NAVIGATION_ON_OFF = 561008725;
    public static final int EOL_SET_POWER_BUTTON_OFF = 561008643;
    public static final int EOL_SET_RESULT_SCREEN_ILLUMINATION = 561008764;
    public static final int EOL_SET_RIGHT_CAMERA_VIEW_ON_OFF = 561008722;
    public static final int EOL_SET_RVC_ON_OFF = 561008724;
    public static final int EOL_SET_SCREEN_ON_OFF = 561008767;
    public static final int EOL_SET_SPEECH_RECOGNIZE_START_END = 561008744;
    public static final int EOL_SET_SPEECH_RECOGNIZE_SWITCH_STATUS = 561008747;
    public static final int EOL_SET_SPEED_VOLUME_STATUS = 561008706;
    public static final int EOL_SET_SURROUND_VIEW_ON_OFF = 561008719;
    public static final int EOL_SET_TEST_SCREEN_ILLUMINATION = 561008763;
    public static final int EOL_SET_TFT_DISPLAY_PATTERN = 561008762;
    public static final int EOL_SET_TFT_DISPLAY_PATTERN_ON_OFF = 561008761;
    public static final int EOL_SET_TFT_ILLUMINATION_LEVEL = 561008765;
    public static final int EOL_SET_TFT_ILLUMINATION_ON_OFF = 561008760;
    public static final int EOL_SET_TOUCH_PANEL_FIVE_POINT_TEST = 561008773;
    public static final int EOL_SET_TOUCH_PANEL_SELF_CALIBRATION = 561008769;
    public static final int EOL_SET_USB_DESIRED_FILE_DESIRED_TIME = 561008717;
    public static final int EOL_SET_USB_FORWARD_REWIND = 561008715;
    public static final int EOL_SET_USB_IPOD_PLAY_MODE = 561008714;
    public static final int EOL_SET_USB_IPOD_PLAY_PAUSE = 561008713;
    public static final int EOL_SET_USB_IPOD_SKIP_TRACK = 561008716;
    public static final int EOL_SET_VOLUME_LEVEL = 561008696;
    public static final int EOL_SET_WIFI_CONNECT_APPOINTED_NET = 561008752;
    public static final int EOL_SET_WIFI_MODULE_ON_OFF = 561008748;
    public static final int EOL_SET_WIFI_MODULE_WORK_MODE = 561008750;
    public static final int EOL_SIMULATE_BEZEL_BUTTON_TEST = 561008776;
    public static final int EOL_SIMULATE_SWC_BUTTON_TEST = 561008777;
    public static final int EOL_SOFTWARE_VERSION_NUMBER = 561008660;
    public static final int EOL_TEST_END = 561009151;
    public static final int EOL_TUNER_AUTO_SCAN_UP = 561008670;
    public static final int EOL_TUNER_AUTO_STORE = 561008669;
    public static final int EOL_TUNER_BAND = 561008664;
    public static final int EOL_TUNER_CURRENT_STATUS = 561008663;
    public static final int EOL_TUNER_FAVORITE = 561008666;
    public static final int EOL_TUNER_FREQUENCY = 561008665;
    public static final int EOL_TUNER_PRESET = 561008667;
    public static final int EOL_TUNER_SEEK = 561008668;
    public static final int EOL_TUNER_SIGNAL_STRENGTH = 561008672;
    public static final int EOL_TUNER_UPDATE_STATION_LIST = 561008671;
    public static final int EOL_UUID = 561008662;
    public static final int EOL_WRITE_BLUETOOTH_ADDRESS = 561008675;
    public static final int EPS_ASSISTANCE_STYLE = 557854743;
    public static final int EPS_ASSOCI_DRIVER_MODE = 557854742;
    public static final int ESP_FUNCTION = 557854739;
    public static final int ETC_CARD_CONFIGURATION = 557850678;
    public static final int EV_BATTERY_DISPLAY_UNITS = 289408515;
    public static final int EV_BATTERY_INSTANTANEOUS_CHARGE_RATE = 291504908;
    public static final int EV_BATTERY_LEVEL = 291504905;
    public static final int EV_CHARGE_PORT_CONNECTED = 287310603;
    public static final int EV_CHARGE_PORT_OPEN = 287310602;
    public static final int FATIGURE_DRIVING_TIME = 557854804;
    public static final int FATIGURE_DRIVING_WARNING = 557854820;
    public static final int FCM_ELK = 557854733;
    public static final int FCW_SNVTY_SET = 557854730;
    public static final int FCW_SWT_SET = 557854729;
    public static final int FM_RADIO_FREQUANCE_VALUE = 559951902;
    public static final int FOG_LIGHTS_STATE = 289410562;
    public static final int FOG_LIGHTS_SWITCH = 289410578;
    public static final int FRNT_RADAR_SWT = 557854792;
    public static final int FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME = 287311364;
    public static final int FUEL_DOOR_OPEN = 287310600;
    public static final int FUEL_LEVEL = 291504903;
    public static final int FUEL_LEVEL_LOW = 287310853;
    public static final int FUEL_VOLUME_DISPLAY_UNITS = 289408513;
    public static final int GEAR_POSITION = 557850630;
    public static final int GEAR_POSITION_MANUAL_R_STS = 557850687;
    public static final int GEAR_SELECTION = 289408000;
    public static final int GPS_DAY = 557854816;
    public static final int GPS_HOUR = 557854817;
    public static final int GPS_MIN = 557854818;
    public static final int GPS_MONTH = 557854815;
    public static final int GPS_SEC = 557854819;
    public static final int GPS_YEAR = 557854813;
    public static final int HAND_BRAKE_SYSTEM_STATE = 557850665;
    public static final int HAZARD_LIGHTS_STATE = 289410563;
    public static final int HAZARD_LIGHTS_SWITCH = 289410579;
    public static final int HDC_SET = 557854738;
    public static final int HEADLIGHTS_STATE = 289410560;
    public static final int HEADLIGHTS_SWITCH = 289410576;
    public static final int HEAD_LAMP_DELAY_LIGHT = 557854759;
    public static final int HEAD_LAMP_HEIGHT = 557854758;
    public static final int HIGH_BEAM_LIGHTS_STATE = 289410561;
    public static final int HIGH_BEAM_LIGHTS_SWITCH = 289410577;
    public static final int HMA_ON_OFF = 557854808;
    public static final int HVAC_ACTUAL_FAN_SPEED_RPM = 356517135;
    public static final int HVAC_AC_ON = 354419973;
    public static final int HVAC_ANION_SWITCH = 557846572;
    public static final int HVAC_AUTOMATIC_MODE = 557846535;
    public static final int HVAC_AUTO_DEFROST_DISPLAY = 557846561;
    public static final int HVAC_AUTO_DEFROST_FORCE_OPEN = 557846560;
    public static final int HVAC_AUTO_DEFROST_ON = 557846545;
    public static final int HVAC_AUTO_ON = 354419978;
    public static final int HVAC_AUTO_RECIRC_ON = 354419986;
    public static final int HVAC_BLOWER_MODE = 557846534;
    public static final int HVAC_BLOWER_SPEED = 557846533;
    public static final int HVAC_BLOWER_SPEED_T1E = 557846582;
    public static final int HVAC_BLOW_ADVANCE_ON = 557846543;
    public static final int HVAC_BLOW_DELAY_OFF = 557846542;
    public static final int HVAC_COMPRESSOR = 557846531;
    public static final int HVAC_DEFROSTER = 320865540;
    public static final int HVAC_DISPLAY_MENU = 557846554;
    public static final int HVAC_DRIVER_TEMP_T1E = 559943735;
    public static final int HVAC_DRVIVER_TEMP = 557846536;
    public static final int HVAC_DRVIVER_TEMP_FAHRENHEIT = 557846555;
    public static final int HVAC_DUAL = 557846538;
    public static final int HVAC_DUAL_ON = 354419977;
    public static final int HVAC_ELECTRIC_CLIMATE_TEMP = 557846553;
    public static final int HVAC_FAN_DIRECTION = 356517121;
    public static final int HVAC_FAN_DIRECTION_AVAILABLE = 356582673;
    public static final int HVAC_FAN_SPEED = 356517120;
    public static final int HVAC_FG_HEAT = 557846558;
    public static final int HVAC_FILTER_CHANGE_DISPLAY = 557846570;
    public static final int HVAC_FRAGRANCE_CONSISTENCE_LEVEL = 557846576;
    public static final int HVAC_FRAGRANCE_DISPLAY = 557846574;
    public static final int HVAC_FRAGRANCE_POSITION = 557846577;
    public static final int HVAC_FRAGRANCE_SHORTAGE_WARNING = 557846581;
    public static final int HVAC_FRAGRANCE_SWITCH = 557846575;
    public static final int HVAC_FRAGRANCE_TYPE_POS1 = 557846578;
    public static final int HVAC_FRAGRANCE_TYPE_POS2 = 557846579;
    public static final int HVAC_FRAGRANCE_TYPE_POS3 = 557846580;
    public static final int HVAC_FRAGRANCE_WELCOME_MODE = 557846547;
    public static final int HVAC_MAX_AC_ON = 354419974;
    public static final int HVAC_MAX_DEFROST_ON = 354419975;
    public static final int HVAC_MAX_FORNT_WINDOW_DEFROSTER = 557846541;
    public static final int HVAC_MODE_CUSTOM = 557846544;
    public static final int HVAC_ON = 557846530;
    public static final int HVAC_PANEL_KEY_VOICE = 557846559;
    public static final int HVAC_PASSENGER_TEMP = 557846537;
    public static final int HVAC_PASSENGER_TEMP_FAHRENHEIT = 557846556;
    public static final int HVAC_PASSENGER_TEMP_T1E = 559943736;
    public static final int HVAC_PM25_AUTO_RUN = 557846546;
    public static final int HVAC_PM25_AUTO_RUN_DISPLAY = 557846569;
    public static final int HVAC_PM25_DISPLAY = 557846573;
    public static final int HVAC_PM25_EXT = 557846567;
    public static final int HVAC_PM25_EXT_STS = 557846565;
    public static final int HVAC_PM25_INCAR = 557846564;
    public static final int HVAC_PM25_INCAR_LEVEL = 557846563;
    public static final int HVAC_PM25_INCAR_STS = 557846562;
    public static final int HVAC_PM25_OUTCAR_LEVEL = 557846566;
    public static final int HVAC_PM25_OVERPROOF_DISPLAY = 557846568;
    public static final int HVAC_PM25_SWITCH = 557846571;
    public static final int HVAC_POWER_ON = 354419984;
    public static final int HVAC_RECIRCULATION_MODE = 557846532;
    public static final int HVAC_RECIRC_ON = 354419976;
    public static final int HVAC_REFRESH_FUNCTION = 557846548;
    public static final int HVAC_SEAT_HEAT_REAR_L = 557846585;
    public static final int HVAC_SEAT_HEAT_REAR_R = 557846586;
    public static final int HVAC_SEAT_TEMPERATURE = 356517131;
    public static final int HVAC_SEAT_VENTILATION = 356517139;
    public static final int HVAC_SELF_TEST_ACTIVE = 557846539;
    public static final int HVAC_SELF_TEST_RESULT = 557846540;
    public static final int HVAC_SIDE_MIRROR_HEAT = 339739916;
    public static final int HVAC_STEERING_WHEEL_HEAT = 289408269;
    public static final int HVAC_TEMPERATURE_CURRENT = 358614274;
    public static final int HVAC_TEMPERATURE_DISPLAY_UNITS = 289408270;
    public static final int HVAC_TEMPERATURE_SET = 358614275;
    public static final int HVAC_TEMPERATURE_UNIT = 557846557;
    public static final int HVAC_TEST = 560992257;
    public static final int HW_KEY_INPUT = 289475088;
    public static final int IBS_SOC = 557850690;
    public static final int IBS_SOH = 557850694;
    public static final int IBS_VOLTAGE = 559947843;
    public static final int ICM_BRIGHTNESS_LEVEL = 557854764;
    public static final int IES_SWT_SET = 557854741;
    public static final int IGNITION_DISTANCE = 557850679;
    public static final int IGNITION_STATE = 289408009;
    public static final int IHU_SRF_CMD = 557854782;
    public static final int IHU_WINDOW_CMD = 557854783;
    public static final int IHU_WINDOW_MSG_FD = 557854786;
    public static final int IHU_WINDOW_MSG_FP = 557854787;
    public static final int IHU_WINDOW_MSG_RL = 557854788;
    public static final int IHU_WINDOW_MSG_RR = 557854789;
    public static final int INFO_DRIVER_SEAT = 356516106;
    public static final int INFO_EV_BATTERY_CAPACITY = 291504390;
    public static final int INFO_EV_CONNECTOR_TYPE = 289472775;
    public static final int INFO_EV_PORT_LOCATION = 289407241;
    public static final int INFO_FUEL_CAPACITY = 291504388;
    public static final int INFO_FUEL_DOOR_LOCATION = 289407240;
    public static final int INFO_FUEL_TYPE = 289472773;
    public static final int INFO_MAKE = 286261505;
    public static final int INFO_MODEL = 286261506;
    public static final int INFO_MODEL_YEAR = 289407235;
    public static final int INFO_VIN = 286261504;
    public static final int INVALID = 0;
    public static final int IPC_DAY = 557854768;
    public static final int IPC_DISPLAY_INFO = 561000448;
    public static final int IPC_DISPLAY_INFO_REPLY = 561000493;
    public static final int IPC_DISPLAY_MODE_ON = 557854790;
    public static final int IPC_HOUR = 557854769;
    public static final int IPC_MIN = 557854770;
    public static final int IPC_MONTH = 557854767;
    public static final int IPC_SEC = 557854771;
    public static final int IPC_SET_THEME_TYPE = 557854779;
    public static final int IPC_TIME = 554709044;
    public static final int IPC_TIME_FORMAT_SET = 557854791;
    public static final int IPC_YEAR = 557854766;
    public static final int ISS_SWITCH = 557854773;
    public static final int KEY_STS = 557850624;
    public static final int LAMP_DAYTIME_RUNNING_LIGHT_MODE = 557854756;
    public static final int LAMP_HIGH_BEAM_ASSIST = 557854757;
    public static final int LANGUAGE_SET = 557854724;
    public static final int LDP_SWT_SET = 557854736;
    public static final int LDW_LDP_SNVTY_SET = 557854737;
    public static final int LDW_LKA_SENSITIVITY = 557854811;
    public static final int LDW_SWT_SET = 557854734;
    public static final int LHF_PULSE_COUNTER = 557850651;
    public static final int LHF_PULSE_COUNTER_FAIL_STS = 557850655;
    public static final int LHF_RADAR_DISTANCE = 557850631;
    public static final int LHF_TIRE_PRESSURE = 559947821;
    public static final int LHMF_RADAR_DISTANCE = 557850632;
    public static final int LHMR_RADAR_DISTANCE = 557850633;
    public static final int LHR_DOOR_STS = 557850644;
    public static final int LHR_PULSE_COUNTER = 557850652;
    public static final int LHR_PULSE_COUNTER_FAIL_STS = 557850656;
    public static final int LHR_RADAR_DISTANCE = 557850634;
    public static final int LHR_TIRE_PRESSURE = 559947823;
    public static final int LOW_FUEL_WARNING = 557850680;
    public static final int MCU_BOOT_MODE = 557850695;
    public static final int MIRROR_FOLD = 287312709;
    public static final int MIRROR_LOCK = 287312708;
    public static final int MIRROR_Y_MOVE = 339741507;
    public static final int MIRROR_Y_POS = 339741506;
    public static final int MIRROR_Z_MOVE = 339741505;
    public static final int MIRROR_Z_POS = 339741504;
    public static final int NAV_ROAD_TYPE = 557854842;
    public static final int NAV_SPEED_LIMIT = 557854840;
    public static final int NAV_SPEED_LIMIT_STS = 557854839;
    public static final int NAV_SPEED_LIMIT_UNITS = 557854841;
    public static final int NIGHT_MODE = 287310855;
    public static final int OBD2_FREEZE_FRAME = 299896065;
    public static final int OBD2_FREEZE_FRAME_CLEAR = 299896067;
    public static final int OBD2_FREEZE_FRAME_INFO = 299896066;
    public static final int OBD2_LIVE_FRAME = 299896064;
    public static final int OBD_DIAGNOSIS_REQIND = 557850692;
    public static final int OBD_REQ_BROADCAST_7CF = 557854800;
    public static final int OBD_REQ_OTA = 557854801;
    public static final int ODO_METRE_KM = 557850662;
    public static final int OUTSIDE_TEMP_C = 559947819;
    public static final int OUTSIDE_TEMP_F = 557850668;
    public static final int OVER_SPEED_VALUE = 557854732;
    public static final int PARKING_BRAKE_AUTO_APPLY = 287310851;
    public static final int PARKING_BRAKE_ON = 287310850;
    public static final int PASSENGER_SEAT_STATUS = 557850677;
    public static final int PEPS_INTELLIGENT_OPEN = 557854754;
    public static final int PEPS_POLLING = 557854755;
    public static final int PERF_ODOMETER = 291504644;
    public static final int PERF_STEERING_ANGLE = 291504649;
    public static final int PERF_VEHICLE_SPEED = 291504647;
    public static final int PERF_VEHICLE_SPEED_DISPLAY = 291504648;
    public static final int PLG_POSITION_SET = 557854725;
    public static final int PMS_BOOT_REASON = 289435650;
    public static final int PMS_INFO_HEART_BEAT = 289435663;
    public static final int PMS_INFO_SOC_EVENT = 289435665;
    public static final int PMS_MCU_FACTORY_RESET = 289435667;
    public static final int PMS_MCU_VERSION = 292581392;
    public static final int PMS_PRO_MODE_EXIT = 289435666;
    public static final int PMS_PWR_MODE = 292581377;
    public static final int PMS_SET_EVENTS = 289435651;
    public static final int PMS_SYSTEM_COMM_READY = 289435658;
    public static final int PMS_SYSTEM_DAY_NIGHT_MODE = 289435662;
    public static final int PMS_SYSTEM_OFF = 289501188;
    public static final int PMS_SYSTEM_OFF_WAIT = 289435653;
    public static final int PMS_SYSTEM_ON = 289435654;
    public static final int PMS_SYSTEM_POWER_STATE = 289435655;
    public static final int PMS_SYSTEM_RESTART = 289435656;
    public static final int PMS_SYSTEM_RE_TEMPRUN_TIMEOUT = 289435660;
    public static final int PMS_SYSTEM_SHUTDOWN_NOW = 289435657;
    public static final int PMS_SYSTEM_TEMPRUN_ENDING = 289435659;
    public static final int PMS_SYSTEM_TIME_OF_TEMPRUN = 289435661;
    public static final int PMS_VOLTAGE_INFO_QUERY = 289435668;
    public static final int PSG_DOOR_STS = 557850643;
    public static final int RADAR_DETECT_STS = 557850640;
    public static final int RADAR_WORK_STS = 557850641;
    public static final int RADIO_FREQUANCE_MODE = 557854749;
    public static final int RADIO_RESEARCH_STS = 557854752;
    public static final int RAIN_LEVEL = 557850676;
    public static final int RANGE_REMAINING = 291504904;
    public static final int RCTA_WARNING_LEFT = 557850649;
    public static final int RCTA_WARNING_RIGHT = 557850650;
    public static final int RCTB_SWT_SET = 557854744;
    public static final int READING_LIGHTS_STATE = 356519683;
    public static final int READING_LIGHTS_SWITCH = 356519684;
    public static final int REMOTE_LOCK_FEEDBACK_STS = 557854723;
    public static final int RESIDUAL_ODO_METRE = 557850664;
    public static final int RHF_PULSE_COUNTER = 557850653;
    public static final int RHF_PULSE_COUNTER_FAIL_STS = 557850657;
    public static final int RHF_RADAR_DISTANCE = 557850635;
    public static final int RHF_TIRE_PRESSURE = 559947822;
    public static final int RHMF_RADAR_DISTANCE = 557850636;
    public static final int RHMR_RADAR_DISTANCE = 557850637;
    public static final int RHR_DOOR_STS = 557850645;
    public static final int RHR_PULSE_COUNTER = 557850654;
    public static final int RHR_PULSE_COUNTER_FAIL_STS = 557850658;
    public static final int RHR_RADAR_DISTANCE = 557850638;
    public static final int RHR_TIRE_PRESSURE = 559947824;
    public static final int SCF_SWT_SET = 557854775;
    public static final int SCREEN_HW_VERSION = 554722563;
    public static final int SCREEN_OVER_TEMPERATURE = 557850686;
    public static final int SCREEN_PART_NUM = 554722568;
    public static final int SCREEN_SUPPLIER_CODE = 554722566;
    public static final int SCREEN_SUPPLIER_INFO = 554722567;
    public static final int SCREEN_SW_VERSION = 554722565;
    public static final int SCREEN_TFT_SIZE = 554722560;
    public static final int SCREEN_TFT_TYPE = 554722561;
    public static final int SCREEN_TP_VERSION = 554722564;
    public static final int SCU_RELATE_FACEID = 557854822;
    public static final int SEAT_BACKREST_ANGLE_1_MOVE = 356518792;
    public static final int SEAT_BACKREST_ANGLE_1_POS = 356518791;
    public static final int SEAT_BACKREST_ANGLE_2_MOVE = 356518794;
    public static final int SEAT_BACKREST_ANGLE_2_POS = 356518793;
    public static final int SEAT_BELT_BUCKLED = 354421634;
    public static final int SEAT_BELT_HEIGHT_MOVE = 356518788;
    public static final int SEAT_BELT_HEIGHT_POS = 356518787;
    public static final int SEAT_DEPTH_MOVE = 356518798;
    public static final int SEAT_DEPTH_POS = 356518797;
    public static final int SEAT_EXTMIR_POS = 557854823;
    public static final int SEAT_FORE_AFT_MOVE = 356518790;
    public static final int SEAT_FORE_AFT_POS = 356518789;
    public static final int SEAT_HEADREST_ANGLE_MOVE = 356518808;
    public static final int SEAT_HEADREST_ANGLE_POS = 356518807;
    public static final int SEAT_HEADREST_FORE_AFT_MOVE = 356518810;
    public static final int SEAT_HEADREST_FORE_AFT_POS = 356518809;
    public static final int SEAT_HEADREST_HEIGHT_MOVE = 356518806;
    public static final int SEAT_HEADREST_HEIGHT_POS = 289409941;
    public static final int SEAT_HEAT_DRIVER = 557846549;
    public static final int SEAT_HEAT_PASSENGER = 557846550;
    public static final int SEAT_HEIGHT_MOVE = 356518796;
    public static final int SEAT_HEIGHT_POS = 356518795;
    public static final int SEAT_LUMBAR_FORE_AFT_MOVE = 356518802;
    public static final int SEAT_LUMBAR_FORE_AFT_POS = 356518801;
    public static final int SEAT_LUMBAR_SIDE_SUPPORT_MOVE = 356518804;
    public static final int SEAT_LUMBAR_SIDE_SUPPORT_POS = 356518803;
    public static final int SEAT_MEMORY_SELECT = 356518784;
    public static final int SEAT_MEMORY_SET = 356518785;
    public static final int SEAT_OCCUPANCY = 356518832;
    public static final int SEAT_TILT_MOVE = 356518800;
    public static final int SEAT_TILT_POS = 356518799;
    public static final int SEAT_VENT_DRIVER = 557846551;
    public static final int SEAT_VENT_PASSENGER = 557846552;
    public static final int SELECT_THE_SEAT = 557854837;
    public static final int SET_BLTKEY_STS = 557854802;
    public static final int SET_DOW = 557854747;
    public static final int SET_DOW_2 = 557854809;
    public static final int SET_RCW = 557854810;
    public static final int SET_REV_EXTMIR = 557854803;
    public static final int SLA_ON_OFF = 557854812;
    public static final int SLA_SWT_SET = 557854805;
    public static final int SOURCE_STATION_MODE = 557854748;
    public static final int SRF_OPERATE_STS = 557850648;
    public static final int STEERING_ANGLE = 559947780;
    public static final int STEERING_ANGLE_VALID = 557850629;
    public static final int SUNSHADE_CMD = 557854828;
    public static final int TIME_GAP_LAST_SET = 557854832;
    public static final int TIME_GAP_SET = 557854833;
    public static final int TIRE_PRESSURE = 392168201;
    public static final int TIRE_PRESSURE_DISPLAY_UNITS = 289408514;
    public static final int TJAICAEXIT_TEXT_INFO_SWT_SET = 557854731;
    public static final int TJA_ICA_STS = 557854825;
    public static final int TLI_SWT_SET = 557854777;
    public static final int TRACTION_CONTROL_ACTIVE = 287310859;
    public static final int TRUNK_STS = 557850646;
    public static final int TSI_SWT_SET = 557854776;
    public static final int TURN_SIGNAL_STATE = 289408008;
    public static final int VEHICLE_FUEL_LEVEL = 557850663;
    public static final int VEHICLE_MAP_SERVICE = 299895808;
    public static final int VEHICLE_SPEED = 559947779;
    public static final int VEHICLE_SPEED_DISPLAY_UNITS = 289408517;
    public static final int VEHICLE_SPEED_VSOSIG = 559947811;
    public static final int VEHICLE_SPEED_VSOSIG_VALIDATION = 557850660;
    public static final int WARNING_LIGHT = 557850681;
    public static final int WARN_MODE_SWT_SET = 557854735;
    public static final int WELCOME_LIGHT_POLLING = 557854753;
    public static final int WHEEL_TICK = 290521862;
    public static final int WINDOW_LOCK = 320867268;
    public static final int WINDOW_MOVE = 322964417;
    public static final int WINDOW_POS = 322964416;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "INVALID";
        }
        if (r2 == 286261504) {
            return "INFO_VIN";
        }
        if (r2 == 286261505) {
            return "INFO_MAKE";
        }
        if (r2 == 286261506) {
            return "INFO_MODEL";
        }
        if (r2 == 289407235) {
            return "INFO_MODEL_YEAR";
        }
        if (r2 == 291504388) {
            return "INFO_FUEL_CAPACITY";
        }
        if (r2 == 289472773) {
            return "INFO_FUEL_TYPE";
        }
        if (r2 == 291504390) {
            return "INFO_EV_BATTERY_CAPACITY";
        }
        if (r2 == 289472775) {
            return "INFO_EV_CONNECTOR_TYPE";
        }
        if (r2 == 289407240) {
            return "INFO_FUEL_DOOR_LOCATION";
        }
        if (r2 == 289407241) {
            return "INFO_EV_PORT_LOCATION";
        }
        if (r2 == 356516106) {
            return "INFO_DRIVER_SEAT";
        }
        if (r2 == 291504644) {
            return "PERF_ODOMETER";
        }
        if (r2 == 291504647) {
            return "PERF_VEHICLE_SPEED";
        }
        if (r2 == 291504648) {
            return "PERF_VEHICLE_SPEED_DISPLAY";
        }
        if (r2 == 291504649) {
            return "PERF_STEERING_ANGLE";
        }
        if (r2 == 291504897) {
            return "ENGINE_COOLANT_TEMP";
        }
        if (r2 == 289407747) {
            return "ENGINE_OIL_LEVEL";
        }
        if (r2 == 291504900) {
            return "ENGINE_OIL_TEMP";
        }
        if (r2 == 291504901) {
            return "ENGINE_RPM";
        }
        if (r2 == 290521862) {
            return "WHEEL_TICK";
        }
        if (r2 == 291504903) {
            return "FUEL_LEVEL";
        }
        if (r2 == 287310600) {
            return "FUEL_DOOR_OPEN";
        }
        if (r2 == 291504905) {
            return "EV_BATTERY_LEVEL";
        }
        if (r2 == 287310602) {
            return "EV_CHARGE_PORT_OPEN";
        }
        if (r2 == 287310603) {
            return "EV_CHARGE_PORT_CONNECTED";
        }
        if (r2 == 291504908) {
            return "EV_BATTERY_INSTANTANEOUS_CHARGE_RATE";
        }
        if (r2 == 291504904) {
            return "RANGE_REMAINING";
        }
        if (r2 == 392168201) {
            return "TIRE_PRESSURE";
        }
        if (r2 == 289408000) {
            return "GEAR_SELECTION";
        }
        if (r2 == 289408001) {
            return "CURRENT_GEAR";
        }
        if (r2 == 287310850) {
            return "PARKING_BRAKE_ON";
        }
        if (r2 == 287310851) {
            return "PARKING_BRAKE_AUTO_APPLY";
        }
        if (r2 == 287310853) {
            return "FUEL_LEVEL_LOW";
        }
        if (r2 == 287310855) {
            return "NIGHT_MODE";
        }
        if (r2 == 289408008) {
            return "TURN_SIGNAL_STATE";
        }
        if (r2 == 289408009) {
            return "IGNITION_STATE";
        }
        if (r2 == 287310858) {
            return "ABS_ACTIVE";
        }
        if (r2 == 287310859) {
            return "TRACTION_CONTROL_ACTIVE";
        }
        if (r2 == 356517120) {
            return "HVAC_FAN_SPEED";
        }
        if (r2 == 356517121) {
            return "HVAC_FAN_DIRECTION";
        }
        if (r2 == 358614274) {
            return "HVAC_TEMPERATURE_CURRENT";
        }
        if (r2 == 358614275) {
            return "HVAC_TEMPERATURE_SET";
        }
        if (r2 == 320865540) {
            return "HVAC_DEFROSTER";
        }
        if (r2 == 354419973) {
            return "HVAC_AC_ON";
        }
        if (r2 == 354419974) {
            return "HVAC_MAX_AC_ON";
        }
        if (r2 == 354419975) {
            return "HVAC_MAX_DEFROST_ON";
        }
        if (r2 == 354419976) {
            return "HVAC_RECIRC_ON";
        }
        if (r2 == 354419977) {
            return "HVAC_DUAL_ON";
        }
        if (r2 == 354419978) {
            return "HVAC_AUTO_ON";
        }
        if (r2 == 356517131) {
            return "HVAC_SEAT_TEMPERATURE";
        }
        if (r2 == 339739916) {
            return "HVAC_SIDE_MIRROR_HEAT";
        }
        if (r2 == 289408269) {
            return "HVAC_STEERING_WHEEL_HEAT";
        }
        if (r2 == 289408270) {
            return "HVAC_TEMPERATURE_DISPLAY_UNITS";
        }
        if (r2 == 356517135) {
            return "HVAC_ACTUAL_FAN_SPEED_RPM";
        }
        if (r2 == 354419984) {
            return "HVAC_POWER_ON";
        }
        if (r2 == 356582673) {
            return "HVAC_FAN_DIRECTION_AVAILABLE";
        }
        if (r2 == 354419986) {
            return "HVAC_AUTO_RECIRC_ON";
        }
        if (r2 == 356517139) {
            return "HVAC_SEAT_VENTILATION";
        }
        if (r2 == 289408512) {
            return "DISTANCE_DISPLAY_UNITS";
        }
        if (r2 == 289408513) {
            return "FUEL_VOLUME_DISPLAY_UNITS";
        }
        if (r2 == 289408514) {
            return "TIRE_PRESSURE_DISPLAY_UNITS";
        }
        if (r2 == 289408515) {
            return "EV_BATTERY_DISPLAY_UNITS";
        }
        if (r2 == 287311364) {
            return "FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME";
        }
        if (r2 == 289408517) {
            return "VEHICLE_SPEED_DISPLAY_UNITS";
        }
        if (r2 == 291505923) {
            return "ENV_OUTSIDE_TEMPERATURE";
        }
        if (r2 == 289475072) {
            return "AP_POWER_STATE_REQ";
        }
        if (r2 == 289475073) {
            return "AP_POWER_STATE_REPORT";
        }
        if (r2 == 289409538) {
            return "AP_POWER_BOOTUP_REASON";
        }
        if (r2 == 289409539) {
            return "DISPLAY_BRIGHTNESS";
        }
        if (r2 == 289475088) {
            return "HW_KEY_INPUT";
        }
        if (r2 == 373295872) {
            return "DOOR_POS";
        }
        if (r2 == 373295873) {
            return "DOOR_MOVE";
        }
        if (r2 == 371198722) {
            return "DOOR_LOCK";
        }
        if (r2 == 339741504) {
            return "MIRROR_Z_POS";
        }
        if (r2 == 339741505) {
            return "MIRROR_Z_MOVE";
        }
        if (r2 == 339741506) {
            return "MIRROR_Y_POS";
        }
        if (r2 == 339741507) {
            return "MIRROR_Y_MOVE";
        }
        if (r2 == 287312708) {
            return "MIRROR_LOCK";
        }
        if (r2 == 287312709) {
            return "MIRROR_FOLD";
        }
        if (r2 == 356518784) {
            return "SEAT_MEMORY_SELECT";
        }
        if (r2 == 356518785) {
            return "SEAT_MEMORY_SET";
        }
        if (r2 == 354421634) {
            return "SEAT_BELT_BUCKLED";
        }
        if (r2 == 356518787) {
            return "SEAT_BELT_HEIGHT_POS";
        }
        if (r2 == 356518788) {
            return "SEAT_BELT_HEIGHT_MOVE";
        }
        if (r2 == 356518789) {
            return "SEAT_FORE_AFT_POS";
        }
        if (r2 == 356518790) {
            return "SEAT_FORE_AFT_MOVE";
        }
        if (r2 == 356518791) {
            return "SEAT_BACKREST_ANGLE_1_POS";
        }
        if (r2 == 356518792) {
            return "SEAT_BACKREST_ANGLE_1_MOVE";
        }
        if (r2 == 356518793) {
            return "SEAT_BACKREST_ANGLE_2_POS";
        }
        if (r2 == 356518794) {
            return "SEAT_BACKREST_ANGLE_2_MOVE";
        }
        if (r2 == 356518795) {
            return "SEAT_HEIGHT_POS";
        }
        if (r2 == 356518796) {
            return "SEAT_HEIGHT_MOVE";
        }
        if (r2 == 356518797) {
            return "SEAT_DEPTH_POS";
        }
        if (r2 == 356518798) {
            return "SEAT_DEPTH_MOVE";
        }
        if (r2 == 356518799) {
            return "SEAT_TILT_POS";
        }
        if (r2 == 356518800) {
            return "SEAT_TILT_MOVE";
        }
        if (r2 == 356518801) {
            return "SEAT_LUMBAR_FORE_AFT_POS";
        }
        if (r2 == 356518802) {
            return "SEAT_LUMBAR_FORE_AFT_MOVE";
        }
        if (r2 == 356518803) {
            return "SEAT_LUMBAR_SIDE_SUPPORT_POS";
        }
        if (r2 == 356518804) {
            return "SEAT_LUMBAR_SIDE_SUPPORT_MOVE";
        }
        if (r2 == 289409941) {
            return "SEAT_HEADREST_HEIGHT_POS";
        }
        if (r2 == 356518806) {
            return "SEAT_HEADREST_HEIGHT_MOVE";
        }
        if (r2 == 356518807) {
            return "SEAT_HEADREST_ANGLE_POS";
        }
        if (r2 == 356518808) {
            return "SEAT_HEADREST_ANGLE_MOVE";
        }
        if (r2 == 356518809) {
            return "SEAT_HEADREST_FORE_AFT_POS";
        }
        if (r2 == 356518810) {
            return "SEAT_HEADREST_FORE_AFT_MOVE";
        }
        if (r2 == 356518832) {
            return "SEAT_OCCUPANCY";
        }
        if (r2 == 322964416) {
            return "WINDOW_POS";
        }
        if (r2 == 322964417) {
            return "WINDOW_MOVE";
        }
        if (r2 == 320867268) {
            return "WINDOW_LOCK";
        }
        if (r2 == 299895808) {
            return "VEHICLE_MAP_SERVICE";
        }
        if (r2 == 299896064) {
            return "OBD2_LIVE_FRAME";
        }
        if (r2 == 299896065) {
            return "OBD2_FREEZE_FRAME";
        }
        if (r2 == 299896066) {
            return "OBD2_FREEZE_FRAME_INFO";
        }
        if (r2 == 299896067) {
            return "OBD2_FREEZE_FRAME_CLEAR";
        }
        if (r2 == 289410560) {
            return "HEADLIGHTS_STATE";
        }
        if (r2 == 289410561) {
            return "HIGH_BEAM_LIGHTS_STATE";
        }
        if (r2 == 289410562) {
            return "FOG_LIGHTS_STATE";
        }
        if (r2 == 289410563) {
            return "HAZARD_LIGHTS_STATE";
        }
        if (r2 == 289410576) {
            return "HEADLIGHTS_SWITCH";
        }
        if (r2 == 289410577) {
            return "HIGH_BEAM_LIGHTS_SWITCH";
        }
        if (r2 == 289410578) {
            return "FOG_LIGHTS_SWITCH";
        }
        if (r2 == 289410579) {
            return "HAZARD_LIGHTS_SWITCH";
        }
        if (r2 == 289410817) {
            return "CABIN_LIGHTS_STATE";
        }
        if (r2 == 289410818) {
            return "CABIN_LIGHTS_SWITCH";
        }
        if (r2 == 356519683) {
            return "READING_LIGHTS_STATE";
        }
        if (r2 == 356519684) {
            return "READING_LIGHTS_SWITCH";
        }
        if (r2 == 560992257) {
            return "HVAC_TEST";
        }
        if (r2 == 557846530) {
            return "HVAC_ON";
        }
        if (r2 == 557846531) {
            return "HVAC_COMPRESSOR";
        }
        if (r2 == 557846532) {
            return "HVAC_RECIRCULATION_MODE";
        }
        if (r2 == 557846533) {
            return "HVAC_BLOWER_SPEED";
        }
        if (r2 == 557846534) {
            return "HVAC_BLOWER_MODE";
        }
        if (r2 == 557846535) {
            return "HVAC_AUTOMATIC_MODE";
        }
        if (r2 == 557846536) {
            return "HVAC_DRVIVER_TEMP";
        }
        if (r2 == 557846537) {
            return "HVAC_PASSENGER_TEMP";
        }
        if (r2 == 557846538) {
            return "HVAC_DUAL";
        }
        if (r2 == 557846539) {
            return "HVAC_SELF_TEST_ACTIVE";
        }
        if (r2 == 557846540) {
            return "HVAC_SELF_TEST_RESULT";
        }
        if (r2 == 557846541) {
            return "HVAC_MAX_FORNT_WINDOW_DEFROSTER";
        }
        if (r2 == 557846542) {
            return "HVAC_BLOW_DELAY_OFF";
        }
        if (r2 == 557846543) {
            return "HVAC_BLOW_ADVANCE_ON";
        }
        if (r2 == 557846544) {
            return "HVAC_MODE_CUSTOM";
        }
        if (r2 == 557846545) {
            return "HVAC_AUTO_DEFROST_ON";
        }
        if (r2 == 557846546) {
            return "HVAC_PM25_AUTO_RUN";
        }
        if (r2 == 557846547) {
            return "HVAC_FRAGRANCE_WELCOME_MODE";
        }
        if (r2 == 557846548) {
            return "HVAC_REFRESH_FUNCTION";
        }
        if (r2 == 557846549) {
            return "SEAT_HEAT_DRIVER";
        }
        if (r2 == 557846550) {
            return "SEAT_HEAT_PASSENGER";
        }
        if (r2 == 557846551) {
            return "SEAT_VENT_DRIVER";
        }
        if (r2 == 557846552) {
            return "SEAT_VENT_PASSENGER";
        }
        if (r2 == 557846553) {
            return "HVAC_ELECTRIC_CLIMATE_TEMP";
        }
        if (r2 == 557846554) {
            return "HVAC_DISPLAY_MENU";
        }
        if (r2 == 557846555) {
            return "HVAC_DRVIVER_TEMP_FAHRENHEIT";
        }
        if (r2 == 557846556) {
            return "HVAC_PASSENGER_TEMP_FAHRENHEIT";
        }
        if (r2 == 557846557) {
            return "HVAC_TEMPERATURE_UNIT";
        }
        if (r2 == 557846558) {
            return "HVAC_FG_HEAT";
        }
        if (r2 == 557846559) {
            return "HVAC_PANEL_KEY_VOICE";
        }
        if (r2 == 557846560) {
            return "HVAC_AUTO_DEFROST_FORCE_OPEN";
        }
        if (r2 == 557846561) {
            return "HVAC_AUTO_DEFROST_DISPLAY";
        }
        if (r2 == 557846562) {
            return "HVAC_PM25_INCAR_STS";
        }
        if (r2 == 557846563) {
            return "HVAC_PM25_INCAR_LEVEL";
        }
        if (r2 == 557846564) {
            return "HVAC_PM25_INCAR";
        }
        if (r2 == 557846565) {
            return "HVAC_PM25_EXT_STS";
        }
        if (r2 == 557846566) {
            return "HVAC_PM25_OUTCAR_LEVEL";
        }
        if (r2 == 557846567) {
            return "HVAC_PM25_EXT";
        }
        if (r2 == 557846568) {
            return "HVAC_PM25_OVERPROOF_DISPLAY";
        }
        if (r2 == 557846569) {
            return "HVAC_PM25_AUTO_RUN_DISPLAY";
        }
        if (r2 == 557846570) {
            return "HVAC_FILTER_CHANGE_DISPLAY";
        }
        if (r2 == 557846571) {
            return "HVAC_PM25_SWITCH";
        }
        if (r2 == 557846572) {
            return "HVAC_ANION_SWITCH";
        }
        if (r2 == 557846573) {
            return "HVAC_PM25_DISPLAY";
        }
        if (r2 == 557846574) {
            return "HVAC_FRAGRANCE_DISPLAY";
        }
        if (r2 == 557846575) {
            return "HVAC_FRAGRANCE_SWITCH";
        }
        if (r2 == 557846576) {
            return "HVAC_FRAGRANCE_CONSISTENCE_LEVEL";
        }
        if (r2 == 557846577) {
            return "HVAC_FRAGRANCE_POSITION";
        }
        if (r2 == 557846578) {
            return "HVAC_FRAGRANCE_TYPE_POS1";
        }
        if (r2 == 557846579) {
            return "HVAC_FRAGRANCE_TYPE_POS2";
        }
        if (r2 == 557846580) {
            return "HVAC_FRAGRANCE_TYPE_POS3";
        }
        if (r2 == 557846581) {
            return "HVAC_FRAGRANCE_SHORTAGE_WARNING";
        }
        if (r2 == 557846582) {
            return "HVAC_BLOWER_SPEED_T1E";
        }
        if (r2 == 559943735) {
            return "HVAC_DRIVER_TEMP_T1E";
        }
        if (r2 == 559943736) {
            return "HVAC_PASSENGER_TEMP_T1E";
        }
        if (r2 == 557846585) {
            return "HVAC_SEAT_HEAT_REAR_L";
        }
        if (r2 == 557846586) {
            return "HVAC_SEAT_HEAT_REAR_R";
        }
        if (r2 == 557850624) {
            return "KEY_STS";
        }
        if (r2 == 557850625) {
            return "DIR_IND_RIGHT";
        }
        if (r2 == 557850626) {
            return "DIR_IND_LEFT";
        }
        if (r2 == 559947779) {
            return "VEHICLE_SPEED";
        }
        if (r2 == 559947780) {
            return "STEERING_ANGLE";
        }
        if (r2 == 557850629) {
            return "STEERING_ANGLE_VALID";
        }
        if (r2 == 557850630) {
            return "GEAR_POSITION";
        }
        if (r2 == 557850631) {
            return "LHF_RADAR_DISTANCE";
        }
        if (r2 == 557850632) {
            return "LHMF_RADAR_DISTANCE";
        }
        if (r2 == 557850633) {
            return "LHMR_RADAR_DISTANCE";
        }
        if (r2 == 557850634) {
            return "LHR_RADAR_DISTANCE";
        }
        if (r2 == 557850635) {
            return "RHF_RADAR_DISTANCE";
        }
        if (r2 == 557850636) {
            return "RHMF_RADAR_DISTANCE";
        }
        if (r2 == 557850637) {
            return "RHMR_RADAR_DISTANCE";
        }
        if (r2 == 557850638) {
            return "RHR_RADAR_DISTANCE";
        }
        if (r2 == 557850639) {
            return "AUDIO_BEEP_RATE";
        }
        if (r2 == 557850640) {
            return "RADAR_DETECT_STS";
        }
        if (r2 == 557850641) {
            return "RADAR_WORK_STS";
        }
        if (r2 == 557850642) {
            return "DRIVER_DOOR_STS";
        }
        if (r2 == 557850643) {
            return "PSG_DOOR_STS";
        }
        if (r2 == 557850644) {
            return "LHR_DOOR_STS";
        }
        if (r2 == 557850645) {
            return "RHR_DOOR_STS";
        }
        if (r2 == 557850646) {
            return "TRUNK_STS";
        }
        if (r2 == 557850647) {
            return "BCM_HOOD_STS";
        }
        if (r2 == 557850648) {
            return "SRF_OPERATE_STS";
        }
        if (r2 == 557850649) {
            return "RCTA_WARNING_LEFT";
        }
        if (r2 == 557850650) {
            return "RCTA_WARNING_RIGHT";
        }
        if (r2 == 557850651) {
            return "LHF_PULSE_COUNTER";
        }
        if (r2 == 557850652) {
            return "LHR_PULSE_COUNTER";
        }
        if (r2 == 557850653) {
            return "RHF_PULSE_COUNTER";
        }
        if (r2 == 557850654) {
            return "RHR_PULSE_COUNTER";
        }
        if (r2 == 557850655) {
            return "LHF_PULSE_COUNTER_FAIL_STS";
        }
        if (r2 == 557850656) {
            return "LHR_PULSE_COUNTER_FAIL_STS";
        }
        if (r2 == 557850657) {
            return "RHF_PULSE_COUNTER_FAIL_STS";
        }
        if (r2 == 557850658) {
            return "RHR_PULSE_COUNTER_FAIL_STS";
        }
        if (r2 == 559947811) {
            return "VEHICLE_SPEED_VSOSIG";
        }
        if (r2 == 557850660) {
            return "VEHICLE_SPEED_VSOSIG_VALIDATION";
        }
        if (r2 == 557850661) {
            return "ENGINE_SPEED";
        }
        if (r2 == 557850662) {
            return "ODO_METRE_KM";
        }
        if (r2 == 557850663) {
            return "VEHICLE_FUEL_LEVEL";
        }
        if (r2 == 557850664) {
            return "RESIDUAL_ODO_METRE";
        }
        if (r2 == 557850665) {
            return "HAND_BRAKE_SYSTEM_STATE";
        }
        if (r2 == 560996394) {
            return "DIAG_TIHU_IHU_RES";
        }
        if (r2 == 559947819) {
            return "OUTSIDE_TEMP_C";
        }
        if (r2 == 557850668) {
            return "OUTSIDE_TEMP_F";
        }
        if (r2 == 559947821) {
            return "LHF_TIRE_PRESSURE";
        }
        if (r2 == 559947822) {
            return "RHF_TIRE_PRESSURE";
        }
        if (r2 == 559947823) {
            return "LHR_TIRE_PRESSURE";
        }
        if (r2 == 559947824) {
            return "RHR_TIRE_PRESSURE";
        }
        if (r2 == 557850673) {
            return "CRUISE_STATE";
        }
        if (r2 == 557850674) {
            return "CRUISE_SPEED";
        }
        if (r2 == 557850675) {
            return "AIR_PRESSURE";
        }
        if (r2 == 557850676) {
            return "RAIN_LEVEL";
        }
        if (r2 == 557850677) {
            return "PASSENGER_SEAT_STATUS";
        }
        if (r2 == 557850678) {
            return "ETC_CARD_CONFIGURATION";
        }
        if (r2 == 557850679) {
            return "IGNITION_DISTANCE";
        }
        if (r2 == 557850680) {
            return "LOW_FUEL_WARNING";
        }
        if (r2 == 557850681) {
            return "WARNING_LIGHT";
        }
        if (r2 == 557850682) {
            return "CPAA_DIAG_DATA";
        }
        if (r2 == 557850683) {
            return "DAY_NIGHT_MODE_LIGHT";
        }
        if (r2 == 557850684) {
            return "DAY_NIGHT_MODE_LIGHT_CAN";
        }
        if (r2 == 557850685) {
            return "DAY_NIGHT_MODE_LIGHT_SENSOR";
        }
        if (r2 == 557850686) {
            return "SCREEN_OVER_TEMPERATURE";
        }
        if (r2 == 557850687) {
            return "GEAR_POSITION_MANUAL_R_STS";
        }
        if (r2 == 557850688) {
            return "BCM_ARMING_STS";
        }
        if (r2 == 557850689) {
            return "ENGINE_STS";
        }
        if (r2 == 557850690) {
            return "IBS_SOC";
        }
        if (r2 == 559947843) {
            return "IBS_VOLTAGE";
        }
        if (r2 == 557850692) {
            return "OBD_DIAGNOSIS_REQIND";
        }
        if (r2 == 560996421) {
            return "DVR_INTERACTION";
        }
        if (r2 == 557850694) {
            return "IBS_SOH";
        }
        if (r2 == 557850695) {
            return "MCU_BOOT_MODE";
        }
        if (r2 == 557850696) {
            return "CTP_KEY_VOICE_REMIND";
        }
        if (r2 == 561000448) {
            return "IPC_DISPLAY_INFO";
        }
        if (r2 == 557854721) {
            return "AUTO_LOCK_STS";
        }
        if (r2 == 557854722) {
            return "AUTO_FOLD_STS";
        }
        if (r2 == 557854723) {
            return "REMOTE_LOCK_FEEDBACK_STS";
        }
        if (r2 == 557854724) {
            return "LANGUAGE_SET";
        }
        if (r2 == 557854725) {
            return "PLG_POSITION_SET";
        }
        if (r2 == 557854726) {
            return "CWC_WORKING_STS";
        }
        if (r2 == 557854727) {
            return "CWC_PHONE_FORGOTTEN_FUN_STS";
        }
        if (r2 == 557854728) {
            return "AEB_SWT_SET";
        }
        if (r2 == 557854729) {
            return "FCW_SWT_SET";
        }
        if (r2 == 557854730) {
            return "FCW_SNVTY_SET";
        }
        if (r2 == 557854731) {
            return "TJAICAEXIT_TEXT_INFO_SWT_SET";
        }
        if (r2 == 557854732) {
            return "OVER_SPEED_VALUE";
        }
        if (r2 == 557854733) {
            return "FCM_ELK";
        }
        if (r2 == 557854734) {
            return "LDW_SWT_SET";
        }
        if (r2 == 557854735) {
            return "WARN_MODE_SWT_SET";
        }
        if (r2 == 557854736) {
            return "LDP_SWT_SET";
        }
        if (r2 == 557854737) {
            return "LDW_LDP_SNVTY_SET";
        }
        if (r2 == 557854738) {
            return "HDC_SET";
        }
        if (r2 == 557854739) {
            return "ESP_FUNCTION";
        }
        if (r2 == 557854740) {
            return "DAI_SWT_SET";
        }
        if (r2 == 557854741) {
            return "IES_SWT_SET";
        }
        if (r2 == 557854742) {
            return "EPS_ASSOCI_DRIVER_MODE";
        }
        if (r2 == 557854743) {
            return "EPS_ASSISTANCE_STYLE";
        }
        if (r2 == 557854744) {
            return "RCTB_SWT_SET";
        }
        if (r2 == 557854745) {
            return "DVD_SET_RCW";
        }
        if (r2 == 557854746) {
            return "BSD_SWITCH_STS";
        }
        if (r2 == 557854747) {
            return "SET_DOW";
        }
        if (r2 == 557854748) {
            return "SOURCE_STATION_MODE";
        }
        if (r2 == 557854749) {
            return "RADIO_FREQUANCE_MODE";
        }
        if (r2 == 559951902) {
            return "FM_RADIO_FREQUANCE_VALUE";
        }
        if (r2 == 557854751) {
            return "AM_RADIO_FREQUANCE_VALUE";
        }
        if (r2 == 557854752) {
            return "RADIO_RESEARCH_STS";
        }
        if (r2 == 557854753) {
            return "WELCOME_LIGHT_POLLING";
        }
        if (r2 == 557854754) {
            return "PEPS_INTELLIGENT_OPEN";
        }
        if (r2 == 557854755) {
            return "PEPS_POLLING";
        }
        if (r2 == 557854756) {
            return "LAMP_DAYTIME_RUNNING_LIGHT_MODE";
        }
        if (r2 == 557854757) {
            return "LAMP_HIGH_BEAM_ASSIST";
        }
        if (r2 == 557854758) {
            return "HEAD_LAMP_HEIGHT";
        }
        if (r2 == 557854759) {
            return "HEAD_LAMP_DELAY_LIGHT";
        }
        if (r2 == 557854760) {
            return "AMBLIGHT_ON";
        }
        if (r2 == 557854761) {
            return "AMBLIGHT_ASSOCIATED_DRIVER_MODE";
        }
        if (r2 == 557854762) {
            return "AMBLIGHT_BRIGHTNESS";
        }
        if (r2 == 557854763) {
            return "AMBLIGHT_COLOR";
        }
        if (r2 == 557854764) {
            return "ICM_BRIGHTNESS_LEVEL";
        }
        if (r2 == 561000493) {
            return "IPC_DISPLAY_INFO_REPLY";
        }
        if (r2 == 557854766) {
            return "IPC_YEAR";
        }
        if (r2 == 557854767) {
            return "IPC_MONTH";
        }
        if (r2 == 557854768) {
            return "IPC_DAY";
        }
        if (r2 == 557854769) {
            return "IPC_HOUR";
        }
        if (r2 == 557854770) {
            return "IPC_MIN";
        }
        if (r2 == 557854771) {
            return "IPC_SEC";
        }
        if (r2 == 554709044) {
            return "IPC_TIME";
        }
        if (r2 == 557854773) {
            return "ISS_SWITCH";
        }
        if (r2 == 557854774) {
            return "CWC_CHARGING_STS";
        }
        if (r2 == 557854775) {
            return "SCF_SWT_SET";
        }
        if (r2 == 557854776) {
            return "TSI_SWT_SET";
        }
        if (r2 == 557854777) {
            return "TLI_SWT_SET";
        }
        if (r2 == 557854778) {
            return "DRIVE_MODE_INTERNAL";
        }
        if (r2 == 557854779) {
            return "IPC_SET_THEME_TYPE";
        }
        if (r2 == 557854780) {
            return "CWC_PHONE_FORGOTTEN_MSG";
        }
        if (r2 == 557854781) {
            return "DVD_TRUNK_CMD";
        }
        if (r2 == 557854782) {
            return "IHU_SRF_CMD";
        }
        if (r2 == 557854783) {
            return "IHU_WINDOW_CMD";
        }
        if (r2 == 557854784) {
            return "AMBLGHT_ASSOCIATED_WITH_MUSIC_MODE";
        }
        if (r2 == 557854785) {
            return "CTP_DRIVE_MODE_SET";
        }
        if (r2 == 557854786) {
            return "IHU_WINDOW_MSG_FD";
        }
        if (r2 == 557854787) {
            return "IHU_WINDOW_MSG_FP";
        }
        if (r2 == 557854788) {
            return "IHU_WINDOW_MSG_RL";
        }
        if (r2 == 557854789) {
            return "IHU_WINDOW_MSG_RR";
        }
        if (r2 == 557854790) {
            return "IPC_DISPLAY_MODE_ON";
        }
        if (r2 == 557854791) {
            return "IPC_TIME_FORMAT_SET";
        }
        if (r2 == 557854792) {
            return "FRNT_RADAR_SWT";
        }
        if (r2 == 557854793) {
            return "CTP_DRIVE_MODE_SET_BCM";
        }
        if (r2 == 557854800) {
            return "OBD_REQ_BROADCAST_7CF";
        }
        if (r2 == 557854801) {
            return "OBD_REQ_OTA";
        }
        if (r2 == 557854802) {
            return "SET_BLTKEY_STS";
        }
        if (r2 == 557854803) {
            return "SET_REV_EXTMIR";
        }
        if (r2 == 557854804) {
            return "FATIGURE_DRIVING_TIME";
        }
        if (r2 == 557854805) {
            return "SLA_SWT_SET";
        }
        if (r2 == 557854806) {
            return "AMBLGHT_MUSIC_SHOW";
        }
        if (r2 == 557854807) {
            return "AMBLIGHT_COLOR_7";
        }
        if (r2 == 557854808) {
            return "HMA_ON_OFF";
        }
        if (r2 == 557854809) {
            return "SET_DOW_2";
        }
        if (r2 == 557854810) {
            return "SET_RCW";
        }
        if (r2 == 557854811) {
            return "LDW_LKA_SENSITIVITY";
        }
        if (r2 == 557854812) {
            return "SLA_ON_OFF";
        }
        if (r2 == 557854813) {
            return "GPS_YEAR";
        }
        if (r2 == 557854815) {
            return "GPS_MONTH";
        }
        if (r2 == 557854816) {
            return "GPS_DAY";
        }
        if (r2 == 557854817) {
            return "GPS_HOUR";
        }
        if (r2 == 557854818) {
            return "GPS_MIN";
        }
        if (r2 == 557854819) {
            return "GPS_SEC";
        }
        if (r2 == 557854820) {
            return "FATIGURE_DRIVING_WARNING";
        }
        if (r2 == 557854821) {
            return "DRIVER_UNLOCK_ONLY";
        }
        if (r2 == 557854822) {
            return "SCU_RELATE_FACEID";
        }
        if (r2 == 557854823) {
            return "SEAT_EXTMIR_POS";
        }
        if (r2 == 557854824) {
            return "EASY_ENTRY_STS";
        }
        if (r2 == 557854825) {
            return "TJA_ICA_STS";
        }
        if (r2 == 557854826) {
            return "ALRM_VOL_CTRL";
        }
        if (r2 == 557854827) {
            return "BKLT_BRI_ADJ";
        }
        if (r2 == 557854828) {
            return "SUNSHADE_CMD";
        }
        if (r2 == 557854829) {
            return "DMS_ALRM_SWT";
        }
        if (r2 == 557854832) {
            return "TIME_GAP_LAST_SET";
        }
        if (r2 == 557854833) {
            return "TIME_GAP_SET";
        }
        if (r2 == 557854834) {
            return "AEB_STS";
        }
        if (r2 == 557854835) {
            return "DISTANCE_WARNING_STS";
        }
        if (r2 == 557854836) {
            return "AUDIBLE_ALARM";
        }
        if (r2 == 557854837) {
            return "SELECT_THE_SEAT";
        }
        if (r2 == 557854838) {
            return "DVR_SNAP_SHOT";
        }
        if (r2 == 557854839) {
            return "NAV_SPEED_LIMIT_STS";
        }
        if (r2 == 557854840) {
            return "NAV_SPEED_LIMIT";
        }
        if (r2 == 557854841) {
            return "NAV_SPEED_LIMIT_UNITS";
        }
        if (r2 == 557854842) {
            return "NAV_ROAD_TYPE";
        }
        if (r2 == 561013248) {
            return "CAL_EXTERIOR_COLOR";
        }
        if (r2 == 554721793) {
            return "CAL_Vehicle_VIN";
        }
        if (r2 == 561013250) {
            return "CAL_DIAGNOSTIC_CONFIG_7010";
        }
        if (r2 == 561013251) {
            return "CAL_DIAGNOSTIC_CONFIG_7019";
        }
        if (r2 == 561013252) {
            return "CAL_DIAGNOSTIC_CONFIG_701A";
        }
        if (r2 == 561013253) {
            return "CAL_DIAGNOSTIC_CONFIG_701B";
        }
        if (r2 == 554721798) {
            return "CAL_ECU_SW_NUMBER";
        }
        if (r2 == 554721799) {
            return "CAL_ECU_HW_NUMBER";
        }
        if (r2 == 554721800) {
            return "CAL_ECU_SERIAL_NUMBER";
        }
        if (r2 == 554721801) {
            return "CAL_VEHICLE_PART_NUMBER";
        }
        if (r2 == 554721802) {
            return "CAL_UUID";
        }
        if (r2 == 554721803) {
            return "CAL_VIN";
        }
        if (r2 == 554721804) {
            return "CAL_SYSTEM_SUPPLIER_IDENTIFIER";
        }
        if (r2 == 561013261) {
            return "CAL_SC";
        }
        if (r2 == 561013262) {
            return "CAL_SK";
        }
        if (r2 == 561013263) {
            return "CAL_DIAGNOSTIC_CONFIG_7038";
        }
        if (r2 == 554722560) {
            return "SCREEN_TFT_SIZE";
        }
        if (r2 == 554722561) {
            return "SCREEN_TFT_TYPE";
        }
        if (r2 == 554722563) {
            return "SCREEN_HW_VERSION";
        }
        if (r2 == 554722564) {
            return "SCREEN_TP_VERSION";
        }
        if (r2 == 554722565) {
            return "SCREEN_SW_VERSION";
        }
        if (r2 == 554722566) {
            return "SCREEN_SUPPLIER_CODE";
        }
        if (r2 == 554722567) {
            return "SCREEN_SUPPLIER_INFO";
        }
        if (r2 == 554722568) {
            return "SCREEN_PART_NUM";
        }
        if (r2 == 292581377) {
            return "PMS_PWR_MODE";
        }
        if (r2 == 289435650) {
            return "PMS_BOOT_REASON";
        }
        if (r2 == 289435651) {
            return "PMS_SET_EVENTS";
        }
        if (r2 == 289501188) {
            return "PMS_SYSTEM_OFF";
        }
        if (r2 == 289435653) {
            return "PMS_SYSTEM_OFF_WAIT";
        }
        if (r2 == 289435654) {
            return "PMS_SYSTEM_ON";
        }
        if (r2 == 289435655) {
            return "PMS_SYSTEM_POWER_STATE";
        }
        if (r2 == 289435656) {
            return "PMS_SYSTEM_RESTART";
        }
        if (r2 == 289435657) {
            return "PMS_SYSTEM_SHUTDOWN_NOW";
        }
        if (r2 == 289435658) {
            return "PMS_SYSTEM_COMM_READY";
        }
        if (r2 == 289435659) {
            return "PMS_SYSTEM_TEMPRUN_ENDING";
        }
        if (r2 == 289435660) {
            return "PMS_SYSTEM_RE_TEMPRUN_TIMEOUT";
        }
        if (r2 == 289435661) {
            return "PMS_SYSTEM_TIME_OF_TEMPRUN";
        }
        if (r2 == 289435662) {
            return "PMS_SYSTEM_DAY_NIGHT_MODE";
        }
        if (r2 == 289435663) {
            return "PMS_INFO_HEART_BEAT";
        }
        if (r2 == 292581392) {
            return "PMS_MCU_VERSION";
        }
        if (r2 == 289435665) {
            return "PMS_INFO_SOC_EVENT";
        }
        if (r2 == 289435666) {
            return "PMS_PRO_MODE_EXIT";
        }
        if (r2 == 289435667) {
            return "PMS_MCU_FACTORY_RESET";
        }
        if (r2 == 289435668) {
            return "PMS_VOLTAGE_INFO_QUERY";
        }
        if (r2 == 561008641) {
            return "EOL_PROPID_GETSOCSWVERSION";
        }
        if (r2 == 561009151) {
            return "EOL_TEST_END";
        }
        if (r2 == 561008642) {
            return "EOL_GET_SYSTEM_INITIAL_STATUS";
        }
        if (r2 == 561008643) {
            return "EOL_SET_POWER_BUTTON_OFF";
        }
        if (r2 == 561008644) {
            return "EOL_SET_EOL_TEST_MODE_ON_OFF";
        }
        if (r2 == 561008645) {
            return "EOL_GET_SOCSW_VERSION";
        }
        if (r2 == 561008646) {
            return "EOL_GET_MCUSW_VERSION";
        }
        if (r2 == 561008647) {
            return "EOL_GET_BATTERY_DATA";
        }
        if (r2 == 561008648) {
            return "EOL_CLEAR_DIAGNOSTIC_DTC_INFORMATION";
        }
        if (r2 == 561008649) {
            return "EOL_READ_DIAGNOSTIC_DTC_NUMBER";
        }
        if (r2 == 561008650) {
            return "EOL_SET_FACTORY_REST";
        }
        if (r2 == 561008651) {
            return "EOL_GET_ACC_IGN_STATUS";
        }
        if (r2 == 561008652) {
            return "EOL_GET_ILL_STATUS";
        }
        if (r2 == 561008653) {
            return "EOL_GET_MUTE_SIGNAL_INPUT_STATUS";
        }
        if (r2 == 561008654) {
            return "EOL_GET_RESCUE_CALL_TEST";
        }
        if (r2 == 561008655) {
            return "EOL_GET_RESCUE_CALL_STATUS";
        }
        if (r2 == 561008656) {
            return "EOL_GET_QD_LINK_STATUS";
        }
        if (r2 == 561008657) {
            return "EOL_ECU_PART_NUMBER";
        }
        if (r2 == 561008658) {
            return "EOL_LOGISTIC_SW_PART_NUMBER";
        }
        if (r2 == 561008659) {
            return "EOL_HARDWARE_VERSION_NUMBER";
        }
        if (r2 == 561008660) {
            return "EOL_SOFTWARE_VERSION_NUMBER";
        }
        if (r2 == 561008661) {
            return "EOL_ECU_SERIAL_NUMBER";
        }
        if (r2 == 561008662) {
            return "EOL_UUID";
        }
        if (r2 == 561008663) {
            return "EOL_TUNER_CURRENT_STATUS";
        }
        if (r2 == 561008664) {
            return "EOL_TUNER_BAND";
        }
        if (r2 == 561008665) {
            return "EOL_TUNER_FREQUENCY";
        }
        if (r2 == 561008666) {
            return "EOL_TUNER_FAVORITE";
        }
        if (r2 == 561008667) {
            return "EOL_TUNER_PRESET";
        }
        if (r2 == 561008668) {
            return "EOL_TUNER_SEEK";
        }
        if (r2 == 561008669) {
            return "EOL_TUNER_AUTO_STORE";
        }
        if (r2 == 561008670) {
            return "EOL_TUNER_AUTO_SCAN_UP";
        }
        if (r2 == 561008671) {
            return "EOL_TUNER_UPDATE_STATION_LIST";
        }
        if (r2 == 561008672) {
            return "EOL_TUNER_SIGNAL_STRENGTH";
        }
        if (r2 == 561008673) {
            return "EOL_BLUETOOTH_TEST_MODE_ON_OFF";
        }
        if (r2 == 561008674) {
            return "EOL_GET_BLUETOOTH_TEST_STATUS";
        }
        if (r2 == 561008675) {
            return "EOL_WRITE_BLUETOOTH_ADDRESS";
        }
        if (r2 == 561008676) {
            return "EOL_READ_BT_MODULE_VERSION";
        }
        if (r2 == 561008677) {
            return "EOL_SET_BT_PAIRING_ON_OFF";
        }
        if (r2 == 561008678) {
            return "EOL_GET_BT_PAIRING_MODE";
        }
        if (r2 == 561008679) {
            return "EOL_SET_BT_PAIRING_TO_SPECIFY_DEVICE";
        }
        if (r2 == 561008680) {
            return "EOL_GET_BT_PAIRING_STATUS";
        }
        if (r2 == 561008681) {
            return "EOL_SET_BT_IN_MUSIC_MODE";
        }
        if (r2 == 561008682) {
            return "EOL_GET_BT_MUSIC_MODE_STATUS";
        }
        if (r2 == 561008683) {
            return "EOL_SET_BT_AUDIO_SKIP_TRACK";
        }
        if (r2 == 561008684) {
            return "EOL_SET_BT_AUDIO_PLAY_PAUSE";
        }
        if (r2 == 561008685) {
            return "EOL_SET_BT_AUDIO_PLAY_MODE";
        }
        if (r2 == 561008686) {
            return "EOL_GET_WHETHER_CALL_COMMING_IN";
        }
        if (r2 == 561008687) {
            return "EOL_SET_BT_PHONE_ANSWER_REJECT";
        }
        if (r2 == 561008688) {
            return "EOL_GET_BT_WHETHER_ON_PHONE";
        }
        if (r2 == 561008689) {
            return "EOL_SET_BT_DISCONNECT_ALL_CONNECTIONS";
        }
        if (r2 == 561008690) {
            return "EOL_CLEAR_BT_PAIRED_LIST";
        }
        if (r2 == 561008691) {
            return "EOL_SET_BT_MODULE_ON_OFF";
        }
        if (r2 == 561008692) {
            return "EOL_GET_BT_MODULE_STATUS";
        }
        if (r2 == 561008693) {
            return "EOL_GET_AUDIO_SOURCE";
        }
        if (r2 == 561008694) {
            return "EOL_SET_AUDIO_SOURCE";
        }
        if (r2 == 561008695) {
            return "EOL_GET_VOLUME_LEVEL";
        }
        if (r2 == 561008696) {
            return "EOL_SET_VOLUME_LEVEL";
        }
        if (r2 == 561008697) {
            return "EOL_GET_FADE_LEVEL";
        }
        if (r2 == 561008698) {
            return "EOL_SET_FADE_LEVEL";
        }
        if (r2 == 561008699) {
            return "EOL_GET_BALANCE_LEVEL";
        }
        if (r2 == 561008700) {
            return "EOL_SET_BALANCE_LEVEL";
        }
        if (r2 == 561008701) {
            return "EOL_GET_MUTE_STATUS";
        }
        if (r2 == 561008702) {
            return "EOL_SET_MUTE_STATUS";
        }
        if (r2 == 561008703) {
            return "EOL_GET_LOUDNESS_STATUS";
        }
        if (r2 == 561008704) {
            return "EOL_SET_LOUDNESS_STATUS";
        }
        if (r2 == 561008705) {
            return "EOL_GET_SPEED_VOLUME_STATUS";
        }
        if (r2 == 561008706) {
            return "EOL_SET_SPEED_VOLUME_STATUS";
        }
        if (r2 == 561008707) {
            return "EOL_GET_EQ_STATUS";
        }
        if (r2 == 561008708) {
            return "EOL_SET_EQ_STATUS";
        }
        if (r2 == 561008709) {
            return "EOL_SET_EQ_USER_DEFINE_VALUE";
        }
        if (r2 == 561008710) {
            return "EOL_GET_EQ_USER_DEFINE_VALUE";
        }
        if (r2 == 561008711) {
            return "EOL_GET_ARKAMYS_STATUS";
        }
        if (r2 == 561008712) {
            return "EOL_SET_ARKAMYS_STATUS";
        }
        if (r2 == 561008713) {
            return "EOL_SET_USB_IPOD_PLAY_PAUSE";
        }
        if (r2 == 561008714) {
            return "EOL_SET_USB_IPOD_PLAY_MODE";
        }
        if (r2 == 561008715) {
            return "EOL_SET_USB_FORWARD_REWIND";
        }
        if (r2 == 561008716) {
            return "EOL_SET_USB_IPOD_SKIP_TRACK";
        }
        if (r2 == 561008717) {
            return "EOL_SET_USB_DESIRED_FILE_DESIRED_TIME";
        }
        if (r2 == 561008718) {
            return "EOL_GET_USB_IPOD_CURRENT_STATE";
        }
        if (r2 == 561008719) {
            return "EOL_SET_SURROUND_VIEW_ON_OFF";
        }
        if (r2 == 561008720) {
            return "EOL_SET_FRONT_CAMERA_VIEW_ON_OFF";
        }
        if (r2 == 561008721) {
            return "EOL_SET_LEFT_CAMERA_VIEW_ON_OFF";
        }
        if (r2 == 561008722) {
            return "EOL_SET_RIGHT_CAMERA_VIEW_ON_OFF";
        }
        if (r2 == 561008723) {
            return "EOL_SET_BACK_CAMERA_VIEW_ON_OFF";
        }
        if (r2 == 561008724) {
            return "EOL_SET_RVC_ON_OFF";
        }
        if (r2 == 561008725) {
            return "EOL_SET_NAVIGATION_ON_OFF";
        }
        if (r2 == 561008726) {
            return "EOL_GET_NAVIGATION_SW_VERSION";
        }
        if (r2 == 561008727) {
            return "EOL_GET_MAP_VERSION";
        }
        if (r2 == 561008728) {
            return "EOL_GET_ELV_DATA";
        }
        if (r2 == 561008729) {
            return "EOL_GET_AZTH_DATA";
        }
        if (r2 == 561008730) {
            return "EOL_GET_LONGITUDE_DIRECTION";
        }
        if (r2 == 561008731) {
            return "EOL_GET_LONGITUDE";
        }
        if (r2 == 561008732) {
            return "EOL_GET_LATITUDE_DIRECTION";
        }
        if (r2 == 561008733) {
            return "EOL_GET_LATITUDE";
        }
        if (r2 == 561008734) {
            return "EOL_GET_VEHICLE_SPEED_FROM_GPS";
        }
        if (r2 == 561008735) {
            return "EOL_GET_ALTITUDE";
        }
        if (r2 == 561008736) {
            return "EOL_GET_TRACKED_SATELLITES";
        }
        if (r2 == 561008737) {
            return "EOL_GET_VISIBLE_SATELLITES";
        }
        if (r2 == 561008738) {
            return "EOL_GET_HDOP";
        }
        if (r2 == 561008739) {
            return "EOL_GET_VDOP";
        }
        if (r2 == 561008740) {
            return "EOL_GET_GPS_CN_VALUE";
        }
        if (r2 == 561008741) {
            return "EOL_SET_GPS_ENTER_HIGH_GAIN_MODE";
        }
        if (r2 == 561008742) {
            return "EOL_GYRO_DATA_INFO";
        }
        if (r2 == 561008743) {
            return "EOL_SET_MIC_ON_OFF";
        }
        if (r2 == 561008744) {
            return "EOL_SET_SPEECH_RECOGNIZE_START_END";
        }
        if (r2 == 561008745) {
            return "EOL_GET_SPEECH_RECOGNIZE_RESULT";
        }
        if (r2 == 561008746) {
            return "EOL_GET_SPEECH_RECOGNIZE_SWITCH_STATUS";
        }
        if (r2 == 561008747) {
            return "EOL_SET_SPEECH_RECOGNIZE_SWITCH_STATUS";
        }
        if (r2 == 561008748) {
            return "EOL_SET_WIFI_MODULE_ON_OFF";
        }
        if (r2 == 561008749) {
            return "EOL_GET_WIFI_MODULE_STATUS";
        }
        if (r2 == 561008750) {
            return "EOL_SET_WIFI_MODULE_WORK_MODE";
        }
        if (r2 == 561008751) {
            return "EOL_GET_WIFI_MODULE_WORK_MODE";
        }
        if (r2 == 561008752) {
            return "EOL_SET_WIFI_CONNECT_APPOINTED_NET";
        }
        if (r2 == 561008753) {
            return "EOL_GET_AP_KEY";
        }
        if (r2 == 561008754) {
            return "EOL_GET_WIFI_MODULE_CONNECT_STATUS";
        }
        if (r2 == 561008755) {
            return "EOL_GET_WIFI_MODULE_SIGNAL_STRENGTH";
        }
        if (r2 == 561008756) {
            return "EOL_SET_ALARM_AUDIO_PLAY";
        }
        if (r2 == 561008757) {
            return "EOL_SET_ALARM_AUDIO_STOP";
        }
        if (r2 == 561008758) {
            return "EOL_GET_USB_TBOX_CONNECT_STATUS";
        }
        if (r2 == 561008759) {
            return "EOL_GET_USB_ICM_CONNECT_STATUS";
        }
        if (r2 == 561008760) {
            return "EOL_SET_TFT_ILLUMINATION_ON_OFF";
        }
        if (r2 == 561008761) {
            return "EOL_SET_TFT_DISPLAY_PATTERN_ON_OFF";
        }
        if (r2 == 561008762) {
            return "EOL_SET_TFT_DISPLAY_PATTERN";
        }
        if (r2 == 561008763) {
            return "EOL_SET_TEST_SCREEN_ILLUMINATION";
        }
        if (r2 == 561008764) {
            return "EOL_SET_RESULT_SCREEN_ILLUMINATION";
        }
        if (r2 == 561008765) {
            return "EOL_SET_TFT_ILLUMINATION_LEVEL";
        }
        if (r2 == 561008766) {
            return "EOL_GET_TFT_ILLUMINATION_LEVEL";
        }
        if (r2 == 561008767) {
            return "EOL_SET_SCREEN_ON_OFF";
        }
        if (r2 == 561008768) {
            return "EOL_GET_SCREEN_STATUS";
        }
        if (r2 == 561008769) {
            return "EOL_SET_TOUCH_PANEL_SELF_CALIBRATION";
        }
        if (r2 == 561008770) {
            return "EOL_GET_TOUCH_PANEL_SELF_CALIBRATION_STATUS";
        }
        if (r2 == 561008771) {
            return "EOL_SET_DATA_LOG_ON_OFF";
        }
        if (r2 == 561008772) {
            return "EOL_GET_X1_Y1_POSITION";
        }
        if (r2 == 561008773) {
            return "EOL_SET_TOUCH_PANEL_FIVE_POINT_TEST";
        }
        if (r2 == 561008774) {
            return "EOL_GET_BEZEL_BUTTON_TEST";
        }
        if (r2 == 561008775) {
            return "EOL_GET_SWC_BUTTON_TEST";
        }
        if (r2 == 561008776) {
            return "EOL_SIMULATE_BEZEL_BUTTON_TEST";
        }
        if (r2 == 561008777) {
            return "EOL_SIMULATE_SWC_BUTTON_TEST";
        }
        if (r2 == 561008778) {
            return "EOL_GPS_LOCATION_STATUS";
        }
        if (r2 == 561008779) {
            return "EOL_NUMBER_OF_SATELLITES";
        }
        if (r2 == 561008780) {
            return "EOL_DIMMING_LEVEL";
        }
        if (r2 == 561008781) {
            return "EOL_SD_CARD_STATUS";
        }
        if (r2 == 561008782) {
            return "EOL_OS_VERSION";
        }
        if (r2 == 561008783) {
            return "EOL_MAP_VERSION";
        }
        if (r2 == 561008784) {
            return "EOL_READ_BT_ADDRESS";
        }
        if (r2 == 561009152) {
            return "DTC_PROPID_GETDTCLOG";
        }
        if (r2 == 561009153) {
            return "DTC_PROPID_SETDTCLOGEND";
        }
        if (r2 == 561009154) {
            return "DTC_PROPID_CLEARDTCLOG";
        }
        if (r2 == 561037312) {
            return "AVM_ENTER_EXIT_STATE";
        }
        if (r2 == 561037313) {
            return "AVM_SET_LICENSE_PLATE";
        }
        if (r2 == 561037314) {
            return "AVM_ENGINEERING_MODE";
        }
        if (r2 == 561037315) {
            return "AVM_CALIBRATION_STATUS";
        }
        if (r2 == 561037316) {
            return "AVM_VIEW_STATE";
        }
        if (r2 == 561037317) {
            return "AVM_VIEW_PARAMS";
        }
        if (r2 == 561037318) {
            return "AVM_LOG_SETTINGS";
        }
        if (r2 == 561037319) {
            return "AVM_DATA_STORAGE";
        }
        if (r2 == 561037320) {
            return "AVM_SIMULATE_OTHERS";
        }
        if (r2 == 561037321) {
            return "AVM_VERSION";
        }
        if (r2 == 561037322) {
            return "AVM_TOUCH_EVENT";
        }
        if (r2 == 561037323) {
            return "AVM_FACTORY_RESET";
        }
        if (r2 == 561037324) {
            return "EOL_REQUEST_AVM";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("INVALID");
        int r1 = 286261504;
        if ((r4 & 286261504) == 286261504) {
            arrayList.add("INFO_VIN");
        } else {
            r1 = 0;
        }
        if ((r4 & 286261505) == 286261505) {
            arrayList.add("INFO_MAKE");
            r1 |= 286261505;
        }
        if ((r4 & 286261506) == 286261506) {
            arrayList.add("INFO_MODEL");
            r1 |= 286261506;
        }
        if ((r4 & 289407235) == 289407235) {
            arrayList.add("INFO_MODEL_YEAR");
            r1 |= 289407235;
        }
        if ((r4 & 291504388) == 291504388) {
            arrayList.add("INFO_FUEL_CAPACITY");
            r1 |= 291504388;
        }
        if ((r4 & 289472773) == 289472773) {
            arrayList.add("INFO_FUEL_TYPE");
            r1 |= 289472773;
        }
        if ((r4 & 291504390) == 291504390) {
            arrayList.add("INFO_EV_BATTERY_CAPACITY");
            r1 |= 291504390;
        }
        if ((r4 & 289472775) == 289472775) {
            arrayList.add("INFO_EV_CONNECTOR_TYPE");
            r1 |= 289472775;
        }
        if ((r4 & 289407240) == 289407240) {
            arrayList.add("INFO_FUEL_DOOR_LOCATION");
            r1 |= 289407240;
        }
        if ((r4 & 289407241) == 289407241) {
            arrayList.add("INFO_EV_PORT_LOCATION");
            r1 |= 289407241;
        }
        if ((r4 & 356516106) == 356516106) {
            arrayList.add("INFO_DRIVER_SEAT");
            r1 |= 356516106;
        }
        if ((r4 & 291504644) == 291504644) {
            arrayList.add("PERF_ODOMETER");
            r1 |= 291504644;
        }
        if ((r4 & 291504647) == 291504647) {
            arrayList.add("PERF_VEHICLE_SPEED");
            r1 |= 291504647;
        }
        if ((r4 & 291504648) == 291504648) {
            arrayList.add("PERF_VEHICLE_SPEED_DISPLAY");
            r1 |= 291504648;
        }
        if ((r4 & 291504649) == 291504649) {
            arrayList.add("PERF_STEERING_ANGLE");
            r1 |= 291504649;
        }
        if ((r4 & 291504897) == 291504897) {
            arrayList.add("ENGINE_COOLANT_TEMP");
            r1 |= 291504897;
        }
        if ((r4 & 289407747) == 289407747) {
            arrayList.add("ENGINE_OIL_LEVEL");
            r1 |= 289407747;
        }
        if ((r4 & 291504900) == 291504900) {
            arrayList.add("ENGINE_OIL_TEMP");
            r1 |= 291504900;
        }
        if ((r4 & 291504901) == 291504901) {
            arrayList.add("ENGINE_RPM");
            r1 |= 291504901;
        }
        if ((r4 & 290521862) == 290521862) {
            arrayList.add("WHEEL_TICK");
            r1 |= 290521862;
        }
        if ((r4 & 291504903) == 291504903) {
            arrayList.add("FUEL_LEVEL");
            r1 |= 291504903;
        }
        if ((r4 & 287310600) == 287310600) {
            arrayList.add("FUEL_DOOR_OPEN");
            r1 |= 287310600;
        }
        if ((291504905 & r4) == 291504905) {
            arrayList.add("EV_BATTERY_LEVEL");
            r1 |= 291504905;
        }
        if ((287310602 & r4) == 287310602) {
            arrayList.add("EV_CHARGE_PORT_OPEN");
            r1 |= 287310602;
        }
        if ((287310603 & r4) == 287310603) {
            arrayList.add("EV_CHARGE_PORT_CONNECTED");
            r1 |= 287310603;
        }
        if ((291504908 & r4) == 291504908) {
            arrayList.add("EV_BATTERY_INSTANTANEOUS_CHARGE_RATE");
            r1 |= 291504908;
        }
        if ((291504904 & r4) == 291504904) {
            arrayList.add("RANGE_REMAINING");
            r1 |= 291504904;
        }
        if ((392168201 & r4) == 392168201) {
            arrayList.add("TIRE_PRESSURE");
            r1 |= 392168201;
        }
        if ((289408000 & r4) == 289408000) {
            arrayList.add("GEAR_SELECTION");
            r1 |= 289408000;
        }
        if ((289408001 & r4) == 289408001) {
            arrayList.add("CURRENT_GEAR");
            r1 |= 289408001;
        }
        if ((287310850 & r4) == 287310850) {
            arrayList.add("PARKING_BRAKE_ON");
            r1 |= 287310850;
        }
        if ((287310851 & r4) == 287310851) {
            arrayList.add("PARKING_BRAKE_AUTO_APPLY");
            r1 |= 287310851;
        }
        if ((287310853 & r4) == 287310853) {
            arrayList.add("FUEL_LEVEL_LOW");
            r1 |= 287310853;
        }
        if ((287310855 & r4) == 287310855) {
            arrayList.add("NIGHT_MODE");
            r1 |= 287310855;
        }
        if ((289408008 & r4) == 289408008) {
            arrayList.add("TURN_SIGNAL_STATE");
            r1 |= 289408008;
        }
        if ((289408009 & r4) == 289408009) {
            arrayList.add("IGNITION_STATE");
            r1 |= 289408009;
        }
        if ((287310858 & r4) == 287310858) {
            arrayList.add("ABS_ACTIVE");
            r1 |= 287310858;
        }
        if ((287310859 & r4) == 287310859) {
            arrayList.add("TRACTION_CONTROL_ACTIVE");
            r1 |= 287310859;
        }
        if ((356517120 & r4) == 356517120) {
            arrayList.add("HVAC_FAN_SPEED");
            r1 |= 356517120;
        }
        if ((356517121 & r4) == 356517121) {
            arrayList.add("HVAC_FAN_DIRECTION");
            r1 |= 356517121;
        }
        if ((358614274 & r4) == 358614274) {
            arrayList.add("HVAC_TEMPERATURE_CURRENT");
            r1 |= 358614274;
        }
        if ((358614275 & r4) == 358614275) {
            arrayList.add("HVAC_TEMPERATURE_SET");
            r1 |= 358614275;
        }
        if ((320865540 & r4) == 320865540) {
            arrayList.add("HVAC_DEFROSTER");
            r1 |= 320865540;
        }
        if ((354419973 & r4) == 354419973) {
            arrayList.add("HVAC_AC_ON");
            r1 |= 354419973;
        }
        if ((354419974 & r4) == 354419974) {
            arrayList.add("HVAC_MAX_AC_ON");
            r1 |= 354419974;
        }
        if ((354419975 & r4) == 354419975) {
            arrayList.add("HVAC_MAX_DEFROST_ON");
            r1 |= 354419975;
        }
        if ((354419976 & r4) == 354419976) {
            arrayList.add("HVAC_RECIRC_ON");
            r1 |= 354419976;
        }
        if ((354419977 & r4) == 354419977) {
            arrayList.add("HVAC_DUAL_ON");
            r1 |= 354419977;
        }
        if ((354419978 & r4) == 354419978) {
            arrayList.add("HVAC_AUTO_ON");
            r1 |= 354419978;
        }
        if ((356517131 & r4) == 356517131) {
            arrayList.add("HVAC_SEAT_TEMPERATURE");
            r1 |= 356517131;
        }
        if ((339739916 & r4) == 339739916) {
            arrayList.add("HVAC_SIDE_MIRROR_HEAT");
            r1 |= 339739916;
        }
        if ((289408269 & r4) == 289408269) {
            arrayList.add("HVAC_STEERING_WHEEL_HEAT");
            r1 |= 289408269;
        }
        if ((289408270 & r4) == 289408270) {
            arrayList.add("HVAC_TEMPERATURE_DISPLAY_UNITS");
            r1 |= 289408270;
        }
        if ((356517135 & r4) == 356517135) {
            arrayList.add("HVAC_ACTUAL_FAN_SPEED_RPM");
            r1 |= 356517135;
        }
        if ((354419984 & r4) == 354419984) {
            arrayList.add("HVAC_POWER_ON");
            r1 |= 354419984;
        }
        if ((356582673 & r4) == 356582673) {
            arrayList.add("HVAC_FAN_DIRECTION_AVAILABLE");
            r1 |= 356582673;
        }
        if ((354419986 & r4) == 354419986) {
            arrayList.add("HVAC_AUTO_RECIRC_ON");
            r1 |= 354419986;
        }
        if ((356517139 & r4) == 356517139) {
            arrayList.add("HVAC_SEAT_VENTILATION");
            r1 |= 356517139;
        }
        if ((289408512 & r4) == 289408512) {
            arrayList.add("DISTANCE_DISPLAY_UNITS");
            r1 |= 289408512;
        }
        if ((289408513 & r4) == 289408513) {
            arrayList.add("FUEL_VOLUME_DISPLAY_UNITS");
            r1 |= 289408513;
        }
        if ((289408514 & r4) == 289408514) {
            arrayList.add("TIRE_PRESSURE_DISPLAY_UNITS");
            r1 |= 289408514;
        }
        if ((289408515 & r4) == 289408515) {
            arrayList.add("EV_BATTERY_DISPLAY_UNITS");
            r1 |= 289408515;
        }
        if ((287311364 & r4) == 287311364) {
            arrayList.add("FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME");
            r1 |= 287311364;
        }
        if ((289408517 & r4) == 289408517) {
            arrayList.add("VEHICLE_SPEED_DISPLAY_UNITS");
            r1 |= 289408517;
        }
        if ((291505923 & r4) == 291505923) {
            arrayList.add("ENV_OUTSIDE_TEMPERATURE");
            r1 |= 291505923;
        }
        if ((289475072 & r4) == 289475072) {
            arrayList.add("AP_POWER_STATE_REQ");
            r1 |= 289475072;
        }
        if ((289475073 & r4) == 289475073) {
            arrayList.add("AP_POWER_STATE_REPORT");
            r1 |= 289475073;
        }
        if ((289409538 & r4) == 289409538) {
            arrayList.add("AP_POWER_BOOTUP_REASON");
            r1 |= 289409538;
        }
        if ((289409539 & r4) == 289409539) {
            arrayList.add("DISPLAY_BRIGHTNESS");
            r1 |= 289409539;
        }
        if ((289475088 & r4) == 289475088) {
            arrayList.add("HW_KEY_INPUT");
            r1 |= 289475088;
        }
        if ((373295872 & r4) == 373295872) {
            arrayList.add("DOOR_POS");
            r1 |= 373295872;
        }
        if ((373295873 & r4) == 373295873) {
            arrayList.add("DOOR_MOVE");
            r1 |= 373295873;
        }
        if ((371198722 & r4) == 371198722) {
            arrayList.add("DOOR_LOCK");
            r1 |= 371198722;
        }
        if ((339741504 & r4) == 339741504) {
            arrayList.add("MIRROR_Z_POS");
            r1 |= 339741504;
        }
        if ((339741505 & r4) == 339741505) {
            arrayList.add("MIRROR_Z_MOVE");
            r1 |= 339741505;
        }
        if ((339741506 & r4) == 339741506) {
            arrayList.add("MIRROR_Y_POS");
            r1 |= 339741506;
        }
        if ((339741507 & r4) == 339741507) {
            arrayList.add("MIRROR_Y_MOVE");
            r1 |= 339741507;
        }
        if ((287312708 & r4) == 287312708) {
            arrayList.add("MIRROR_LOCK");
            r1 |= 287312708;
        }
        if ((287312709 & r4) == 287312709) {
            arrayList.add("MIRROR_FOLD");
            r1 |= 287312709;
        }
        if ((356518784 & r4) == 356518784) {
            arrayList.add("SEAT_MEMORY_SELECT");
            r1 |= 356518784;
        }
        if ((356518785 & r4) == 356518785) {
            arrayList.add("SEAT_MEMORY_SET");
            r1 |= 356518785;
        }
        if ((354421634 & r4) == 354421634) {
            arrayList.add("SEAT_BELT_BUCKLED");
            r1 |= 354421634;
        }
        if ((356518787 & r4) == 356518787) {
            arrayList.add("SEAT_BELT_HEIGHT_POS");
            r1 |= 356518787;
        }
        if ((356518788 & r4) == 356518788) {
            arrayList.add("SEAT_BELT_HEIGHT_MOVE");
            r1 |= 356518788;
        }
        if ((356518789 & r4) == 356518789) {
            arrayList.add("SEAT_FORE_AFT_POS");
            r1 |= 356518789;
        }
        if ((356518790 & r4) == 356518790) {
            arrayList.add("SEAT_FORE_AFT_MOVE");
            r1 |= 356518790;
        }
        if ((356518791 & r4) == 356518791) {
            arrayList.add("SEAT_BACKREST_ANGLE_1_POS");
            r1 |= 356518791;
        }
        if ((356518792 & r4) == 356518792) {
            arrayList.add("SEAT_BACKREST_ANGLE_1_MOVE");
            r1 |= 356518792;
        }
        if ((356518793 & r4) == 356518793) {
            arrayList.add("SEAT_BACKREST_ANGLE_2_POS");
            r1 |= 356518793;
        }
        if ((356518794 & r4) == 356518794) {
            arrayList.add("SEAT_BACKREST_ANGLE_2_MOVE");
            r1 |= 356518794;
        }
        if ((356518795 & r4) == 356518795) {
            arrayList.add("SEAT_HEIGHT_POS");
            r1 |= 356518795;
        }
        if ((356518796 & r4) == 356518796) {
            arrayList.add("SEAT_HEIGHT_MOVE");
            r1 |= 356518796;
        }
        if ((356518797 & r4) == 356518797) {
            arrayList.add("SEAT_DEPTH_POS");
            r1 |= 356518797;
        }
        if ((356518798 & r4) == 356518798) {
            arrayList.add("SEAT_DEPTH_MOVE");
            r1 |= 356518798;
        }
        if ((356518799 & r4) == 356518799) {
            arrayList.add("SEAT_TILT_POS");
            r1 |= 356518799;
        }
        if ((356518800 & r4) == 356518800) {
            arrayList.add("SEAT_TILT_MOVE");
            r1 |= 356518800;
        }
        if ((356518801 & r4) == 356518801) {
            arrayList.add("SEAT_LUMBAR_FORE_AFT_POS");
            r1 |= 356518801;
        }
        if ((356518802 & r4) == 356518802) {
            arrayList.add("SEAT_LUMBAR_FORE_AFT_MOVE");
            r1 |= 356518802;
        }
        if ((356518803 & r4) == 356518803) {
            arrayList.add("SEAT_LUMBAR_SIDE_SUPPORT_POS");
            r1 |= 356518803;
        }
        if ((356518804 & r4) == 356518804) {
            arrayList.add("SEAT_LUMBAR_SIDE_SUPPORT_MOVE");
            r1 |= 356518804;
        }
        if ((289409941 & r4) == 289409941) {
            arrayList.add("SEAT_HEADREST_HEIGHT_POS");
            r1 |= 289409941;
        }
        if ((356518806 & r4) == 356518806) {
            arrayList.add("SEAT_HEADREST_HEIGHT_MOVE");
            r1 |= 356518806;
        }
        if ((356518807 & r4) == 356518807) {
            arrayList.add("SEAT_HEADREST_ANGLE_POS");
            r1 |= 356518807;
        }
        if ((356518808 & r4) == 356518808) {
            arrayList.add("SEAT_HEADREST_ANGLE_MOVE");
            r1 |= 356518808;
        }
        if ((356518809 & r4) == 356518809) {
            arrayList.add("SEAT_HEADREST_FORE_AFT_POS");
            r1 |= 356518809;
        }
        if ((356518810 & r4) == 356518810) {
            arrayList.add("SEAT_HEADREST_FORE_AFT_MOVE");
            r1 |= 356518810;
        }
        if ((356518832 & r4) == 356518832) {
            arrayList.add("SEAT_OCCUPANCY");
            r1 |= 356518832;
        }
        if ((322964416 & r4) == 322964416) {
            arrayList.add("WINDOW_POS");
            r1 |= 322964416;
        }
        if ((322964417 & r4) == 322964417) {
            arrayList.add("WINDOW_MOVE");
            r1 |= 322964417;
        }
        if ((320867268 & r4) == 320867268) {
            arrayList.add("WINDOW_LOCK");
            r1 |= 320867268;
        }
        if ((299895808 & r4) == 299895808) {
            arrayList.add("VEHICLE_MAP_SERVICE");
            r1 |= 299895808;
        }
        if ((299896064 & r4) == 299896064) {
            arrayList.add("OBD2_LIVE_FRAME");
            r1 |= 299896064;
        }
        if ((299896065 & r4) == 299896065) {
            arrayList.add("OBD2_FREEZE_FRAME");
            r1 |= 299896065;
        }
        if ((299896066 & r4) == 299896066) {
            arrayList.add("OBD2_FREEZE_FRAME_INFO");
            r1 |= 299896066;
        }
        if ((299896067 & r4) == 299896067) {
            arrayList.add("OBD2_FREEZE_FRAME_CLEAR");
            r1 |= 299896067;
        }
        if ((289410560 & r4) == 289410560) {
            arrayList.add("HEADLIGHTS_STATE");
            r1 |= 289410560;
        }
        if ((289410561 & r4) == 289410561) {
            arrayList.add("HIGH_BEAM_LIGHTS_STATE");
            r1 |= 289410561;
        }
        if ((289410562 & r4) == 289410562) {
            arrayList.add("FOG_LIGHTS_STATE");
            r1 |= 289410562;
        }
        if ((289410563 & r4) == 289410563) {
            arrayList.add("HAZARD_LIGHTS_STATE");
            r1 |= 289410563;
        }
        if ((289410576 & r4) == 289410576) {
            arrayList.add("HEADLIGHTS_SWITCH");
            r1 |= 289410576;
        }
        if ((289410577 & r4) == 289410577) {
            arrayList.add("HIGH_BEAM_LIGHTS_SWITCH");
            r1 |= 289410577;
        }
        if ((289410578 & r4) == 289410578) {
            arrayList.add("FOG_LIGHTS_SWITCH");
            r1 |= 289410578;
        }
        if ((289410579 & r4) == 289410579) {
            arrayList.add("HAZARD_LIGHTS_SWITCH");
            r1 |= 289410579;
        }
        if ((289410817 & r4) == 289410817) {
            arrayList.add("CABIN_LIGHTS_STATE");
            r1 |= 289410817;
        }
        if ((289410818 & r4) == 289410818) {
            arrayList.add("CABIN_LIGHTS_SWITCH");
            r1 |= 289410818;
        }
        if ((356519683 & r4) == 356519683) {
            arrayList.add("READING_LIGHTS_STATE");
            r1 |= 356519683;
        }
        if ((356519684 & r4) == 356519684) {
            arrayList.add("READING_LIGHTS_SWITCH");
            r1 |= 356519684;
        }
        if ((560992257 & r4) == 560992257) {
            arrayList.add("HVAC_TEST");
            r1 |= 560992257;
        }
        if ((557846530 & r4) == 557846530) {
            arrayList.add("HVAC_ON");
            r1 |= 557846530;
        }
        if ((557846531 & r4) == 557846531) {
            arrayList.add("HVAC_COMPRESSOR");
            r1 |= 557846531;
        }
        if ((557846532 & r4) == 557846532) {
            arrayList.add("HVAC_RECIRCULATION_MODE");
            r1 |= 557846532;
        }
        if ((557846533 & r4) == 557846533) {
            arrayList.add("HVAC_BLOWER_SPEED");
            r1 |= 557846533;
        }
        if ((557846534 & r4) == 557846534) {
            arrayList.add("HVAC_BLOWER_MODE");
            r1 |= 557846534;
        }
        if ((557846535 & r4) == 557846535) {
            arrayList.add("HVAC_AUTOMATIC_MODE");
            r1 |= 557846535;
        }
        if ((557846536 & r4) == 557846536) {
            arrayList.add("HVAC_DRVIVER_TEMP");
            r1 |= 557846536;
        }
        if ((557846537 & r4) == 557846537) {
            arrayList.add("HVAC_PASSENGER_TEMP");
            r1 |= 557846537;
        }
        if ((557846538 & r4) == 557846538) {
            arrayList.add("HVAC_DUAL");
            r1 |= 557846538;
        }
        if ((557846539 & r4) == 557846539) {
            arrayList.add("HVAC_SELF_TEST_ACTIVE");
            r1 |= 557846539;
        }
        if ((557846540 & r4) == 557846540) {
            arrayList.add("HVAC_SELF_TEST_RESULT");
            r1 |= 557846540;
        }
        if ((557846541 & r4) == 557846541) {
            arrayList.add("HVAC_MAX_FORNT_WINDOW_DEFROSTER");
            r1 |= 557846541;
        }
        if ((557846542 & r4) == 557846542) {
            arrayList.add("HVAC_BLOW_DELAY_OFF");
            r1 |= 557846542;
        }
        if ((557846543 & r4) == 557846543) {
            arrayList.add("HVAC_BLOW_ADVANCE_ON");
            r1 |= 557846543;
        }
        if ((557846544 & r4) == 557846544) {
            arrayList.add("HVAC_MODE_CUSTOM");
            r1 |= 557846544;
        }
        if ((557846545 & r4) == 557846545) {
            arrayList.add("HVAC_AUTO_DEFROST_ON");
            r1 |= 557846545;
        }
        if ((557846546 & r4) == 557846546) {
            arrayList.add("HVAC_PM25_AUTO_RUN");
            r1 |= 557846546;
        }
        if ((557846547 & r4) == 557846547) {
            arrayList.add("HVAC_FRAGRANCE_WELCOME_MODE");
            r1 |= 557846547;
        }
        if ((557846548 & r4) == 557846548) {
            arrayList.add("HVAC_REFRESH_FUNCTION");
            r1 |= 557846548;
        }
        if ((557846549 & r4) == 557846549) {
            arrayList.add("SEAT_HEAT_DRIVER");
            r1 |= 557846549;
        }
        if ((557846550 & r4) == 557846550) {
            arrayList.add("SEAT_HEAT_PASSENGER");
            r1 |= 557846550;
        }
        if ((557846551 & r4) == 557846551) {
            arrayList.add("SEAT_VENT_DRIVER");
            r1 |= 557846551;
        }
        if ((557846552 & r4) == 557846552) {
            arrayList.add("SEAT_VENT_PASSENGER");
            r1 |= 557846552;
        }
        if ((557846553 & r4) == 557846553) {
            arrayList.add("HVAC_ELECTRIC_CLIMATE_TEMP");
            r1 |= 557846553;
        }
        if ((557846554 & r4) == 557846554) {
            arrayList.add("HVAC_DISPLAY_MENU");
            r1 |= 557846554;
        }
        if ((557846555 & r4) == 557846555) {
            arrayList.add("HVAC_DRVIVER_TEMP_FAHRENHEIT");
            r1 |= 557846555;
        }
        if ((557846556 & r4) == 557846556) {
            arrayList.add("HVAC_PASSENGER_TEMP_FAHRENHEIT");
            r1 |= 557846556;
        }
        if ((557846557 & r4) == 557846557) {
            arrayList.add("HVAC_TEMPERATURE_UNIT");
            r1 |= 557846557;
        }
        if ((557846558 & r4) == 557846558) {
            arrayList.add("HVAC_FG_HEAT");
            r1 |= 557846558;
        }
        if ((557846559 & r4) == 557846559) {
            arrayList.add("HVAC_PANEL_KEY_VOICE");
            r1 |= 557846559;
        }
        if ((557846560 & r4) == 557846560) {
            arrayList.add("HVAC_AUTO_DEFROST_FORCE_OPEN");
            r1 |= 557846560;
        }
        if ((557846561 & r4) == 557846561) {
            arrayList.add("HVAC_AUTO_DEFROST_DISPLAY");
            r1 |= 557846561;
        }
        if ((557846562 & r4) == 557846562) {
            arrayList.add("HVAC_PM25_INCAR_STS");
            r1 |= 557846562;
        }
        if ((557846563 & r4) == 557846563) {
            arrayList.add("HVAC_PM25_INCAR_LEVEL");
            r1 |= 557846563;
        }
        if ((557846564 & r4) == 557846564) {
            arrayList.add("HVAC_PM25_INCAR");
            r1 |= 557846564;
        }
        if ((557846565 & r4) == 557846565) {
            arrayList.add("HVAC_PM25_EXT_STS");
            r1 |= 557846565;
        }
        if ((557846566 & r4) == 557846566) {
            arrayList.add("HVAC_PM25_OUTCAR_LEVEL");
            r1 |= 557846566;
        }
        if ((557846567 & r4) == 557846567) {
            arrayList.add("HVAC_PM25_EXT");
            r1 |= 557846567;
        }
        if ((557846568 & r4) == 557846568) {
            arrayList.add("HVAC_PM25_OVERPROOF_DISPLAY");
            r1 |= 557846568;
        }
        if ((557846569 & r4) == 557846569) {
            arrayList.add("HVAC_PM25_AUTO_RUN_DISPLAY");
            r1 |= 557846569;
        }
        if ((557846570 & r4) == 557846570) {
            arrayList.add("HVAC_FILTER_CHANGE_DISPLAY");
            r1 |= 557846570;
        }
        if ((557846571 & r4) == 557846571) {
            arrayList.add("HVAC_PM25_SWITCH");
            r1 |= 557846571;
        }
        if ((557846572 & r4) == 557846572) {
            arrayList.add("HVAC_ANION_SWITCH");
            r1 |= 557846572;
        }
        if ((557846573 & r4) == 557846573) {
            arrayList.add("HVAC_PM25_DISPLAY");
            r1 |= 557846573;
        }
        if ((557846574 & r4) == 557846574) {
            arrayList.add("HVAC_FRAGRANCE_DISPLAY");
            r1 |= 557846574;
        }
        if ((557846575 & r4) == 557846575) {
            arrayList.add("HVAC_FRAGRANCE_SWITCH");
            r1 |= 557846575;
        }
        if ((557846576 & r4) == 557846576) {
            arrayList.add("HVAC_FRAGRANCE_CONSISTENCE_LEVEL");
            r1 |= 557846576;
        }
        if ((557846577 & r4) == 557846577) {
            arrayList.add("HVAC_FRAGRANCE_POSITION");
            r1 |= 557846577;
        }
        if ((557846578 & r4) == 557846578) {
            arrayList.add("HVAC_FRAGRANCE_TYPE_POS1");
            r1 |= 557846578;
        }
        if ((557846579 & r4) == 557846579) {
            arrayList.add("HVAC_FRAGRANCE_TYPE_POS2");
            r1 |= 557846579;
        }
        if ((557846580 & r4) == 557846580) {
            arrayList.add("HVAC_FRAGRANCE_TYPE_POS3");
            r1 |= 557846580;
        }
        if ((557846581 & r4) == 557846581) {
            arrayList.add("HVAC_FRAGRANCE_SHORTAGE_WARNING");
            r1 |= 557846581;
        }
        if ((557846582 & r4) == 557846582) {
            arrayList.add("HVAC_BLOWER_SPEED_T1E");
            r1 |= 557846582;
        }
        if ((559943735 & r4) == 559943735) {
            arrayList.add("HVAC_DRIVER_TEMP_T1E");
            r1 |= 559943735;
        }
        if ((559943736 & r4) == 559943736) {
            arrayList.add("HVAC_PASSENGER_TEMP_T1E");
            r1 |= 559943736;
        }
        if ((557846585 & r4) == 557846585) {
            arrayList.add("HVAC_SEAT_HEAT_REAR_L");
            r1 |= 557846585;
        }
        if ((557846586 & r4) == 557846586) {
            arrayList.add("HVAC_SEAT_HEAT_REAR_R");
            r1 |= 557846586;
        }
        if ((557850624 & r4) == 557850624) {
            arrayList.add("KEY_STS");
            r1 |= 557850624;
        }
        if ((557850625 & r4) == 557850625) {
            arrayList.add("DIR_IND_RIGHT");
            r1 |= 557850625;
        }
        if ((557850626 & r4) == 557850626) {
            arrayList.add("DIR_IND_LEFT");
            r1 |= 557850626;
        }
        if ((559947779 & r4) == 559947779) {
            arrayList.add("VEHICLE_SPEED");
            r1 |= 559947779;
        }
        if ((559947780 & r4) == 559947780) {
            arrayList.add("STEERING_ANGLE");
            r1 |= 559947780;
        }
        if ((557850629 & r4) == 557850629) {
            arrayList.add("STEERING_ANGLE_VALID");
            r1 |= 557850629;
        }
        if ((557850630 & r4) == 557850630) {
            arrayList.add("GEAR_POSITION");
            r1 |= 557850630;
        }
        if ((557850631 & r4) == 557850631) {
            arrayList.add("LHF_RADAR_DISTANCE");
            r1 |= 557850631;
        }
        if ((557850632 & r4) == 557850632) {
            arrayList.add("LHMF_RADAR_DISTANCE");
            r1 |= 557850632;
        }
        if ((557850633 & r4) == 557850633) {
            arrayList.add("LHMR_RADAR_DISTANCE");
            r1 |= 557850633;
        }
        if ((557850634 & r4) == 557850634) {
            arrayList.add("LHR_RADAR_DISTANCE");
            r1 |= 557850634;
        }
        if ((557850635 & r4) == 557850635) {
            arrayList.add("RHF_RADAR_DISTANCE");
            r1 |= 557850635;
        }
        if ((557850636 & r4) == 557850636) {
            arrayList.add("RHMF_RADAR_DISTANCE");
            r1 |= 557850636;
        }
        if ((557850637 & r4) == 557850637) {
            arrayList.add("RHMR_RADAR_DISTANCE");
            r1 |= 557850637;
        }
        if ((557850638 & r4) == 557850638) {
            arrayList.add("RHR_RADAR_DISTANCE");
            r1 |= 557850638;
        }
        if ((557850639 & r4) == 557850639) {
            arrayList.add("AUDIO_BEEP_RATE");
            r1 |= 557850639;
        }
        if ((557850640 & r4) == 557850640) {
            arrayList.add("RADAR_DETECT_STS");
            r1 |= 557850640;
        }
        if ((557850641 & r4) == 557850641) {
            arrayList.add("RADAR_WORK_STS");
            r1 |= 557850641;
        }
        if ((557850642 & r4) == 557850642) {
            arrayList.add("DRIVER_DOOR_STS");
            r1 |= 557850642;
        }
        if ((557850643 & r4) == 557850643) {
            arrayList.add("PSG_DOOR_STS");
            r1 |= 557850643;
        }
        if ((557850644 & r4) == 557850644) {
            arrayList.add("LHR_DOOR_STS");
            r1 |= 557850644;
        }
        if ((557850645 & r4) == 557850645) {
            arrayList.add("RHR_DOOR_STS");
            r1 |= 557850645;
        }
        if ((557850646 & r4) == 557850646) {
            arrayList.add("TRUNK_STS");
            r1 |= 557850646;
        }
        if ((557850647 & r4) == 557850647) {
            arrayList.add("BCM_HOOD_STS");
            r1 |= 557850647;
        }
        if ((557850648 & r4) == 557850648) {
            arrayList.add("SRF_OPERATE_STS");
            r1 |= 557850648;
        }
        if ((557850649 & r4) == 557850649) {
            arrayList.add("RCTA_WARNING_LEFT");
            r1 |= 557850649;
        }
        if ((557850650 & r4) == 557850650) {
            arrayList.add("RCTA_WARNING_RIGHT");
            r1 |= 557850650;
        }
        if ((557850651 & r4) == 557850651) {
            arrayList.add("LHF_PULSE_COUNTER");
            r1 |= 557850651;
        }
        if ((557850652 & r4) == 557850652) {
            arrayList.add("LHR_PULSE_COUNTER");
            r1 |= 557850652;
        }
        if ((557850653 & r4) == 557850653) {
            arrayList.add("RHF_PULSE_COUNTER");
            r1 |= 557850653;
        }
        if ((557850654 & r4) == 557850654) {
            arrayList.add("RHR_PULSE_COUNTER");
            r1 |= 557850654;
        }
        if ((557850655 & r4) == 557850655) {
            arrayList.add("LHF_PULSE_COUNTER_FAIL_STS");
            r1 |= 557850655;
        }
        if ((557850656 & r4) == 557850656) {
            arrayList.add("LHR_PULSE_COUNTER_FAIL_STS");
            r1 |= 557850656;
        }
        if ((557850657 & r4) == 557850657) {
            arrayList.add("RHF_PULSE_COUNTER_FAIL_STS");
            r1 |= 557850657;
        }
        if ((557850658 & r4) == 557850658) {
            arrayList.add("RHR_PULSE_COUNTER_FAIL_STS");
            r1 |= 557850658;
        }
        if ((559947811 & r4) == 559947811) {
            arrayList.add("VEHICLE_SPEED_VSOSIG");
            r1 |= 559947811;
        }
        if ((557850660 & r4) == 557850660) {
            arrayList.add("VEHICLE_SPEED_VSOSIG_VALIDATION");
            r1 |= 557850660;
        }
        if ((557850661 & r4) == 557850661) {
            arrayList.add("ENGINE_SPEED");
            r1 |= 557850661;
        }
        if ((557850662 & r4) == 557850662) {
            arrayList.add("ODO_METRE_KM");
            r1 |= 557850662;
        }
        if ((557850663 & r4) == 557850663) {
            arrayList.add("VEHICLE_FUEL_LEVEL");
            r1 |= 557850663;
        }
        if ((557850664 & r4) == 557850664) {
            arrayList.add("RESIDUAL_ODO_METRE");
            r1 |= 557850664;
        }
        if ((557850665 & r4) == 557850665) {
            arrayList.add("HAND_BRAKE_SYSTEM_STATE");
            r1 |= 557850665;
        }
        if ((560996394 & r4) == 560996394) {
            arrayList.add("DIAG_TIHU_IHU_RES");
            r1 |= 560996394;
        }
        if ((559947819 & r4) == 559947819) {
            arrayList.add("OUTSIDE_TEMP_C");
            r1 |= 559947819;
        }
        if ((557850668 & r4) == 557850668) {
            arrayList.add("OUTSIDE_TEMP_F");
            r1 |= 557850668;
        }
        if ((559947821 & r4) == 559947821) {
            arrayList.add("LHF_TIRE_PRESSURE");
            r1 |= 559947821;
        }
        if ((559947822 & r4) == 559947822) {
            arrayList.add("RHF_TIRE_PRESSURE");
            r1 |= 559947822;
        }
        if ((559947823 & r4) == 559947823) {
            arrayList.add("LHR_TIRE_PRESSURE");
            r1 |= 559947823;
        }
        if ((559947824 & r4) == 559947824) {
            arrayList.add("RHR_TIRE_PRESSURE");
            r1 |= 559947824;
        }
        if ((557850673 & r4) == 557850673) {
            arrayList.add("CRUISE_STATE");
            r1 |= 557850673;
        }
        if ((557850674 & r4) == 557850674) {
            arrayList.add("CRUISE_SPEED");
            r1 |= 557850674;
        }
        if ((557850675 & r4) == 557850675) {
            arrayList.add("AIR_PRESSURE");
            r1 |= 557850675;
        }
        if ((557850676 & r4) == 557850676) {
            arrayList.add("RAIN_LEVEL");
            r1 |= 557850676;
        }
        if ((557850677 & r4) == 557850677) {
            arrayList.add("PASSENGER_SEAT_STATUS");
            r1 |= 557850677;
        }
        if ((557850678 & r4) == 557850678) {
            arrayList.add("ETC_CARD_CONFIGURATION");
            r1 |= 557850678;
        }
        if ((557850679 & r4) == 557850679) {
            arrayList.add("IGNITION_DISTANCE");
            r1 |= 557850679;
        }
        if ((557850680 & r4) == 557850680) {
            arrayList.add("LOW_FUEL_WARNING");
            r1 |= 557850680;
        }
        if ((557850681 & r4) == 557850681) {
            arrayList.add("WARNING_LIGHT");
            r1 |= 557850681;
        }
        if ((557850682 & r4) == 557850682) {
            arrayList.add("CPAA_DIAG_DATA");
            r1 |= 557850682;
        }
        if ((557850683 & r4) == 557850683) {
            arrayList.add("DAY_NIGHT_MODE_LIGHT");
            r1 |= 557850683;
        }
        if ((557850684 & r4) == 557850684) {
            arrayList.add("DAY_NIGHT_MODE_LIGHT_CAN");
            r1 |= 557850684;
        }
        if ((557850685 & r4) == 557850685) {
            arrayList.add("DAY_NIGHT_MODE_LIGHT_SENSOR");
            r1 |= 557850685;
        }
        if ((557850686 & r4) == 557850686) {
            arrayList.add("SCREEN_OVER_TEMPERATURE");
            r1 |= 557850686;
        }
        if ((557850687 & r4) == 557850687) {
            arrayList.add("GEAR_POSITION_MANUAL_R_STS");
            r1 |= 557850687;
        }
        if ((557850688 & r4) == 557850688) {
            arrayList.add("BCM_ARMING_STS");
            r1 |= 557850688;
        }
        if ((557850689 & r4) == 557850689) {
            arrayList.add("ENGINE_STS");
            r1 |= 557850689;
        }
        if ((557850690 & r4) == 557850690) {
            arrayList.add("IBS_SOC");
            r1 |= 557850690;
        }
        if ((559947843 & r4) == 559947843) {
            arrayList.add("IBS_VOLTAGE");
            r1 |= 559947843;
        }
        if ((557850692 & r4) == 557850692) {
            arrayList.add("OBD_DIAGNOSIS_REQIND");
            r1 |= 557850692;
        }
        if ((560996421 & r4) == 560996421) {
            arrayList.add("DVR_INTERACTION");
            r1 |= 560996421;
        }
        if ((557850694 & r4) == 557850694) {
            arrayList.add("IBS_SOH");
            r1 |= 557850694;
        }
        if ((557850695 & r4) == 557850695) {
            arrayList.add("MCU_BOOT_MODE");
            r1 |= MCU_BOOT_MODE;
        }
        if ((557850696 & r4) == 557850696) {
            arrayList.add("CTP_KEY_VOICE_REMIND");
            r1 |= 557850696;
        }
        if ((561000448 & r4) == 561000448) {
            arrayList.add("IPC_DISPLAY_INFO");
            r1 |= 561000448;
        }
        if ((557854721 & r4) == 557854721) {
            arrayList.add("AUTO_LOCK_STS");
            r1 |= 557854721;
        }
        if ((557854722 & r4) == 557854722) {
            arrayList.add("AUTO_FOLD_STS");
            r1 |= 557854722;
        }
        if ((557854723 & r4) == 557854723) {
            arrayList.add("REMOTE_LOCK_FEEDBACK_STS");
            r1 |= 557854723;
        }
        if ((557854724 & r4) == 557854724) {
            arrayList.add("LANGUAGE_SET");
            r1 |= 557854724;
        }
        if ((557854725 & r4) == 557854725) {
            arrayList.add("PLG_POSITION_SET");
            r1 |= 557854725;
        }
        if ((557854726 & r4) == 557854726) {
            arrayList.add("CWC_WORKING_STS");
            r1 |= 557854726;
        }
        if ((557854727 & r4) == 557854727) {
            arrayList.add("CWC_PHONE_FORGOTTEN_FUN_STS");
            r1 |= 557854727;
        }
        if ((557854728 & r4) == 557854728) {
            arrayList.add("AEB_SWT_SET");
            r1 |= 557854728;
        }
        if ((557854729 & r4) == 557854729) {
            arrayList.add("FCW_SWT_SET");
            r1 |= 557854729;
        }
        if ((557854730 & r4) == 557854730) {
            arrayList.add("FCW_SNVTY_SET");
            r1 |= 557854730;
        }
        if ((557854731 & r4) == 557854731) {
            arrayList.add("TJAICAEXIT_TEXT_INFO_SWT_SET");
            r1 |= 557854731;
        }
        if ((557854732 & r4) == 557854732) {
            arrayList.add("OVER_SPEED_VALUE");
            r1 |= 557854732;
        }
        if ((557854733 & r4) == 557854733) {
            arrayList.add("FCM_ELK");
            r1 |= 557854733;
        }
        if ((557854734 & r4) == 557854734) {
            arrayList.add("LDW_SWT_SET");
            r1 |= 557854734;
        }
        if ((557854735 & r4) == 557854735) {
            arrayList.add("WARN_MODE_SWT_SET");
            r1 |= 557854735;
        }
        if ((557854736 & r4) == 557854736) {
            arrayList.add("LDP_SWT_SET");
            r1 |= 557854736;
        }
        if ((557854737 & r4) == 557854737) {
            arrayList.add("LDW_LDP_SNVTY_SET");
            r1 |= 557854737;
        }
        if ((557854738 & r4) == 557854738) {
            arrayList.add("HDC_SET");
            r1 |= 557854738;
        }
        if ((557854739 & r4) == 557854739) {
            arrayList.add("ESP_FUNCTION");
            r1 |= 557854739;
        }
        if ((557854740 & r4) == 557854740) {
            arrayList.add("DAI_SWT_SET");
            r1 |= 557854740;
        }
        if ((557854741 & r4) == 557854741) {
            arrayList.add("IES_SWT_SET");
            r1 |= 557854741;
        }
        if ((557854742 & r4) == 557854742) {
            arrayList.add("EPS_ASSOCI_DRIVER_MODE");
            r1 |= 557854742;
        }
        if ((557854743 & r4) == 557854743) {
            arrayList.add("EPS_ASSISTANCE_STYLE");
            r1 |= 557854743;
        }
        if ((557854744 & r4) == 557854744) {
            arrayList.add("RCTB_SWT_SET");
            r1 |= 557854744;
        }
        if ((557854745 & r4) == 557854745) {
            arrayList.add("DVD_SET_RCW");
            r1 |= 557854745;
        }
        if ((557854746 & r4) == 557854746) {
            arrayList.add("BSD_SWITCH_STS");
            r1 |= 557854746;
        }
        if ((557854747 & r4) == 557854747) {
            arrayList.add("SET_DOW");
            r1 |= 557854747;
        }
        if ((557854748 & r4) == 557854748) {
            arrayList.add("SOURCE_STATION_MODE");
            r1 |= 557854748;
        }
        if ((557854749 & r4) == 557854749) {
            arrayList.add("RADIO_FREQUANCE_MODE");
            r1 |= 557854749;
        }
        if ((559951902 & r4) == 559951902) {
            arrayList.add("FM_RADIO_FREQUANCE_VALUE");
            r1 |= 559951902;
        }
        if ((557854751 & r4) == 557854751) {
            arrayList.add("AM_RADIO_FREQUANCE_VALUE");
            r1 |= 557854751;
        }
        if ((557854752 & r4) == 557854752) {
            arrayList.add("RADIO_RESEARCH_STS");
            r1 |= 557854752;
        }
        if ((557854753 & r4) == 557854753) {
            arrayList.add("WELCOME_LIGHT_POLLING");
            r1 |= 557854753;
        }
        if ((557854754 & r4) == 557854754) {
            arrayList.add("PEPS_INTELLIGENT_OPEN");
            r1 |= 557854754;
        }
        if ((557854755 & r4) == 557854755) {
            arrayList.add("PEPS_POLLING");
            r1 |= 557854755;
        }
        if ((557854756 & r4) == 557854756) {
            arrayList.add("LAMP_DAYTIME_RUNNING_LIGHT_MODE");
            r1 |= 557854756;
        }
        if ((557854757 & r4) == 557854757) {
            arrayList.add("LAMP_HIGH_BEAM_ASSIST");
            r1 |= 557854757;
        }
        if ((557854758 & r4) == 557854758) {
            arrayList.add("HEAD_LAMP_HEIGHT");
            r1 |= 557854758;
        }
        if ((557854759 & r4) == 557854759) {
            arrayList.add("HEAD_LAMP_DELAY_LIGHT");
            r1 |= 557854759;
        }
        if ((557854760 & r4) == 557854760) {
            arrayList.add("AMBLIGHT_ON");
            r1 |= 557854760;
        }
        if ((557854761 & r4) == 557854761) {
            arrayList.add("AMBLIGHT_ASSOCIATED_DRIVER_MODE");
            r1 |= 557854761;
        }
        if ((557854762 & r4) == 557854762) {
            arrayList.add("AMBLIGHT_BRIGHTNESS");
            r1 |= 557854762;
        }
        if ((557854763 & r4) == 557854763) {
            arrayList.add("AMBLIGHT_COLOR");
            r1 |= 557854763;
        }
        if ((557854764 & r4) == 557854764) {
            arrayList.add("ICM_BRIGHTNESS_LEVEL");
            r1 |= 557854764;
        }
        if ((561000493 & r4) == 561000493) {
            arrayList.add("IPC_DISPLAY_INFO_REPLY");
            r1 |= 561000493;
        }
        if ((557854766 & r4) == 557854766) {
            arrayList.add("IPC_YEAR");
            r1 |= 557854766;
        }
        if ((557854767 & r4) == 557854767) {
            arrayList.add("IPC_MONTH");
            r1 |= 557854767;
        }
        if ((557854768 & r4) == 557854768) {
            arrayList.add("IPC_DAY");
            r1 |= 557854768;
        }
        if ((557854769 & r4) == 557854769) {
            arrayList.add("IPC_HOUR");
            r1 |= 557854769;
        }
        if ((557854770 & r4) == 557854770) {
            arrayList.add("IPC_MIN");
            r1 |= 557854770;
        }
        if ((557854771 & r4) == 557854771) {
            arrayList.add("IPC_SEC");
            r1 |= 557854771;
        }
        if ((554709044 & r4) == 554709044) {
            arrayList.add("IPC_TIME");
            r1 |= 554709044;
        }
        if ((557854773 & r4) == 557854773) {
            arrayList.add("ISS_SWITCH");
            r1 |= 557854773;
        }
        if ((557854774 & r4) == 557854774) {
            arrayList.add("CWC_CHARGING_STS");
            r1 |= 557854774;
        }
        if ((557854775 & r4) == 557854775) {
            arrayList.add("SCF_SWT_SET");
            r1 |= 557854775;
        }
        if ((557854776 & r4) == 557854776) {
            arrayList.add("TSI_SWT_SET");
            r1 |= 557854776;
        }
        if ((557854777 & r4) == 557854777) {
            arrayList.add("TLI_SWT_SET");
            r1 |= 557854777;
        }
        if ((557854778 & r4) == 557854778) {
            arrayList.add("DRIVE_MODE_INTERNAL");
            r1 |= 557854778;
        }
        if ((557854779 & r4) == 557854779) {
            arrayList.add("IPC_SET_THEME_TYPE");
            r1 |= 557854779;
        }
        if ((557854780 & r4) == 557854780) {
            arrayList.add("CWC_PHONE_FORGOTTEN_MSG");
            r1 |= 557854780;
        }
        if ((557854781 & r4) == 557854781) {
            arrayList.add("DVD_TRUNK_CMD");
            r1 |= 557854781;
        }
        if ((557854782 & r4) == 557854782) {
            arrayList.add("IHU_SRF_CMD");
            r1 |= 557854782;
        }
        if ((557854783 & r4) == 557854783) {
            arrayList.add("IHU_WINDOW_CMD");
            r1 |= 557854783;
        }
        if ((557854784 & r4) == 557854784) {
            arrayList.add("AMBLGHT_ASSOCIATED_WITH_MUSIC_MODE");
            r1 |= 557854784;
        }
        if ((557854785 & r4) == 557854785) {
            arrayList.add("CTP_DRIVE_MODE_SET");
            r1 |= 557854785;
        }
        if ((557854786 & r4) == 557854786) {
            arrayList.add("IHU_WINDOW_MSG_FD");
            r1 |= 557854786;
        }
        if ((557854787 & r4) == 557854787) {
            arrayList.add("IHU_WINDOW_MSG_FP");
            r1 |= 557854787;
        }
        if ((557854788 & r4) == 557854788) {
            arrayList.add("IHU_WINDOW_MSG_RL");
            r1 |= 557854788;
        }
        if ((557854789 & r4) == 557854789) {
            arrayList.add("IHU_WINDOW_MSG_RR");
            r1 |= 557854789;
        }
        if ((557854790 & r4) == 557854790) {
            arrayList.add("IPC_DISPLAY_MODE_ON");
            r1 |= 557854790;
        }
        if ((557854791 & r4) == 557854791) {
            arrayList.add("IPC_TIME_FORMAT_SET");
            r1 |= 557854791;
        }
        if ((557854792 & r4) == 557854792) {
            arrayList.add("FRNT_RADAR_SWT");
            r1 |= 557854792;
        }
        if ((557854793 & r4) == 557854793) {
            arrayList.add("CTP_DRIVE_MODE_SET_BCM");
            r1 |= 557854793;
        }
        if ((557854800 & r4) == 557854800) {
            arrayList.add("OBD_REQ_BROADCAST_7CF");
            r1 |= 557854800;
        }
        if ((557854801 & r4) == 557854801) {
            arrayList.add("OBD_REQ_OTA");
            r1 |= 557854801;
        }
        if ((557854802 & r4) == 557854802) {
            arrayList.add("SET_BLTKEY_STS");
            r1 |= 557854802;
        }
        if ((557854803 & r4) == 557854803) {
            arrayList.add("SET_REV_EXTMIR");
            r1 |= 557854803;
        }
        if ((557854804 & r4) == 557854804) {
            arrayList.add("FATIGURE_DRIVING_TIME");
            r1 |= 557854804;
        }
        if ((557854805 & r4) == 557854805) {
            arrayList.add("SLA_SWT_SET");
            r1 |= 557854805;
        }
        if ((557854806 & r4) == 557854806) {
            arrayList.add("AMBLGHT_MUSIC_SHOW");
            r1 |= 557854806;
        }
        if ((557854807 & r4) == 557854807) {
            arrayList.add("AMBLIGHT_COLOR_7");
            r1 |= 557854807;
        }
        if ((557854808 & r4) == 557854808) {
            arrayList.add("HMA_ON_OFF");
            r1 |= 557854808;
        }
        if ((557854809 & r4) == 557854809) {
            arrayList.add("SET_DOW_2");
            r1 |= 557854809;
        }
        if ((557854810 & r4) == 557854810) {
            arrayList.add("SET_RCW");
            r1 |= 557854810;
        }
        if ((557854811 & r4) == 557854811) {
            arrayList.add("LDW_LKA_SENSITIVITY");
            r1 |= 557854811;
        }
        if ((557854812 & r4) == 557854812) {
            arrayList.add("SLA_ON_OFF");
            r1 |= 557854812;
        }
        if ((557854813 & r4) == 557854813) {
            arrayList.add("GPS_YEAR");
            r1 |= 557854813;
        }
        if ((557854815 & r4) == 557854815) {
            arrayList.add("GPS_MONTH");
            r1 |= 557854815;
        }
        if ((557854816 & r4) == 557854816) {
            arrayList.add("GPS_DAY");
            r1 |= 557854816;
        }
        if ((557854817 & r4) == 557854817) {
            arrayList.add("GPS_HOUR");
            r1 |= 557854817;
        }
        if ((557854818 & r4) == 557854818) {
            arrayList.add("GPS_MIN");
            r1 |= 557854818;
        }
        if ((557854819 & r4) == 557854819) {
            arrayList.add("GPS_SEC");
            r1 |= 557854819;
        }
        if ((557854820 & r4) == 557854820) {
            arrayList.add("FATIGURE_DRIVING_WARNING");
            r1 |= 557854820;
        }
        if ((557854821 & r4) == 557854821) {
            arrayList.add("DRIVER_UNLOCK_ONLY");
            r1 |= 557854821;
        }
        if ((557854822 & r4) == 557854822) {
            arrayList.add("SCU_RELATE_FACEID");
            r1 |= 557854822;
        }
        if ((557854823 & r4) == 557854823) {
            arrayList.add("SEAT_EXTMIR_POS");
            r1 |= 557854823;
        }
        if ((557854824 & r4) == 557854824) {
            arrayList.add("EASY_ENTRY_STS");
            r1 |= 557854824;
        }
        if ((557854825 & r4) == 557854825) {
            arrayList.add("TJA_ICA_STS");
            r1 |= 557854825;
        }
        if ((557854826 & r4) == 557854826) {
            arrayList.add("ALRM_VOL_CTRL");
            r1 |= 557854826;
        }
        if ((557854827 & r4) == 557854827) {
            arrayList.add("BKLT_BRI_ADJ");
            r1 |= 557854827;
        }
        if ((557854828 & r4) == 557854828) {
            arrayList.add("SUNSHADE_CMD");
            r1 |= 557854828;
        }
        if ((557854829 & r4) == 557854829) {
            arrayList.add("DMS_ALRM_SWT");
            r1 |= 557854829;
        }
        if ((557854832 & r4) == 557854832) {
            arrayList.add("TIME_GAP_LAST_SET");
            r1 |= 557854832;
        }
        if ((557854833 & r4) == 557854833) {
            arrayList.add("TIME_GAP_SET");
            r1 |= 557854833;
        }
        if ((557854834 & r4) == 557854834) {
            arrayList.add("AEB_STS");
            r1 |= 557854834;
        }
        if ((557854835 & r4) == 557854835) {
            arrayList.add("DISTANCE_WARNING_STS");
            r1 |= 557854835;
        }
        if ((557854836 & r4) == 557854836) {
            arrayList.add("AUDIBLE_ALARM");
            r1 |= 557854836;
        }
        if ((557854837 & r4) == 557854837) {
            arrayList.add("SELECT_THE_SEAT");
            r1 |= 557854837;
        }
        if ((557854838 & r4) == 557854838) {
            arrayList.add("DVR_SNAP_SHOT");
            r1 |= 557854838;
        }
        if ((557854839 & r4) == 557854839) {
            arrayList.add("NAV_SPEED_LIMIT_STS");
            r1 |= 557854839;
        }
        if ((557854840 & r4) == 557854840) {
            arrayList.add("NAV_SPEED_LIMIT");
            r1 |= 557854840;
        }
        if ((557854841 & r4) == 557854841) {
            arrayList.add("NAV_SPEED_LIMIT_UNITS");
            r1 |= 557854841;
        }
        if ((557854842 & r4) == 557854842) {
            arrayList.add("NAV_ROAD_TYPE");
            r1 |= 557854842;
        }
        if ((561013248 & r4) == 561013248) {
            arrayList.add("CAL_EXTERIOR_COLOR");
            r1 |= 561013248;
        }
        if ((554721793 & r4) == 554721793) {
            arrayList.add("CAL_Vehicle_VIN");
            r1 |= 554721793;
        }
        if ((561013250 & r4) == 561013250) {
            arrayList.add("CAL_DIAGNOSTIC_CONFIG_7010");
            r1 |= 561013250;
        }
        if ((561013251 & r4) == 561013251) {
            arrayList.add("CAL_DIAGNOSTIC_CONFIG_7019");
            r1 |= 561013251;
        }
        if ((561013252 & r4) == 561013252) {
            arrayList.add("CAL_DIAGNOSTIC_CONFIG_701A");
            r1 |= 561013252;
        }
        if ((561013253 & r4) == 561013253) {
            arrayList.add("CAL_DIAGNOSTIC_CONFIG_701B");
            r1 |= 561013253;
        }
        if ((554721798 & r4) == 554721798) {
            arrayList.add("CAL_ECU_SW_NUMBER");
            r1 |= 554721798;
        }
        if ((554721799 & r4) == 554721799) {
            arrayList.add("CAL_ECU_HW_NUMBER");
            r1 |= 554721799;
        }
        if ((554721800 & r4) == 554721800) {
            arrayList.add("CAL_ECU_SERIAL_NUMBER");
            r1 |= 554721800;
        }
        if ((554721801 & r4) == 554721801) {
            arrayList.add("CAL_VEHICLE_PART_NUMBER");
            r1 |= 554721801;
        }
        if ((554721802 & r4) == 554721802) {
            arrayList.add("CAL_UUID");
            r1 |= 554721802;
        }
        if ((554721803 & r4) == 554721803) {
            arrayList.add("CAL_VIN");
            r1 |= 554721803;
        }
        if ((554721804 & r4) == 554721804) {
            arrayList.add("CAL_SYSTEM_SUPPLIER_IDENTIFIER");
            r1 |= 554721804;
        }
        if ((561013261 & r4) == 561013261) {
            arrayList.add("CAL_SC");
            r1 |= 561013261;
        }
        if ((561013262 & r4) == 561013262) {
            arrayList.add("CAL_SK");
            r1 |= 561013262;
        }
        if ((561013263 & r4) == 561013263) {
            arrayList.add("CAL_DIAGNOSTIC_CONFIG_7038");
            r1 |= 561013263;
        }
        if ((554722560 & r4) == 554722560) {
            arrayList.add("SCREEN_TFT_SIZE");
            r1 |= 554722560;
        }
        if ((554722561 & r4) == 554722561) {
            arrayList.add("SCREEN_TFT_TYPE");
            r1 |= 554722561;
        }
        if ((554722563 & r4) == 554722563) {
            arrayList.add("SCREEN_HW_VERSION");
            r1 |= 554722563;
        }
        if ((554722564 & r4) == 554722564) {
            arrayList.add("SCREEN_TP_VERSION");
            r1 |= 554722564;
        }
        if ((554722565 & r4) == 554722565) {
            arrayList.add("SCREEN_SW_VERSION");
            r1 |= 554722565;
        }
        if ((554722566 & r4) == 554722566) {
            arrayList.add("SCREEN_SUPPLIER_CODE");
            r1 |= 554722566;
        }
        if ((554722567 & r4) == 554722567) {
            arrayList.add("SCREEN_SUPPLIER_INFO");
            r1 |= 554722567;
        }
        if ((554722568 & r4) == 554722568) {
            arrayList.add("SCREEN_PART_NUM");
            r1 |= SCREEN_PART_NUM;
        }
        if ((292581377 & r4) == 292581377) {
            arrayList.add("PMS_PWR_MODE");
            r1 |= PMS_PWR_MODE;
        }
        if ((289435650 & r4) == 289435650) {
            arrayList.add("PMS_BOOT_REASON");
            r1 |= PMS_BOOT_REASON;
        }
        if ((289435651 & r4) == 289435651) {
            arrayList.add("PMS_SET_EVENTS");
            r1 |= PMS_SET_EVENTS;
        }
        if ((289501188 & r4) == 289501188) {
            arrayList.add("PMS_SYSTEM_OFF");
            r1 |= PMS_SYSTEM_OFF;
        }
        if ((289435653 & r4) == 289435653) {
            arrayList.add("PMS_SYSTEM_OFF_WAIT");
            r1 |= PMS_SYSTEM_OFF_WAIT;
        }
        if ((289435654 & r4) == 289435654) {
            arrayList.add("PMS_SYSTEM_ON");
            r1 |= PMS_SYSTEM_ON;
        }
        if ((289435655 & r4) == 289435655) {
            arrayList.add("PMS_SYSTEM_POWER_STATE");
            r1 |= PMS_SYSTEM_POWER_STATE;
        }
        if ((289435656 & r4) == 289435656) {
            arrayList.add("PMS_SYSTEM_RESTART");
            r1 |= PMS_SYSTEM_RESTART;
        }
        if ((289435657 & r4) == 289435657) {
            arrayList.add("PMS_SYSTEM_SHUTDOWN_NOW");
            r1 |= PMS_SYSTEM_SHUTDOWN_NOW;
        }
        if ((289435658 & r4) == 289435658) {
            arrayList.add("PMS_SYSTEM_COMM_READY");
            r1 |= PMS_SYSTEM_COMM_READY;
        }
        if ((289435659 & r4) == 289435659) {
            arrayList.add("PMS_SYSTEM_TEMPRUN_ENDING");
            r1 |= PMS_SYSTEM_TEMPRUN_ENDING;
        }
        if ((289435660 & r4) == 289435660) {
            arrayList.add("PMS_SYSTEM_RE_TEMPRUN_TIMEOUT");
            r1 |= PMS_SYSTEM_RE_TEMPRUN_TIMEOUT;
        }
        if ((289435661 & r4) == 289435661) {
            arrayList.add("PMS_SYSTEM_TIME_OF_TEMPRUN");
            r1 |= PMS_SYSTEM_TIME_OF_TEMPRUN;
        }
        if ((289435662 & r4) == 289435662) {
            arrayList.add("PMS_SYSTEM_DAY_NIGHT_MODE");
            r1 |= PMS_SYSTEM_DAY_NIGHT_MODE;
        }
        if ((289435663 & r4) == 289435663) {
            arrayList.add("PMS_INFO_HEART_BEAT");
            r1 |= PMS_INFO_HEART_BEAT;
        }
        if ((292581392 & r4) == 292581392) {
            arrayList.add("PMS_MCU_VERSION");
            r1 |= PMS_MCU_VERSION;
        }
        if ((289435665 & r4) == 289435665) {
            arrayList.add("PMS_INFO_SOC_EVENT");
            r1 |= PMS_INFO_SOC_EVENT;
        }
        if ((289435666 & r4) == 289435666) {
            arrayList.add("PMS_PRO_MODE_EXIT");
            r1 |= PMS_PRO_MODE_EXIT;
        }
        if ((289435667 & r4) == 289435667) {
            arrayList.add("PMS_MCU_FACTORY_RESET");
            r1 |= PMS_MCU_FACTORY_RESET;
        }
        if ((289435668 & r4) == 289435668) {
            arrayList.add("PMS_VOLTAGE_INFO_QUERY");
            r1 |= PMS_VOLTAGE_INFO_QUERY;
        }
        if ((561008641 & r4) == 561008641) {
            arrayList.add("EOL_PROPID_GETSOCSWVERSION");
            r1 |= 561008641;
        }
        if ((561009151 & r4) == 561009151) {
            arrayList.add("EOL_TEST_END");
            r1 |= 561009151;
        }
        if ((561008642 & r4) == 561008642) {
            arrayList.add("EOL_GET_SYSTEM_INITIAL_STATUS");
            r1 |= 561008642;
        }
        if ((561008643 & r4) == 561008643) {
            arrayList.add("EOL_SET_POWER_BUTTON_OFF");
            r1 |= 561008643;
        }
        if ((561008644 & r4) == 561008644) {
            arrayList.add("EOL_SET_EOL_TEST_MODE_ON_OFF");
            r1 |= 561008644;
        }
        if ((561008645 & r4) == 561008645) {
            arrayList.add("EOL_GET_SOCSW_VERSION");
            r1 |= 561008645;
        }
        if ((561008646 & r4) == 561008646) {
            arrayList.add("EOL_GET_MCUSW_VERSION");
            r1 |= 561008646;
        }
        if ((561008647 & r4) == 561008647) {
            arrayList.add("EOL_GET_BATTERY_DATA");
            r1 |= 561008647;
        }
        if ((561008648 & r4) == 561008648) {
            arrayList.add("EOL_CLEAR_DIAGNOSTIC_DTC_INFORMATION");
            r1 |= 561008648;
        }
        if ((561008649 & r4) == 561008649) {
            arrayList.add("EOL_READ_DIAGNOSTIC_DTC_NUMBER");
            r1 |= 561008649;
        }
        if ((561008650 & r4) == 561008650) {
            arrayList.add("EOL_SET_FACTORY_REST");
            r1 |= 561008650;
        }
        if ((561008651 & r4) == 561008651) {
            arrayList.add("EOL_GET_ACC_IGN_STATUS");
            r1 |= 561008651;
        }
        if ((561008652 & r4) == 561008652) {
            arrayList.add("EOL_GET_ILL_STATUS");
            r1 |= 561008652;
        }
        if ((561008653 & r4) == 561008653) {
            arrayList.add("EOL_GET_MUTE_SIGNAL_INPUT_STATUS");
            r1 |= 561008653;
        }
        if ((561008654 & r4) == 561008654) {
            arrayList.add("EOL_GET_RESCUE_CALL_TEST");
            r1 |= 561008654;
        }
        if ((561008655 & r4) == 561008655) {
            arrayList.add("EOL_GET_RESCUE_CALL_STATUS");
            r1 |= 561008655;
        }
        if ((561008656 & r4) == 561008656) {
            arrayList.add("EOL_GET_QD_LINK_STATUS");
            r1 |= 561008656;
        }
        if ((561008657 & r4) == 561008657) {
            arrayList.add("EOL_ECU_PART_NUMBER");
            r1 |= 561008657;
        }
        if ((561008658 & r4) == 561008658) {
            arrayList.add("EOL_LOGISTIC_SW_PART_NUMBER");
            r1 |= 561008658;
        }
        if ((561008659 & r4) == 561008659) {
            arrayList.add("EOL_HARDWARE_VERSION_NUMBER");
            r1 |= 561008659;
        }
        if ((561008660 & r4) == 561008660) {
            arrayList.add("EOL_SOFTWARE_VERSION_NUMBER");
            r1 |= 561008660;
        }
        if ((561008661 & r4) == 561008661) {
            arrayList.add("EOL_ECU_SERIAL_NUMBER");
            r1 |= 561008661;
        }
        if ((561008662 & r4) == 561008662) {
            arrayList.add("EOL_UUID");
            r1 |= 561008662;
        }
        if ((561008663 & r4) == 561008663) {
            arrayList.add("EOL_TUNER_CURRENT_STATUS");
            r1 |= 561008663;
        }
        if ((561008664 & r4) == 561008664) {
            arrayList.add("EOL_TUNER_BAND");
            r1 |= 561008664;
        }
        if ((561008665 & r4) == 561008665) {
            arrayList.add("EOL_TUNER_FREQUENCY");
            r1 |= 561008665;
        }
        if ((561008666 & r4) == 561008666) {
            arrayList.add("EOL_TUNER_FAVORITE");
            r1 |= 561008666;
        }
        if ((561008667 & r4) == 561008667) {
            arrayList.add("EOL_TUNER_PRESET");
            r1 |= 561008667;
        }
        if ((561008668 & r4) == 561008668) {
            arrayList.add("EOL_TUNER_SEEK");
            r1 |= 561008668;
        }
        if ((561008669 & r4) == 561008669) {
            arrayList.add("EOL_TUNER_AUTO_STORE");
            r1 |= 561008669;
        }
        if ((561008670 & r4) == 561008670) {
            arrayList.add("EOL_TUNER_AUTO_SCAN_UP");
            r1 |= 561008670;
        }
        if ((561008671 & r4) == 561008671) {
            arrayList.add("EOL_TUNER_UPDATE_STATION_LIST");
            r1 |= 561008671;
        }
        if ((561008672 & r4) == 561008672) {
            arrayList.add("EOL_TUNER_SIGNAL_STRENGTH");
            r1 |= 561008672;
        }
        if ((561008673 & r4) == 561008673) {
            arrayList.add("EOL_BLUETOOTH_TEST_MODE_ON_OFF");
            r1 |= 561008673;
        }
        if ((561008674 & r4) == 561008674) {
            arrayList.add("EOL_GET_BLUETOOTH_TEST_STATUS");
            r1 |= 561008674;
        }
        if ((561008675 & r4) == 561008675) {
            arrayList.add("EOL_WRITE_BLUETOOTH_ADDRESS");
            r1 |= 561008675;
        }
        if ((561008676 & r4) == 561008676) {
            arrayList.add("EOL_READ_BT_MODULE_VERSION");
            r1 |= 561008676;
        }
        if ((561008677 & r4) == 561008677) {
            arrayList.add("EOL_SET_BT_PAIRING_ON_OFF");
            r1 |= 561008677;
        }
        if ((561008678 & r4) == 561008678) {
            arrayList.add("EOL_GET_BT_PAIRING_MODE");
            r1 |= 561008678;
        }
        if ((561008679 & r4) == 561008679) {
            arrayList.add("EOL_SET_BT_PAIRING_TO_SPECIFY_DEVICE");
            r1 |= 561008679;
        }
        if ((561008680 & r4) == 561008680) {
            arrayList.add("EOL_GET_BT_PAIRING_STATUS");
            r1 |= 561008680;
        }
        if ((561008681 & r4) == 561008681) {
            arrayList.add("EOL_SET_BT_IN_MUSIC_MODE");
            r1 |= 561008681;
        }
        if ((561008682 & r4) == 561008682) {
            arrayList.add("EOL_GET_BT_MUSIC_MODE_STATUS");
            r1 |= 561008682;
        }
        if ((561008683 & r4) == 561008683) {
            arrayList.add("EOL_SET_BT_AUDIO_SKIP_TRACK");
            r1 |= 561008683;
        }
        if ((561008684 & r4) == 561008684) {
            arrayList.add("EOL_SET_BT_AUDIO_PLAY_PAUSE");
            r1 |= 561008684;
        }
        if ((561008685 & r4) == 561008685) {
            arrayList.add("EOL_SET_BT_AUDIO_PLAY_MODE");
            r1 |= 561008685;
        }
        if ((561008686 & r4) == 561008686) {
            arrayList.add("EOL_GET_WHETHER_CALL_COMMING_IN");
            r1 |= 561008686;
        }
        if ((561008687 & r4) == 561008687) {
            arrayList.add("EOL_SET_BT_PHONE_ANSWER_REJECT");
            r1 |= 561008687;
        }
        if ((561008688 & r4) == 561008688) {
            arrayList.add("EOL_GET_BT_WHETHER_ON_PHONE");
            r1 |= 561008688;
        }
        if ((561008689 & r4) == 561008689) {
            arrayList.add("EOL_SET_BT_DISCONNECT_ALL_CONNECTIONS");
            r1 |= 561008689;
        }
        if ((561008690 & r4) == 561008690) {
            arrayList.add("EOL_CLEAR_BT_PAIRED_LIST");
            r1 |= 561008690;
        }
        if ((561008691 & r4) == 561008691) {
            arrayList.add("EOL_SET_BT_MODULE_ON_OFF");
            r1 |= 561008691;
        }
        if ((561008692 & r4) == 561008692) {
            arrayList.add("EOL_GET_BT_MODULE_STATUS");
            r1 |= 561008692;
        }
        if ((561008693 & r4) == 561008693) {
            arrayList.add("EOL_GET_AUDIO_SOURCE");
            r1 |= 561008693;
        }
        if ((561008694 & r4) == 561008694) {
            arrayList.add("EOL_SET_AUDIO_SOURCE");
            r1 |= 561008694;
        }
        if ((561008695 & r4) == 561008695) {
            arrayList.add("EOL_GET_VOLUME_LEVEL");
            r1 |= 561008695;
        }
        if ((561008696 & r4) == 561008696) {
            arrayList.add("EOL_SET_VOLUME_LEVEL");
            r1 |= 561008696;
        }
        if ((561008697 & r4) == 561008697) {
            arrayList.add("EOL_GET_FADE_LEVEL");
            r1 |= 561008697;
        }
        if ((561008698 & r4) == 561008698) {
            arrayList.add("EOL_SET_FADE_LEVEL");
            r1 |= 561008698;
        }
        if ((561008699 & r4) == 561008699) {
            arrayList.add("EOL_GET_BALANCE_LEVEL");
            r1 |= 561008699;
        }
        if ((561008700 & r4) == 561008700) {
            arrayList.add("EOL_SET_BALANCE_LEVEL");
            r1 |= 561008700;
        }
        if ((561008701 & r4) == 561008701) {
            arrayList.add("EOL_GET_MUTE_STATUS");
            r1 |= 561008701;
        }
        if ((561008702 & r4) == 561008702) {
            arrayList.add("EOL_SET_MUTE_STATUS");
            r1 |= 561008702;
        }
        if ((561008703 & r4) == 561008703) {
            arrayList.add("EOL_GET_LOUDNESS_STATUS");
            r1 |= 561008703;
        }
        if ((561008704 & r4) == 561008704) {
            arrayList.add("EOL_SET_LOUDNESS_STATUS");
            r1 |= 561008704;
        }
        if ((561008705 & r4) == 561008705) {
            arrayList.add("EOL_GET_SPEED_VOLUME_STATUS");
            r1 |= 561008705;
        }
        if ((561008706 & r4) == 561008706) {
            arrayList.add("EOL_SET_SPEED_VOLUME_STATUS");
            r1 |= 561008706;
        }
        if ((561008707 & r4) == 561008707) {
            arrayList.add("EOL_GET_EQ_STATUS");
            r1 |= 561008707;
        }
        if ((561008708 & r4) == 561008708) {
            arrayList.add("EOL_SET_EQ_STATUS");
            r1 |= 561008708;
        }
        if ((561008709 & r4) == 561008709) {
            arrayList.add("EOL_SET_EQ_USER_DEFINE_VALUE");
            r1 |= 561008709;
        }
        if ((561008710 & r4) == 561008710) {
            arrayList.add("EOL_GET_EQ_USER_DEFINE_VALUE");
            r1 |= 561008710;
        }
        if ((561008711 & r4) == 561008711) {
            arrayList.add("EOL_GET_ARKAMYS_STATUS");
            r1 |= 561008711;
        }
        if ((561008712 & r4) == 561008712) {
            arrayList.add("EOL_SET_ARKAMYS_STATUS");
            r1 |= 561008712;
        }
        if ((561008713 & r4) == 561008713) {
            arrayList.add("EOL_SET_USB_IPOD_PLAY_PAUSE");
            r1 |= 561008713;
        }
        if ((561008714 & r4) == 561008714) {
            arrayList.add("EOL_SET_USB_IPOD_PLAY_MODE");
            r1 |= 561008714;
        }
        if ((561008715 & r4) == 561008715) {
            arrayList.add("EOL_SET_USB_FORWARD_REWIND");
            r1 |= 561008715;
        }
        if ((561008716 & r4) == 561008716) {
            arrayList.add("EOL_SET_USB_IPOD_SKIP_TRACK");
            r1 |= 561008716;
        }
        if ((561008717 & r4) == 561008717) {
            arrayList.add("EOL_SET_USB_DESIRED_FILE_DESIRED_TIME");
            r1 |= 561008717;
        }
        if ((561008718 & r4) == 561008718) {
            arrayList.add("EOL_GET_USB_IPOD_CURRENT_STATE");
            r1 |= 561008718;
        }
        if ((561008719 & r4) == 561008719) {
            arrayList.add("EOL_SET_SURROUND_VIEW_ON_OFF");
            r1 |= 561008719;
        }
        if ((561008720 & r4) == 561008720) {
            arrayList.add("EOL_SET_FRONT_CAMERA_VIEW_ON_OFF");
            r1 |= 561008720;
        }
        if ((561008721 & r4) == 561008721) {
            arrayList.add("EOL_SET_LEFT_CAMERA_VIEW_ON_OFF");
            r1 |= 561008721;
        }
        if ((561008722 & r4) == 561008722) {
            arrayList.add("EOL_SET_RIGHT_CAMERA_VIEW_ON_OFF");
            r1 |= 561008722;
        }
        if ((561008723 & r4) == 561008723) {
            arrayList.add("EOL_SET_BACK_CAMERA_VIEW_ON_OFF");
            r1 |= 561008723;
        }
        if ((561008724 & r4) == 561008724) {
            arrayList.add("EOL_SET_RVC_ON_OFF");
            r1 |= 561008724;
        }
        if ((561008725 & r4) == 561008725) {
            arrayList.add("EOL_SET_NAVIGATION_ON_OFF");
            r1 |= 561008725;
        }
        if ((561008726 & r4) == 561008726) {
            arrayList.add("EOL_GET_NAVIGATION_SW_VERSION");
            r1 |= 561008726;
        }
        if ((561008727 & r4) == 561008727) {
            arrayList.add("EOL_GET_MAP_VERSION");
            r1 |= 561008727;
        }
        if ((561008728 & r4) == 561008728) {
            arrayList.add("EOL_GET_ELV_DATA");
            r1 |= 561008728;
        }
        if ((561008729 & r4) == 561008729) {
            arrayList.add("EOL_GET_AZTH_DATA");
            r1 |= 561008729;
        }
        if ((561008730 & r4) == 561008730) {
            arrayList.add("EOL_GET_LONGITUDE_DIRECTION");
            r1 |= 561008730;
        }
        if ((561008731 & r4) == 561008731) {
            arrayList.add("EOL_GET_LONGITUDE");
            r1 |= 561008731;
        }
        if ((561008732 & r4) == 561008732) {
            arrayList.add("EOL_GET_LATITUDE_DIRECTION");
            r1 |= 561008732;
        }
        if ((561008733 & r4) == 561008733) {
            arrayList.add("EOL_GET_LATITUDE");
            r1 |= 561008733;
        }
        if ((561008734 & r4) == 561008734) {
            arrayList.add("EOL_GET_VEHICLE_SPEED_FROM_GPS");
            r1 |= 561008734;
        }
        if ((561008735 & r4) == 561008735) {
            arrayList.add("EOL_GET_ALTITUDE");
            r1 |= 561008735;
        }
        if ((561008736 & r4) == 561008736) {
            arrayList.add("EOL_GET_TRACKED_SATELLITES");
            r1 |= 561008736;
        }
        if ((561008737 & r4) == 561008737) {
            arrayList.add("EOL_GET_VISIBLE_SATELLITES");
            r1 |= 561008737;
        }
        if ((561008738 & r4) == 561008738) {
            arrayList.add("EOL_GET_HDOP");
            r1 |= 561008738;
        }
        if ((561008739 & r4) == 561008739) {
            arrayList.add("EOL_GET_VDOP");
            r1 |= 561008739;
        }
        if ((561008740 & r4) == 561008740) {
            arrayList.add("EOL_GET_GPS_CN_VALUE");
            r1 |= 561008740;
        }
        if ((561008741 & r4) == 561008741) {
            arrayList.add("EOL_SET_GPS_ENTER_HIGH_GAIN_MODE");
            r1 |= 561008741;
        }
        if ((561008742 & r4) == 561008742) {
            arrayList.add("EOL_GYRO_DATA_INFO");
            r1 |= 561008742;
        }
        if ((561008743 & r4) == 561008743) {
            arrayList.add("EOL_SET_MIC_ON_OFF");
            r1 |= 561008743;
        }
        if ((561008744 & r4) == 561008744) {
            arrayList.add("EOL_SET_SPEECH_RECOGNIZE_START_END");
            r1 |= 561008744;
        }
        if ((561008745 & r4) == 561008745) {
            arrayList.add("EOL_GET_SPEECH_RECOGNIZE_RESULT");
            r1 |= 561008745;
        }
        if ((561008746 & r4) == 561008746) {
            arrayList.add("EOL_GET_SPEECH_RECOGNIZE_SWITCH_STATUS");
            r1 |= 561008746;
        }
        if ((561008747 & r4) == 561008747) {
            arrayList.add("EOL_SET_SPEECH_RECOGNIZE_SWITCH_STATUS");
            r1 |= 561008747;
        }
        if ((561008748 & r4) == 561008748) {
            arrayList.add("EOL_SET_WIFI_MODULE_ON_OFF");
            r1 |= 561008748;
        }
        if ((561008749 & r4) == 561008749) {
            arrayList.add("EOL_GET_WIFI_MODULE_STATUS");
            r1 |= 561008749;
        }
        if ((561008750 & r4) == 561008750) {
            arrayList.add("EOL_SET_WIFI_MODULE_WORK_MODE");
            r1 |= 561008750;
        }
        if ((561008751 & r4) == 561008751) {
            arrayList.add("EOL_GET_WIFI_MODULE_WORK_MODE");
            r1 |= 561008751;
        }
        if ((561008752 & r4) == 561008752) {
            arrayList.add("EOL_SET_WIFI_CONNECT_APPOINTED_NET");
            r1 |= 561008752;
        }
        if ((561008753 & r4) == 561008753) {
            arrayList.add("EOL_GET_AP_KEY");
            r1 |= 561008753;
        }
        if ((561008754 & r4) == 561008754) {
            arrayList.add("EOL_GET_WIFI_MODULE_CONNECT_STATUS");
            r1 |= 561008754;
        }
        if ((561008755 & r4) == 561008755) {
            arrayList.add("EOL_GET_WIFI_MODULE_SIGNAL_STRENGTH");
            r1 |= 561008755;
        }
        if ((561008756 & r4) == 561008756) {
            arrayList.add("EOL_SET_ALARM_AUDIO_PLAY");
            r1 |= 561008756;
        }
        if ((561008757 & r4) == 561008757) {
            arrayList.add("EOL_SET_ALARM_AUDIO_STOP");
            r1 |= 561008757;
        }
        if ((561008758 & r4) == 561008758) {
            arrayList.add("EOL_GET_USB_TBOX_CONNECT_STATUS");
            r1 |= 561008758;
        }
        if ((561008759 & r4) == 561008759) {
            arrayList.add("EOL_GET_USB_ICM_CONNECT_STATUS");
            r1 |= 561008759;
        }
        if ((561008760 & r4) == 561008760) {
            arrayList.add("EOL_SET_TFT_ILLUMINATION_ON_OFF");
            r1 |= 561008760;
        }
        if ((561008761 & r4) == 561008761) {
            arrayList.add("EOL_SET_TFT_DISPLAY_PATTERN_ON_OFF");
            r1 |= 561008761;
        }
        if ((561008762 & r4) == 561008762) {
            arrayList.add("EOL_SET_TFT_DISPLAY_PATTERN");
            r1 |= 561008762;
        }
        if ((561008763 & r4) == 561008763) {
            arrayList.add("EOL_SET_TEST_SCREEN_ILLUMINATION");
            r1 |= 561008763;
        }
        if ((561008764 & r4) == 561008764) {
            arrayList.add("EOL_SET_RESULT_SCREEN_ILLUMINATION");
            r1 |= 561008764;
        }
        if ((561008765 & r4) == 561008765) {
            arrayList.add("EOL_SET_TFT_ILLUMINATION_LEVEL");
            r1 |= 561008765;
        }
        if ((561008766 & r4) == 561008766) {
            arrayList.add("EOL_GET_TFT_ILLUMINATION_LEVEL");
            r1 |= 561008766;
        }
        if ((561008767 & r4) == 561008767) {
            arrayList.add("EOL_SET_SCREEN_ON_OFF");
            r1 |= 561008767;
        }
        if ((561008768 & r4) == 561008768) {
            arrayList.add("EOL_GET_SCREEN_STATUS");
            r1 |= 561008768;
        }
        if ((561008769 & r4) == 561008769) {
            arrayList.add("EOL_SET_TOUCH_PANEL_SELF_CALIBRATION");
            r1 |= 561008769;
        }
        if ((561008770 & r4) == 561008770) {
            arrayList.add("EOL_GET_TOUCH_PANEL_SELF_CALIBRATION_STATUS");
            r1 |= 561008770;
        }
        if ((561008771 & r4) == 561008771) {
            arrayList.add("EOL_SET_DATA_LOG_ON_OFF");
            r1 |= 561008771;
        }
        if ((561008772 & r4) == 561008772) {
            arrayList.add("EOL_GET_X1_Y1_POSITION");
            r1 |= 561008772;
        }
        if ((561008773 & r4) == 561008773) {
            arrayList.add("EOL_SET_TOUCH_PANEL_FIVE_POINT_TEST");
            r1 |= 561008773;
        }
        if ((561008774 & r4) == 561008774) {
            arrayList.add("EOL_GET_BEZEL_BUTTON_TEST");
            r1 |= 561008774;
        }
        if ((561008775 & r4) == 561008775) {
            arrayList.add("EOL_GET_SWC_BUTTON_TEST");
            r1 |= 561008775;
        }
        if ((561008776 & r4) == 561008776) {
            arrayList.add("EOL_SIMULATE_BEZEL_BUTTON_TEST");
            r1 |= 561008776;
        }
        if ((561008777 & r4) == 561008777) {
            arrayList.add("EOL_SIMULATE_SWC_BUTTON_TEST");
            r1 |= 561008777;
        }
        if ((561008778 & r4) == 561008778) {
            arrayList.add("EOL_GPS_LOCATION_STATUS");
            r1 |= 561008778;
        }
        if ((561008779 & r4) == 561008779) {
            arrayList.add("EOL_NUMBER_OF_SATELLITES");
            r1 |= 561008779;
        }
        if ((561008780 & r4) == 561008780) {
            arrayList.add("EOL_DIMMING_LEVEL");
            r1 |= 561008780;
        }
        if ((561008781 & r4) == 561008781) {
            arrayList.add("EOL_SD_CARD_STATUS");
            r1 |= 561008781;
        }
        if ((561008782 & r4) == 561008782) {
            arrayList.add("EOL_OS_VERSION");
            r1 |= 561008782;
        }
        if ((561008783 & r4) == 561008783) {
            arrayList.add("EOL_MAP_VERSION");
            r1 |= 561008783;
        }
        if ((561008784 & r4) == 561008784) {
            arrayList.add("EOL_READ_BT_ADDRESS");
            r1 |= 561008784;
        }
        if ((561009152 & r4) == 561009152) {
            arrayList.add("DTC_PROPID_GETDTCLOG");
            r1 |= 561009152;
        }
        if ((561009153 & r4) == 561009153) {
            arrayList.add("DTC_PROPID_SETDTCLOGEND");
            r1 |= 561009153;
        }
        if ((561009154 & r4) == 561009154) {
            arrayList.add("DTC_PROPID_CLEARDTCLOG");
            r1 |= 561009154;
        }
        if ((561037312 & r4) == 561037312) {
            arrayList.add("AVM_ENTER_EXIT_STATE");
            r1 |= 561037312;
        }
        if ((561037313 & r4) == 561037313) {
            arrayList.add("AVM_SET_LICENSE_PLATE");
            r1 |= 561037313;
        }
        if ((561037314 & r4) == 561037314) {
            arrayList.add("AVM_ENGINEERING_MODE");
            r1 |= 561037314;
        }
        if ((561037315 & r4) == 561037315) {
            arrayList.add("AVM_CALIBRATION_STATUS");
            r1 |= 561037315;
        }
        if ((561037316 & r4) == 561037316) {
            arrayList.add("AVM_VIEW_STATE");
            r1 |= 561037316;
        }
        if ((561037317 & r4) == 561037317) {
            arrayList.add("AVM_VIEW_PARAMS");
            r1 |= 561037317;
        }
        if ((561037318 & r4) == 561037318) {
            arrayList.add("AVM_LOG_SETTINGS");
            r1 |= 561037318;
        }
        if ((561037319 & r4) == 561037319) {
            arrayList.add("AVM_DATA_STORAGE");
            r1 |= 561037319;
        }
        if ((561037320 & r4) == 561037320) {
            arrayList.add("AVM_SIMULATE_OTHERS");
            r1 |= 561037320;
        }
        if ((561037321 & r4) == 561037321) {
            arrayList.add("AVM_VERSION");
            r1 |= 561037321;
        }
        if ((561037322 & r4) == 561037322) {
            arrayList.add("AVM_TOUCH_EVENT");
            r1 |= 561037322;
        }
        if ((561037323 & r4) == 561037323) {
            arrayList.add("AVM_FACTORY_RESET");
            r1 |= 561037323;
        }
        if ((561037324 & r4) == 561037324) {
            arrayList.add("EOL_REQUEST_AVM");
            r1 |= 561037324;
        }
        if (r4 != r1) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r1)));
        }
        return String.join(" | ", arrayList);
    }
}
