package com.chery.caradapter.carapi.constants;

/* loaded from: classes.dex */
public class CarBasic {

    public static class AutoFoldSts {
        public static final int AUTO_FOLD_MODE = 1;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_AUTO_FOLD_MODE = 2;
        public static final int NOT_USED = 3;
    }

    public static class AutoLockSts {
        public static final int AUTO_LOCK_MODE = 1;
        public static final int NOT_AUTO_LOCK_MODE = 0;
    }

    public static class BCM_4_KeySts {
        public static final int ACC = 1;
        public static final int CRANK_ON = 3;
        public static final int OFF = 0;

        /* renamed from: ON */
        public static final int f129ON = 2;
    }

    public static class BCM_4_TrunkSts {
        public static final int CLOSE = 0;
        public static final int OPEN = 1;
    }

    public static class CWC_ChargingSts {
        public static final int CHARGING = 1;
        public static final int CHARGING_FAULT = 3;
        public static final int CHARGING_FINISH = 2;
        public static final int NO_CHARGING = 0;
    }

    public static class CWC_PhoneForgottenMsg {
        public static final int FORGOTTEN = 1;
        public static final int NOT_FORGOTTEN = 0;
    }

    public static class CWC_PhoneForgotten_ON_OFF_Sts {
        public static final int FUNCTION_OFF = 0;
        public static final int FUNCTION_ON = 1;
    }

    public static class CWC_workingSts {
        public static final int CWC_OFF = 0;
        public static final int CWC_ON = 1;
    }

    public static class CtpKeyVoiceRemindSts {
        public static final int ACTIVE = 1;
        public static final int NOT_ACTIVE = 0;
    }

    public static class DMS_1_AlrmSwtSt {
        public static final int NOT_ACTIVE = 0;
        public static final int OFF = 2;

        /* renamed from: ON */
        public static final int f130ON = 1;
        public static final int RESERVED = 3;
    }

    public static class DVD_SET_AutoFoldSts {
        public static final int AUTO_FOLD_MODE = 1;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_AUTO_FOLD_MODE = 2;
        public static final int NOT_USED = 3;
    }

    public static class DVD_SET_AutoLockSts {
        public static final int AUTO_LOCK_MODE = 1;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_AUTO_LOCK_MODE = 2;
        public static final int NOT_USED = 3;
    }

    public static class DVD_SET_CWC_PhoneForgottenFunSts {
        public static final int INVALID = 3;
        public static final int NOT_ACTIVE = 0;
        public static final int OFF = 1;

        /* renamed from: ON */
        public static final int f131ON = 2;
    }

    public static class DVD_SET_CWC_WorkingSts {
        public static final int INVALID = 3;
        public static final int NOT_ACTIVE = 0;
        public static final int OFF = 1;

        /* renamed from: ON */
        public static final int f132ON = 2;
    }

    public static class DVD_SET_RemoteLockFeedback {
        public static final int LAMP_AND_SPEAKER = 1;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 7;
        public static final int ONLY_LAMP = 2;
        public static final int ONLY_SPEAKER_RESERVED = 3;
    }

    public static class DVD_SetThemeType {
        public static final int NOT_ACTIVE = 0;
        public static final int THEME1 = 3;
        public static final int THEME2 = 1;
        public static final int THEME3 = 2;
    }

    public static class DVD_TrunkCmd {
        public static final int CLOSE = 2;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 0;
        public static final int OPEN = 1;
    }

    public static class DayNightModeLight {
        public static final int CLOSE = 0;
        public static final int OPEN = 1;
    }

    public static class ICM_BrightnessLevel {
        public static final int LEVEL1 = 1;
        public static final int LEVEL10 = 10;
        public static final int LEVEL2 = 2;
        public static final int LEVEL3 = 3;
        public static final int LEVEL4 = 4;
        public static final int LEVEL5 = 5;
        public static final int LEVEL6 = 6;
        public static final int LEVEL7 = 7;
        public static final int LEVEL8 = 8;
        public static final int LEVEL9 = 9;
        public static final int NOT_ACTIVE = 0;
    }

    public static class IHU_12_DMSSwtSet {
        public static final int NOT_ACTIVE = 0;
        public static final int OFF = 2;

        /* renamed from: ON */
        public static final int f133ON = 1;
        public static final int RESERVED = 3;
    }

    public static class IHU_ISS_Switch {
        public static final int ACTIVE = 1;
        public static final int NOT_ACTIVE = 0;
    }

