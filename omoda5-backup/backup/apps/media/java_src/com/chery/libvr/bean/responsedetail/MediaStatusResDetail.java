package com.chery.libvr.bean.responsedetail;

/* loaded from: classes.dex */
public class MediaStatusResDetail {
    private String source = "";
    private String sceneStatus = "";
    private String name = "";
    private String artist = "";
    private String album = "";
    private String activeStatus = "";

    public String getSource() {
        return this.source;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public String getSceneStatus() {
        return this.sceneStatus;
    }

    public void setSceneStatus(String str) {
        this.sceneStatus = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getArtist() {
        return this.artist;
    }

    public void setArtist(String str) {
        this.artist = str;
    }

    public String getAlbum() {
        return this.album;
    }

    public void setAlbum(String str) {
        this.album = str;
    }

    public String getActiveStatus() {
        return this.activeStatus;
    }

    public void setActiveStatus(String str) {
        this.activeStatus = str;
    }

    public String toString() {
        return "MediaStatusResDetail{source='" + this.source + "', sceneStatus='" + this.sceneStatus + "', name='" + this.name + "', artist='" + this.artist + "', album='" + this.album + "', activeStatus='" + this.activeStatus + "'}";
    }
}
