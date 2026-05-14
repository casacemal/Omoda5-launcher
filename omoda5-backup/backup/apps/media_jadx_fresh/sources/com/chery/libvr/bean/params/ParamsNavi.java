package com.chery.libvr.bean.params;

/* loaded from: classes.dex */
public final class ParamsNavi {

    public static class Action {
        public static final String CANCEL = "Cancel";
        public static final String SELECTED_POI = "SelectedPOI";
    }

    public static class AddrType {
        public static final String ADDR_DESTINATION = "AddrDestination";
        public static final String ADDR_HOME = "AddrHome";
        public static final String ADDR_LOCAL = "AddrLocal";
        public static final String ADDR_OFFICE = "AddrOffice";
    }

    public static class CategorySearchMethod {
        public static final String SEARCH_ALONG_ROUTE = "SearchAlongRoute";
        public static final String SEARCH_DESTINATION = "SearchDest";
        public static final String SEARCH_LOCAL = "SearchLocal";
        public static final String SEARCH_POI = "SearchPoi";
    }

    public static class Result {
        public static final String FAIL = "Fail";
        public static final String OUT_DEST = "OutDest";
        public static final String SUCCESS = "Success";
    }

    public static class RoadType {
        public static final String ROAD_NEXT = "RoadNext";
        public static final String ROAD_NOW = "RoadNow";
    }

    private ParamsNavi() {
    }
}