    public static class IHU_SET_ICMBrightnessLevel {
        public static final int LEVEL1 = 1;
        public static final int LEVEL10 = 10;
        public static final int LEVEL2 = 2;
        public static final int LEVEL3 = 3;
        public static final int LEVEL4 = 4;
        public static final int LEVEL5 = 5;
        public static final int LEVEL6 = 6;
        public static final int LEVEL7 = 7;
        public static final int LEVEL8 = 8;
        public static final int LEVEL9 = 9;
        public static final int NOT_ACTIVE = 0;
    }

    public static class IHU_SRFCmd {
        public static final int CLOSE = 2;
        public static final int NOT_ACTIVE = 0;
        public static final int OPEN = 1;
        public static final int TILT = 3;
    }

    public static class IHU_WindowCmd {
        public static final int ALL_WINDOWS_CLOSE = 14;
        public static final int ALL_WINDOWS_COMFORT = 15;
        public static final int ALL_WINDOWS_OPEN = 13;
        public static final int FD_WINDOW_CLOSE = 2;
        public static final int FD_WINDOW_OPEN = 1;
        public static final int FP_WINDOW_CLOSE = 4;
        public static final int FP_WINDOW_OPEN = 3;
        public static final int FRONT_WINDOWS_CLOSE = 10;
        public static final int FRONT_WINDOWS_OPEN = 9;
        public static final int NOT_ACTIVE = 0;
        public static final int REAR_WINDOWS_CLOSE = 12;
        public static final int REAR_WINDOWS_OPEN = 11;
        public static final int RL_WINDOW_CLOSE = 6;
        public static final int RL_WINDOW_OPEN = 5;
        public static final int RR_WINDOW_CLOSE = 8;
        public static final int RR_WINDOW_OPEN = 7;
    }

    public static class LanguageSet {
        public static final int ARABIC = 4;
        public static final int CHINESE = 1;
        public static final int ENGLISH = 2;
        public static final int FARSI = 6;
        public static final int INDONESIAN = 12;
        public static final int ITALIAN = 8;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 31;
        public static final int PORTUGUESE = 5;
        public static final int RUSSIAN = 3;
        public static final int SPANISH = 7;
        public static final int THAI = 11;
        public static final int TURKISH = 9;
        public static final int UKRAINIAN = 10;
    }

    public static class LightDetectedSts {
        public static final int BRIGHT = 1;
        public static final int DARK = 0;
    }

    public static class RemoteLockFeedbackSts {
        public static final int LAMP_AND_SPEAKER = 0;
        public static final int NOT_USED = 3;
        public static final int ONLY_LAMP = 1;
        public static final int ONLY_SPEAKER_RESERVED = 2;
    }

    public static class SRFOperateSts {
        public static final int CLOSE = 2;
        public static final int CLOSING = 5;
        public static final int COMFORT = 7;
        public static final int OPEN = 6;
        public static final int OPENING = 3;
        public static final int STARTUP = 0;
        public static final int STOP = 4;
        public static final int TILT = 1;
    }

    public static class SRF_OperateSts {
        public static final int CLOSE = 2;
        public static final int CLOSING = 5;
        public static final int COMFORT_OPEN = 7;
        public static final int OPEN = 6;
        public static final int OPENING = 3;
        public static final int STARTUP = 0;
        public static final int STOP = 4;
        public static final int TILT = 1;
    }

    public static class SSMStatus {
        public static final int AUTO_STOPPING = 6;
        public static final int ENGINE_RESTART = 4;
        public static final int OPERATION = 5;
        public static final int RESET_NOT_IMPLEMENTED = 0;
        public static final int STANDBY = 1;
        public static final int STARTER_RESTART = 3;
        public static final int STOPPED = 2;
    }

    public static class ScreenOverTemperatureSts {
        public static final int NORMAL = 0;
        public static final int OVER_TEMPERATURE = 1;
    }

    public static class Set_Time24H12H {
        public static final int NOT_ACTIVE = 0;
        public static final int TIME_12H = 2;
        public static final int TIME_24H = 1;
    }

    public static class VehicleSpeedVSOSigValid {
        public static final int NOT_VALID = 1;
        public static final int VAlID = 0;
    }

    public static class WindowPosition {

        /* renamed from: FD */
        public static final int f134FD = 0;

        /* renamed from: FP */
        public static final int f135FP = 1;

        /* renamed from: RL */
        public static final int f136RL = 2;

        /* renamed from: RR */
        public static final int f137RR = 3;
    }

    public static class Window_Sts {
        public static final int CLOSE = 2;
        public static final int CLOSING = 5;
        public static final int COMFORT = 1;
        public static final int OPEN = 3;
        public static final int OPENING = 6;
        public static final int STARTUP = 0;
        public static final int STOP = 4;
    }
}
