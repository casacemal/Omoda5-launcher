package com.chery.turbodog;

/* loaded from: classes.dex */
public class TurboBroadcastValue {
    public static final String ACTION_RECEIVE = "turbodog.navigation.system.message";
    public static final String ACTION_SEND = "turbodog.system.navigation.message";
    public static final String CODE = "CODE";
    public static final String CURRENT_ROAD = "CURRENT_ROAD";
    public static final String DATA = "DATA";
    public static final String NEXT_ROAD = "NEXT_ROAD";
    public static final String REMAINING_DIST = "REMAINING_DIST";
    public static final String REMAINING_TIME = "REMAINING_TIME";
    public static final String REQUEST_CODE = "REQUEST_CODE";
    public static final String TURN_DIST = "TURN_DIST";
    public static final String TURN_TIME = "TURN_TIME";
    public static final String TURN_TYPE = "TURN_TYPE";

    public static final class Code {
        public static final int CODE_ADD_TO_FAV = 109;
        public static final int CODE_BACK_TO_ARROW = 111;
        public static final int CODE_BACK_TO_MAIN_PAGE = 108;
        public static final int CODE_REC_ERROR = 204;
        public static final int CODE_REC_EXIT = 205;
        public static final int CODE_REC_HEART = 208;
        public static final int CODE_REC_INIT = 207;
        public static final int CODE_REC_NAVI_END = 203;
        public static final int CODE_REC_NAVI_START = 202;
        public static final int CODE_REC_START = 206;
        public static final int CODE_REC_TBT = 201;
        public static final int CODE_REC_lIGHT = 200;
        public static final int CODE_SHOW_FAV_LIST = 110;
        public static final int CODE_START_ROUTE_NAVI = 112;
        public static final int CODE_STOP_ROUTE_NAVI = 107;
        public static final int CODE_STOP_ROUTE_NAVI_AND_EXIT = 103;
        public static final int CODE_VISUAL_ANGLE = 105;
        public static final int CODE_WHOLE_ROUTE = 106;
        public static final int CODE_ZOOM_MAP = 104;
    }

    public static final class Data {
        public static final int NAVI_SIMULATION_START = 2;
        public static final int NAVI_START = 1;
        public static final int VISUAL_ANGLE_2D_UP = 1;
        public static final int VISUAL_ANGLE_3D_UP = 2;
        public static final int VISUAL_ANGLE_NORTH_UP = 3;
        public static final int ZOOM_IN = 1;
        public static final int ZOOM_OUT = 2;
        public static final int ZOOM_TO_DEFAULT = 5;
        public static final int ZOOM_TO_MAX = 3;
        public static final int ZOOM_TO_MIN = 4;
    }

    public static final class Error {
        public static final int ALREADY_EXPECTED_PAGE = 17;
        public static final int ALREADY_EXPECTED_VISUAL_ANGLE = 5;
        public static final int ALREADY_EXPECTED_ZOOM = 4;
        public static final int ALREADY_EXPECTED_ZOOM_DEFAULT = 4;
        public static final int ALREADY_EXPECTED_ZOOM_MAX = 2;
        public static final int ALREADY_EXPECTED_ZOOM_MIN = 3;
        public static final int ALREADY_FAV = 13;
        public static final int ALREADY_MAIN_PAGE = 11;
        public static final int FAV_LIST_EMPTY = 14;
        public static final int FAV_LIST_FULL = 15;
        public static final int FOLLOW_CAR_LOGO = 7;
        public static final int INVALID_GPS = 12;
        public static final int NOT_MAIN_PAGE = 1;
        public static final int NOT_ON_NAVIGATION = 9;
        public static final int NO_ROUTE = 8;
        public static final int ON_MOVE = 6;
        public static final int ON_NAVIGATION = 10;
        public static final int PLANING_ROUTE = 16;
        public static final int SUCCESS = 0;
    }
}
