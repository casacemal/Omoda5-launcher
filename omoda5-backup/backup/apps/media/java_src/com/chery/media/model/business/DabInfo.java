package com.chery.media.model.business;

import p004sw.com.dabdrmradio.DabImage;

/* loaded from: classes.dex */
public class DabInfo {
    public static final int PTY_TYPE_CHILDREN = 18;
    public static final int PTY_TYPE_CLASSIC_MUSIC = 14;
    public static final int PTY_TYPE_COUNTRY_MUSIC = 25;
    public static final int PTY_TYPE_CULTURE = 7;
    public static final int PTY_TYPE_CUR_AFFAIRS = 2;
    public static final int PTY_TYPE_DOCUMENTARY = 29;
    public static final int PTY_TYPE_DRAMA = 6;
    public static final int PTY_TYPE_EASY_MUSIC = 12;
    public static final int PTY_TYPE_EDUCATION = 5;
    public static final int PTY_TYPE_FINANCE = 17;
    public static final int PTY_TYPE_FOLK_MUSIC = 28;
    public static final int PTY_TYPE_INFO = 3;
    public static final int PTY_TYPE_JAZZ_MUSIC = 24;
    public static final int PTY_TYPE_LEISURE = 23;
    public static final int PTY_TYPE_LIGHT_MUSIC = 13;
    public static final int PTY_TYPE_NATION_MUSIC = 26;
    public static final int PTY_TYPE_NEWS = 1;
    public static final int PTY_TYPE_NO_PTY = 0;
    public static final int PTY_TYPE_OLDIES_MUSIC = 27;
    public static final int PTY_TYPE_OTHER_MUSIC = 15;
    public static final int PTY_TYPE_PHONE_IN = 21;
    public static final int PTY_TYPE_POP_MUSIC = 10;
    public static final int PTY_TYPE_RELIGION = 20;
    public static final int PTY_TYPE_ROCK_MUSIC = 11;
    public static final int PTY_TYPE_SCIENCE = 8;
    public static final int PTY_TYPE_SOCIAL = 19;
    public static final int PTY_TYPE_SPORT = 4;
    public static final int PTY_TYPE_TRAVEL = 22;
    public static final int PTY_TYPE_VARIED = 9;
    public static final int PTY_TYPE_WEATHER = 16;
    public int componentId;
    public String componentName;
    public int componentType;
    public int ensembleId;
    public String ensembleName;
    public int freq;
    public int scIds;
    public int serviceId;
    public String serviceName;
    public int servicePty;
    public boolean isPlaying = false;
    public boolean isFavor = false;
    public DabImage dabImage = null;

    public String toString() {
        return "freq: " + this.freq + ", ensembleId: " + this.ensembleId + ", ensembleName: " + this.ensembleName + ", serviceId: " + this.serviceId + ", servicePty: " + this.servicePty + ", serviceName: " + this.serviceName + ", componentId: " + this.componentId + ", componentType: " + this.componentType + ", componentName: " + this.componentName + ", scIds: " + this.scIds + ", isFavor: " + this.isFavor;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DabInfo)) {
            DabInfo dabInfo = (DabInfo) obj;
            return this.ensembleId == dabInfo.ensembleId && this.serviceId == dabInfo.serviceId && this.freq == dabInfo.freq && this.componentId == dabInfo.componentId;
        }
        return super.equals(obj);
    }
}
