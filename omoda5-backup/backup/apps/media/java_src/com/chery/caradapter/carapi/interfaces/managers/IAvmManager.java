package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IAvmListener;

/* loaded from: classes.dex */
public interface IAvmManager {
    int getGearPosition();

    int getManualGearPosition();

    int getRadarSts();

    void setListener(IAvmListener iAvmListener);

    void setRadarSts(int r1);
}
