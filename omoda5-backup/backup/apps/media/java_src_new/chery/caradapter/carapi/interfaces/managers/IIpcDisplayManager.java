package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IIpcDisplayListener;

/* loaded from: classes.dex */
public interface IIpcDisplayManager {
    void setAmRadioFrequanceValue(int r1);

    void setDisPlayModeOn(int r1);

    void setDisplayInfo(int r1, int r2, byte[] bArr);

    void setFmRadioFrequanceValue(float f);

    void setListener(IIpcDisplayListener iIpcDisplayListener);

    void setRadioFrequanceMode(int r1);

    void setRadioResearchSts(int r1);

    void setSourceStationMode(int r1);
}
