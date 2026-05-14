package com.chery.libvr.bean.action;

/* loaded from: classes.dex */
public class ActionMusicPLay {
    private String user = "";
    private SemanticBean semantic = new SemanticBean();

    public String toString() {
        return "ActionMusicPLay{user='" + this.user + "', name=" + this.semantic.name + "', position=" + this.semantic.position + "', artist=" + this.semantic.artist + "', album=" + this.semantic.album + "', source=" + this.semantic.source + "'}";
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public SemanticBean getSemantic() {
        return this.semantic;
    }

    public void setSemantic(SemanticBean semanticBean) {
        this.semantic = semanticBean;
    }

    public static class SemanticBean {
        private String name = "";
        private String position = "";
        private String artist = "";
        private String album = "";
        private String source = "";

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public String getPosition() {
            return this.position;
        }

        public void setPosition(String str) {
            this.position = str;
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

        public String getSource() {
            return this.source;
        }

        public void setSource(String str) {
            this.source = str;
        }
    }
}
