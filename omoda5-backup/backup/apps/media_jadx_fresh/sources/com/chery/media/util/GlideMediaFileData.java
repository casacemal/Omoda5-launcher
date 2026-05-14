package com.chery.media.util;

/* loaded from: classes.dex */
public class GlideMediaFileData {
    public static final int TYPE_IMAGE = 3;
    public static final int TYPE_MUSIC = 1;
    public static final int TYPE_OTHER = 0;
    public static final int TYPE_VIDEO = 2;
    private final String path;
    private int type;

    public GlideMediaFileData(String str, int r3) {
        this.type = 0;
        this.path = str;
        this.type = r3;
    }

    public String getPath() {
        return this.path;
    }

    public int getType() {
        return this.type;
    }
}
