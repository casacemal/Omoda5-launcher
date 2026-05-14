package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IAmblightListener;

/* loaded from: classes.dex */
public interface IAmblightManager {
    int getAmblightOn();

    int getAssociatedDriverMode();

    int getBrightness();

    int getMusicMode();

    int getTheaterDimmingColor();

    void setAmblightOn(int r1);

    void setAssociatedDriverMode(int r1);

    void setBrightness(int r1);

    void setListener(IAmblightListener iAmblightListener);

    void setMusicMode(int r1);

    void setOutMusicShow(int r1);

    void setTheaterDimmingColor(int r1);
}
