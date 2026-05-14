package com.chery.libvr.bean.action;

/* loaded from: classes.dex */
public class ActionSetting {
    private String user = "";
    private SemanticBean semantic = new SemanticBean();

    public String toString() {
        return "ActionSetting{user='" + this.user + "', action=" + this.semantic.action + "', value=" + this.semantic.value + "', type=" + this.semantic.type + "', position=" + this.semantic.position + "'}";
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
        private String action;
        private String position;
        private String type;
        private String value;

        public SemanticBean() {
            this.action = "";
            this.value = "";
            this.type = "";
            this.position = "";
        }

        public SemanticBean(String... strArr) {
            this.action = "";
            this.value = "";
            this.type = "";
            this.position = "";
            int length = strArr.length;
            if (1 == length) {
                this.action = strArr[0];
                return;
            }
            if (2 == length) {
                this.action = strArr[0];
                this.value = strArr[1];
                return;
            }
            if (3 == length) {
                this.action = strArr[0];
                this.value = strArr[1];
                this.position = strArr[2];
            } else if (4 == length) {
                this.action = strArr[0];
                this.value = strArr[1];
                this.position = strArr[2];
                this.type = strArr[3];
            }
        }

        public String getAction() {
            return this.action;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public String getValue() {
            return this.value;
        }

        public void setValue(String str) {
            this.value = str;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String str) {
            this.type = str;
        }

        public String getPosition() {
            return this.position;
        }

        public void setPosition(String str) {
            this.position = str;
        }
    }
}
