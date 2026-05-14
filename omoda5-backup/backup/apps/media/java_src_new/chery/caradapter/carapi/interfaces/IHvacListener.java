package com.chery.caradapter.carapi.interfaces;

/* loaded from: classes.dex */
public interface IHvacListener {
    void onAcModeCustomSts(int r1);

    void onAcRequestDisplaySts(int r1);

    void onAutoDefrostOnSts(int r1);

    void onAutoDisplaySts(int r1);

    void onBeepSts(int r1);

    void onBlowAdvanceOnSts(int r1);

    void onBlowDelayOffSts(int r1);

    void onBlowSpeedLevelDisplaySts(int r1);

    void onCirculationModeDisplaySts(int r1);

    void onDisplayActive(int r1);

    void onElecClimateTemp(int r1);

    void onFGHeatSts(int r1);

    void onFragranceWelcomeModeSts(int r1);

    void onFrontDeforestMaxDisplaySts(int r1);

    void onModeAdjustDisplaySts(int r1);

    void onPm25AutoRunSetSts(int r1);

    void onRefreshFunctionSts(int r1);

    void onSeatHeatDriver(int r1);

    void onSeatHeatPassenger(int r1);

    void onSeatVentDriver(int r1);

    void onSeatVentPassenger(int r1);

    void onSelfTestActive(int r1);

    void onSelfTestResult(int r1);

    void onT1eBlowSpeedLevelDisplaySts(int r1);

    void onT1eDriverTemp(float f);

    void onT1ePassengerTemp(float f);

    void onTemperatureLeftC(int r1);

    void onTemperatureLeftF(int r1);

    void onTemperatureRightC(int r1);

    void onTemperatureRightF(int r1);

    void onTemperatureUnitSts(int r1);

    void onWorkingSts(int r1);

    void onZoneSelectionDisplaySts(int r1);
}
