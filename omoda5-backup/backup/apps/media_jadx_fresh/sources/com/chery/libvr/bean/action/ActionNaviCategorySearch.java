package com.chery.libvr.bean.action;

/* loaded from: classes.dex */
public class ActionNaviCategorySearch {
    private SemanticBean semantic;
    private String user;

    public ActionNaviCategorySearch() {
        this.semantic = new SemanticBean();
        this.user = "";
    }

    public ActionNaviCategorySearch(String str, SemanticBean semanticBean) {
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
        private String naviCategory = "";
        private String naviDstAddr = "";
        private String naviSearchMethod = "";

        public String getNaviCategory() {
            return this.naviCategory;
        }

        public void setNaviCategory(String str) {
            this.naviCategory = str;
        }

        public String getNaviDstAddr() {
            return this.naviDstAddr;
        }

        public void setNaviDstAddr(String str) {
            this.naviDstAddr = str;
        }

        public String getNaviSearchMethod() {
            return this.naviSearchMethod;
        }

        public void setNaviSearchMethod(String str) {
            this.naviSearchMethod = str;
        }

        public String toString() {
            return "SemanticBean{naviCategory='" + this.naviCategory + "', naviDstAddr='" + this.naviDstAddr + "', naviSearchMethod='" + this.naviSearchMethod + "'}";
        }
    }

    public String toString() {
        return "ActionNaviCategorySearch{semantic=" + this.semantic + ", user='" + this.user + "'}";
    }
}
