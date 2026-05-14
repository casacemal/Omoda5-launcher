package com.chery.caradapter.carapi.interfaces;

/* loaded from: classes.dex */
public interface IAvmEngineListener {
    void onAvmVersion(byte[] bArr);

    void onCalibrationStatus(byte[] bArr);

    void onDataStorage(byte[] bArr);

    void onEngineerMode(byte[] bArr);

    void onEnterExitState(byte[] bArr);

    void onLogSettings(byte[] bArr);

    void onSimulateOthers(byte[] bArr);

    void onViewParams(byte[] bArr);

    void onViewStatus(byte[] bArr);
}
