package com.chery.libvr.bean.responsedetail;

/* loaded from: classes.dex */
public class SystemResDetail {
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
        private String state = "";
        private String position = "";
        private String type = "";

        public String getState() {
            return this.state;
        }

        public void setState(String str) {
            this.state = str;
        }

        public String getAction() {
            return this.action;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public String getPosition() {
            return this.position;
        }

        public void setPosition(String str) {
            this.position = str;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String str) {
            this.type = str;
        }

        public String toString() {
            return "Semantic{action='" + this.action + "', state='" + this.state + "', position='" + this.position + "', type='" + this.type + "'}";
        }
    }

    public String toString() {
        return "SystemResDetail{user='" + this.user + "', semantic=" + this.semantic + '}';
    }
}
