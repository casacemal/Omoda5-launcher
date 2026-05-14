package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IHvacListener;

/* loaded from: classes.dex */
public interface IHvacManager {
    int getAcModeCustomSts();

    int getAcRequestKeySts();

    int getAutoDefrostOnSts();

    int getAutoDisplaySts();

    int getBeepSts();

    int getBlowAdvanceOnSts();

    int getBlowDelayOffSts();

    int getBlowSpeedLevelDisplaySts();

    int getCirculationModeDisplaySts();

    int getClimateDisplaySts();

    int getClmOn();

    int getElecClimateTemp();

    int getFGHeatSts();

    int getFragranceWelcomeModeSts();

    int getFrontDeforestMaxDisplaySts();

    int getModeAdjustDisplaySts();

    int getPm25AutoRunSetSts();

    int getRefreshFunctionSts();

    int getSeatHeatDriver();

    int getSeatHeatPassenger();

    int getSeatVentDriver();

    int getSeatVentPassenger();

    int getSelfTestActive();

    int getSelfTestResult();

    int getT1eBlowSpeedLevelDisplaySts();

    float getT1eDriverTemp();

    float getT1ePassengerTemp();

    int getTemperatureLeftC();

    int getTemperatureLeftF();

    int getTemperatureRightC();

    int getTemperatureRightF();

    int getTemperatureUnitSts();

    int getZoneSelectionDisplaySts();

    void setAcModeCustom(int r1);

    void setAcRequestKeySts(int r1);

    void setAutoDefrostOnKeySts(int r1);

    void setAutoKeySts(int r1);

    void setBeep(int r1);

    void setBlowAdvanceOnKeySts(int r1);

    void setBlowDelayOffKeySts(int r1);

    void setBlowSpeedLevelKeySts(int r1);

    void setCirculationModeKeySts(int r1);

    void setClimateDisplay(int r1);

    void setClmOn(int r1);

    void setElecClimateTemp(int r1);

    void setFGHeat(int r1);

    void setFragranceWelcomeMode(int r1);

    void setListener(IHvacListener iHvacListener);

    void setMaxFrontDeforestSts(int r1);

    void setModeAdjustKeySts(int r1);

    void setPm25AutoRunSet(int r1);

    void setRefreshFunction(int r1);

    void setSeatHeatDriver(int r1);

    void setSeatHeatPassenger(int r1);

    void setSeatVentDriver(int r1);

    void setSeatVentPassenger(int r1);

    void setT1eBlowSpeedLevelKeySts(int r1);

    void setT1eDriverTemp(float f);

    void setT1ePassengerTemp(float f);

    void setTemperatureLeftC(int r1);

    void setTemperatureLeftF(int r1);

    void setTemperatureRightC(int r1);

    void setTemperatureRightF(int r1);

    void setTemperatureUnit(int r1);

    void setZoneSelectionKeySts(int r1);
}
