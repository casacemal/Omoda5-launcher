package com.chery.libvr.bean.responsedetail;

/* loaded from: classes.dex */
public class MediaSourceStateResDetail {
    private String source = "";
    private boolean available = false;

    public String getSource() {
        return this.source;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public void setAvailable(boolean z) {
        this.available = z;
    }

    public String toString() {
        return "MediaSourceStateResDetail{source='" + this.source + "', available=" + this.available + '}';
    }
}
