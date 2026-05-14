package com.chery.libvr.bean.action;

/* loaded from: classes.dex */
public class Response {
    private String detail;
    private String pkgName;
    private int resultCode;

    public Response() {
        this.resultCode = -1;
        this.detail = "";
        this.pkgName = "";
    }

    public Response(int r2, String str, String str2) {
        this.resultCode = -1;
        this.detail = "";
        this.pkgName = "";
        this.resultCode = r2;
        this.detail = str;
        this.pkgName = str2;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void setResultCode(int r1) {
        this.resultCode = r1;
    }

    public String getDetail() {
        return this.detail;
    }

    public void setDetail(String str) {
        this.detail = str;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public String toString() {
        return "Response{resultCode=" + this.resultCode + ", detail='" + this.detail + "', pkgName='" + this.pkgName + "'}";
    }
}
