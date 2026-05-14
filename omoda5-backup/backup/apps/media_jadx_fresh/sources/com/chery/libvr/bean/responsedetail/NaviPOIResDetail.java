package com.chery.libvr.bean.responsedetail;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class NaviPOIResDetail {
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
        private ArrayList<NaviPOIInfo> NaviPOIInfos = new ArrayList<>();

        public String getAction() {
            return this.action;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public ArrayList<NaviPOIInfo> getNaviPOIInfos() {
            return this.NaviPOIInfos;
        }

        public void setNaviPOIInfos(ArrayList<NaviPOIInfo> arrayList) {
            this.NaviPOIInfos = arrayList;
        }

        public String toString() {
            return "Semantic{action='" + this.action + "', NaviPOIInfos=" + this.NaviPOIInfos + '}';
        }
    }

    public String toString() {
        return "NaviPOIResDetail{user='" + this.user + "', semantic=" + this.semantic + '}';
    }
}
