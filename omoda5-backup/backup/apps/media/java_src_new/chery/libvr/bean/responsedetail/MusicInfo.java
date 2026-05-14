package com.chery.libvr.bean.responsedetail;

/* loaded from: classes.dex */
public class MusicInfo {
    private String name = "";
    private String artist = "";
    private String album = "";

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

    public String toString() {
        return "MusicInfo{name='" + this.name + "', artist='" + this.artist + "', album='" + this.album + "'}";
    }
}
