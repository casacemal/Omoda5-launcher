package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IBasicListener;

/* loaded from: classes.dex */
public interface IBasicManager {
    int getAutoFoldSts();

    int getAutoLockSts();

    int getCWCChargingSts();

    int getCWCPhoneForgottenMsg();

    int getCWCPhoneForgottenSts();

    int getCWCWorkingSts();

    int getDMSSts();

    int getDayNightModeLightSts();

    int getICMBrightness();

    String getIcmTime();

    int getKeySts();

    int getLightDetectedSts();

    int getPLGMaxPosition();

    int getRemoteLockFeedbackSts();

    int getSSMStatus();

    int getScreenOverTemperatureSts();

    int getSrfSts();

    int getTrunkSts();

    float getVehicleSpeed();

    int getWindowSts(int r1);

    void setAutoFoldSts(int r1);

    void setAutoLockSts(int r1);

    void setCWCPhoneForgottenSts(int r1);

    void setCWCWorkingSts(int r1);

    void setDMSSwt(int r1);

    void setICMBrightness(int r1);

    void setIcmTheme(int r1);

    void setIcmTime(String str);

    void setIcmTimeFormat(int r1);

    void setIssSwitch(int r1);

    void setLanguage(int r1);

    void setListener(IBasicListener iBasicListener);

    void setPLGMaxPosition(int r1);

    void setRemoteLockFeedback(int r1);

    void setSrfSts(int r1);

    void setTrunkSts(int r1);

    void setWindowSts(int r1);
}
