package com.chery.libvr.bean.params;

/* loaded from: classes.dex */
public final class ParamsResValue {

    public static class AcState {
        public static final String CLOSE_STATE = "CLOSE_STATE";
        public static final String MAX = "MAX";
        public static final String MIN = "MIN";
        public static final String OPEN_STATE = "OPEN_STATE";
    }

    public static class AppControlResult {
        public static final String ALREADY_EXPECTED = "2";
        public static final String FAIL = "3";
        public static final String NO_SUPPORT = "0";
        public static final String SUCCESS = "1";
    }

    public static class BtConnectState {
        public static final String CONNECTED = "connected";
        public static final String DISCONNECTED = "disconnected";
    }

    public static class CallLogSyncStatus {
        public static final String NO_DATA = "NO_DATA";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class CommonResult {
        public static final String FAIL = "FAIL";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class ControlDeviceResult {
        public static final String SUCCESS = "SUCCESS";
    }

    public static class ControlPhoneConnectResult {
        public static final String ALREADY_EXPECT = "2";
        public static final String SUCCESS = "1";
    }

    public static class HutLightControlResult {
        public static final String NO_SUPPORT = "0";
        public static final String OUT_RANGE = "2";
        public static final String SUCCESS = "1";
    }

    public static class LanguageSetResult {
        public static final String ALREADY_EXPECT = "2";
        public static final String NO_SUPPORT = "0";
        public static final String SUCCESS = "1";
    }

    public static class MusicActiveStatus {
        public static final String BACKGROUND = "background";
        public static final String FOREGROUND = "foreground";
    }

    public static class MusicCollectResult {
        public static final String ALREADY_EXPECT = "0";
        public static final String FAIL_LIST_FULL = "-2";
        public static final String NOT_SUPPORT = "-1";
        public static final String SUCCESS = "1";
    }

    public static class MusicPlayCollectResult {
        public static final String NOT_DATA = "-1";
        public static final String PLAY_OTHER_SONG = "0";
        public static final String SUCCESS = "1";
    }

    public static class MusicPlayListResult {
        public static final String FAIL = "0";
        public static final String NOT_SUPPORT = "-1";
        public static final String NO_DATA = "-2";
        public static final String SUCCESS = "1";
    }

    public static class MusicPlaySpecificResult {
        public static final String NOT_DATA = "-1";
        public static final String PLAY_OTHER_SONG = "0";
        public static final String SUCCESS = "1";
    }

    public static class MusicPlayState {
        public static final String PLAYING = "playing";
        public static final String STOP = "stop";
    }

    public static class OnOffState {
        public static final String OFF = "0";

        /* renamed from: ON */
        public static final String f242ON = "1";
    }

    public static class PhoneControlResult {
        public static final String FAIL = "2";
        public static final String SUCCESS = "1";
    }

    public static class PhoneDialResult {
        public static final String FAIL = "2";
        public static final String SUCCESS = "1";
    }

    public static class PhoneRecordResult {
        public static final String NO_DATA = "2";
        public static final String SUCCESS = "1";
    }

    public static class RadioCancelCollectResult {
        public static final String ALREADY_NO_SAVED = "ALREADY_NO_SAVED";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class RadioCollectResult {
        public static final String ALREADY_SAVED = "ALREADY_SAVED";
        public static final String FAIL_LIST_FULL = "FAIL_LIST_FULL";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class RadioControlListResult {
        public static final String ALREADY_SHOWN = "ALREADY_SHOWN";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class RadioPlayByBandResult {
        public static final String ALREADY_EXPECT = "ALREADY_EXPECT";
        public static final String OUT_RANGE = "OUT_RANGE";
        public static final String SIMILAR_FREQ = "SIMILAR_FREQ";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class RadioPlayCollectResult {
        public static final String NO_DATA = "NO_DATA";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class RadioPlayState {
        public static final String PLAYING = "PLAYING";
        public static final String SCANING = "SCANING";
        public static final String STOP = "STOP";
    }

    public static class RadioPlayStateResult {
        public static final String ALREADY_EXPECT = "ALREADY_EXPECT";
        public static final String SUCCESS = "SUCCESS";
    }

    public static class RadioScanResult {
        public static final String SUCCESS = "SUCCESS";
    }

    public static class RainState {
        public static final String NO_RAIN = "false";
        public static final String RAIN = "true";
    }

    public static class SettingPageControlResult {
        public static final String ALREADY_EXPECT = "2";
        public static final String NO_SUPPORT = "0";
        public static final String SUCCESS = "1";
    }

    public static class SoundLocationState {
        public static final String AUTO = "2";
        public static final String DRIVER = "1";
        public static final String OFF = "0";
    }

    public static class VehicleState {
        public static final String CLOSE_STATE = "CLOSE_STATE";
        public static final String MULTIPLE_STATE = "MULTIPLE_STATE";
        public static final String OPEN_HELF_STATE = "OPEN_HELF_STATE";
        public static final String OPEN_LITTLE_STATE = "OPEN_LITTLE_STATE";
        public static final String OPEN_STATE = "OPEN_STATE";
        public static final String TILT_STATE = "TILT_STATE";
    }

    public static class VehicleType {
        public static final String AMBIENT_LIGHT = "AMBIENT_LIGHT";
        public static final String SEAT_VENTILATION = "SEAT_VENTILATION";
        public static final String SKY_WINDOW = "SKY_WINDOW";
        public static final String SUNSHADE = "SUNSHADE";
        public static final String TRUNK = "TRUNK";
        public static final String WINDOW = "WINDOW";
    }

    public static class VolumeControlResult {
        public static final String ALREADY_EXPECTED = "3";
        public static final String NO_SUPPORT = "0";
        public static final String OUT_RANGE = "2";
        public static final String SUCCESS = "1";
    }

    public static class openHelpResult {
        public static final String ALREADY_EXPECTED = "2";
        public static final String FAIL = "3";
        public static final String NO_SUPPORT = "0";
        public static final String SUCCESS = "1";
    }

    private ParamsResValue() {
    }
}
