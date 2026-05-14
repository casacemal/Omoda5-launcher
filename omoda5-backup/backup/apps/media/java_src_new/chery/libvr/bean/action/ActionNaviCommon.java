package com.chery.libvr.bean.action;

/* loaded from: classes.dex */
public class ActionNaviCommon {
    private SemanticBean semantic;
    private String user;

    public ActionNaviCommon() {
        this.semantic = new SemanticBean();
        this.user = "";
    }

    public ActionNaviCommon(String str, SemanticBean semanticBean) {
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
        private String index = "";
        private String action = "";
        private String name = "";
        private String latitude = "";
        private String longitude = "";
        private String type = "";

        public String getIndex() {
            return this.index;
        }

        public void setIndex(String str) {
            this.index = str;
        }

        public String getAction() {
            return this.action;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public String getLatitude() {
            return this.latitude;
        }

        public void setLatitude(String str) {
            this.latitude = str;
        }

        public String getLongitude() {
            return this.longitude;
        }

        public void setLongitude(String str) {
            this.longitude = str;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String str) {
            this.type = str;
        }

        public String toString() {
            return "SemanticBean{index='" + this.index + "', action='" + this.action + "', name='" + this.name + "', latitude='" + this.latitude + "', longitude='" + this.longitude + "', type='" + this.type + "'}";
        }
    }

    public String toString() {
        return "ActionNaviCommon{semantic=" + this.semantic + ", user='" + this.user + "'}";
    }
}
