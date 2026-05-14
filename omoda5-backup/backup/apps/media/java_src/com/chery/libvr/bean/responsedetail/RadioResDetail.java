package com.chery.libvr.bean.responsedetail;

/* loaded from: classes.dex */
public class RadioResDetail {
    private String playState = "";
    private String band = "";
    private String frequency = "";
    private String resResult = "";

    public String getPlayState() {
        return this.playState;
    }

    public void setPlayState(String str) {
        this.playState = str;
    }

    public String getBand() {
        return this.band;
    }

    public void setBand(String str) {
        this.band = str;
    }

    public String getFrequency() {
        return this.frequency;
    }

    public void setFrequency(String str) {
        this.frequency = str;
    }

    public String getResResult() {
        return this.resResult;
    }

    public void setResResult(String str) {
        this.resResult = str;
    }

    public String toString() {
        return "RadioResDetail{playState='" + this.playState + "', band='" + this.band + "', frequence='" + this.frequency + "', resResult='" + this.resResult + "'}";
    }
}
