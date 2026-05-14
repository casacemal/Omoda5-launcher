package com.chery.libvr.bean.responsedetail;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class MusicListResDetail {
    private String user = "";
    private Semantic semantic = new Semantic();

    public String getUser() {
        return this.user;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public Semantic getSemantic() {
        return this.semantic;
    }

    public void setSemantic(Semantic semantic) {
        this.semantic = semantic;
    }

    public static class Semantic {
        private String action = "";
        private String source = "";
        private ArrayList<MusicInfo> musicInfos = new ArrayList<>();

        public String getAction() {
            return this.action;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public String getSource() {
            return this.source;
        }

        public void setSource(String str) {
            this.source = str;
        }

        public ArrayList<MusicInfo> getMusicInfos() {
            return this.musicInfos;
        }

        public void setMusicInfos(ArrayList<MusicInfo> arrayList) {
            this.musicInfos = arrayList;
        }

        public String toString() {
            return "Semantic{action='" + this.action + "', source='" + this.source + "', musicInfos=" + this.musicInfos + '}';
        }
    }

    public String toString() {
        return "MusicListResDetail{user='" + this.user + "', semantic=" + this.semantic + '}';
    }
}
