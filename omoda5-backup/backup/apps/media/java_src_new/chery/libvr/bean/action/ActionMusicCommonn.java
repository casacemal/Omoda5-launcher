package com.chery.libvr.bean.action;

/* loaded from: classes.dex */
public class ActionMusicCommonn {
    private String user = "";
    private SematicBean sematic = new SematicBean();

    public String toString() {
        return "ActionMusicCommonn{user='" + this.user + "', action=" + this.sematic.action + "', value=" + this.sematic.value + "', type=" + this.sematic.type + "', position=" + this.sematic.position + "'}";
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public SematicBean getSematic() {
        return this.sematic;
    }

    public void setSematic(SematicBean sematicBean) {
        this.sematic = sematicBean;
    }

    public static class SematicBean {
        private String action = "";
        private String position = "";
        private String type = "";
        private String value = "";

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

        public String getValue() {
            return this.value;
        }

        public void setValue(String str) {
            this.value = str;
        }
    }
}
