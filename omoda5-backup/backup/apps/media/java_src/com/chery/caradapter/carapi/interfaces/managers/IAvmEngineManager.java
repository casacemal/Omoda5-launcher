package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IAvmEngineListener;

/* loaded from: classes.dex */
public interface IAvmEngineManager {
    void factoryReset(byte[] bArr);

    void setAvmTouchEvent(byte[] bArr);

    void setAvmVersion(byte[] bArr);

    void setCalibrationStatus(byte[] bArr);

    void setDataStorage(byte[] bArr);

    void setEngineerMode(byte[] bArr);

    void setEnterExitState(byte[] bArr);

    void setLicensePlate(byte[] bArr);

    void setListener(IAvmEngineListener iAvmEngineListener);

    void setLogSettings(byte[] bArr);

    void setSimulateOthers(byte[] bArr);

    void setViewParams(byte[] bArr);

    void setViewStatus(byte[] bArr);
}
