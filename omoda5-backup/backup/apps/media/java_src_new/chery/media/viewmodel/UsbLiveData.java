package com.chery.media.viewmodel;

import com.chery.media.model.business.MediaDef;

/* loaded from: classes.dex */
public class UsbLiveData {
    public String usbName;
    public int usbType;

    public UsbLiveData(int r1) {
        this.usbType = r1;
        this.usbName = MediaDef.getUsbName(r1);
    }
}
