package com.chery.media.model.business;

import p004sw.com.dabdrmradio.DabEPGTime;

/* loaded from: classes.dex */
public class DabProgramInfo {
    public int duration;
    public String programName;
    public int ensembleId = -1;
    public int serviceId = -1;
    public int scIds = -1;
    public DabEPGTime startTime = new DabEPGTime();
    public boolean hasReserved = false;

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DabProgramInfo)) {
            DabProgramInfo dabProgramInfo = (DabProgramInfo) obj;
            return this.ensembleId == dabProgramInfo.ensembleId && this.serviceId == dabProgramInfo.serviceId && this.scIds == dabProgramInfo.scIds && this.programName.equals(dabProgramInfo.programName) && this.startTime.equals(dabProgramInfo.startTime);
        }
        return super.equals(obj);
    }

    public String toString() {
        return "ensembleId: " + this.ensembleId + ", serviceId: " + this.serviceId + ", scIds: " + this.scIds + ", programName: " + this.programName + ", startTime: " + this.startTime.getEPGTimeYear() + "- " + ((int) this.startTime.getEPGTimeMonth()) + "-" + ((int) this.startTime.getEPGTimeDay()) + "-" + ((int) this.startTime.getEPGTimeHour()) + "-" + ((int) this.startTime.getEPGTimeMinute()) + ", duration: " + this.duration + ", hasReserved: " + this.hasReserved;
    }
}
