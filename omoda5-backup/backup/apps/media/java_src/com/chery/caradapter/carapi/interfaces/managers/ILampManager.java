package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.ILampListener;

/* loaded from: classes.dex */
public interface ILampManager {
    int getDRLMode();

    int getHMA();

    int getHeadLampDelayLight();

    int getHeadLampHeight();

    void setDRLMode(int r1);

    void setHMA(int r1);

    void setHeadLampDelayLight(int r1);

    void setHeadLampHeight(int r1);

    void setListener(ILampListener iLampListener);
}
