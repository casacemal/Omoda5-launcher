package com.chery.media.model.business;

/* loaded from: classes.dex */
public class RadioDef {
    public static final int HMI_TUNER_STATE_AUTO_STORE = 5;
    public static final int HMI_TUNER_STATE_IDLE = 0;
    public static final int HMI_TUNER_STATE_SCAN = 3;
    public static final int HMI_TUNER_STATE_SCAN_PLAYING = 4;
    public static final int HMI_TUNER_STATE_SEEK = 2;
    public static final int HMI_TUNER_STATE_STEP = 1;
    public boolean isCurrentFreq = false;
    public int band = 1;
    public int frequencyKhz = 87500;
    public String title = "";
    public boolean isCollection = false;
    public boolean isPlaying = false;
    public int signalStrength = 0;
    public boolean isValid = false;
}
