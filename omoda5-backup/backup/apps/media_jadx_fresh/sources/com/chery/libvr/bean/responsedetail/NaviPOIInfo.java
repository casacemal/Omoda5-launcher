package com.chery.libvr.bean.responsedetail;

/* loaded from: classes.dex */
public class NaviPOIInfo {
    private String index = "";
    private String name = "";
    private String address = "";
    private String distance = "";
    private String distanceUnit = "";
    private String latitude = "";
    private String longitude = "";

    public String getIndex() {
        return this.index;
    }

    public void setIndex(String str) {
        this.index = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getDistance() {
        return this.distance;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public String getDistanceUnit() {
        return this.distanceUnit;
    }

    public void setDistanceUnit(String str) {
        this.distanceUnit = str;
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

    public String toString() {
        return "NaviPOIInfo{index=" + this.index + ", name='" + this.name + "', address='" + this.address + "', distance='" + this.distance + "', distanceUnit='" + this.distanceUnit + "', latitude='" + this.latitude + "', longitude='" + this.longitude + "'}";
    }
}
