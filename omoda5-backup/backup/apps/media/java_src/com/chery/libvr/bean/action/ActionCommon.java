package com.chery.libvr.bean.action;

/* loaded from: classes.dex */
public class ActionCommon {
    private SemanticBean semantic;
    private String user;

    public ActionCommon() {
        this.semantic = new SemanticBean();
        this.user = "";
    }

    public ActionCommon(String str, SemanticBean semanticBean) {
        this.semantic = new SemanticBean();
        this.user = "";
        this.user = str;
        this.semantic = semanticBean;
    }

    public SemanticBean getSemantic() {
        return this.semantic;
    }

    public void setSemantic(SemanticBean semanticBean) {
        this.semantic = semanticBean;
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public static class SemanticBean {
        private String action;
        private String name;
        private String position;
        private String type;
        private String value;

        public SemanticBean() {
            this.action = "";
            this.value = "";
            this.position = "";
            this.type = "";
            this.name = "";
        }

        public SemanticBean(String... strArr) {
            this.action = "";
            this.value = "";
            this.position = "";
            this.type = "";
            this.name = "";
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
            } else {
                if (4 == length) {
                    this.action = strArr[0];
                    this.value = strArr[1];
                    this.position = strArr[2];
                    this.type = strArr[3];
                    return;
                }
                if (5 == length) {
                    this.action = strArr[0];
                    this.value = strArr[1];
                    this.position = strArr[2];
                    this.type = strArr[3];
                    this.name = strArr[4];
                }
            }
        }

        public String getPosition() {
            return this.position;
        }

        public void setPosition(String str) {
            this.position = str;
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

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public String toString() {
            return "SemanticBean{action='" + this.action + "', value='" + this.value + "', position='" + this.position + "', type='" + this.type + "', name='" + this.name + "'}";
        }
    }

    public String toString() {
        return "ActionCommon{user='" + this.user + "', semantic=" + this.semantic + '}';
    }
}
