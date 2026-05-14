package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IPowerListener;

/* loaded from: classes.dex */
public interface ICarPowerManager {
    boolean getBackLightStatus();

    int getBootReason();

    int getCurrentPowerMode();

    String getMCUVersion();

    String getMCUVersionForApp();

    void requestMCUDoFactoryReset();

    void requestRestartNow();

    void sendEventToMCU(boolean z);

    void sendPROModeExit(boolean z);

    void setBackLightEnable(boolean z);

    void setListener(IPowerListener iPowerListener);
}
