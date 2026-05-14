package com.chery.caradapter.carapi.interfaces;

/* loaded from: classes.dex */
public interface IBasicListener {
    void onAutoFoldSts(int r1);

    void onAutoLockSts(int r1);

    void onCWCChargingSts(int r1);

    void onCWCPhoneForgottenMsg(int r1);

    void onCWCPhoneForgottenSts(int r1);

    void onCWCWorkingSts(int r1);

    void onCtpKeyVoiceRemind(int r1);

    void onDMSSts(int r1);

    void onDayNightModeLight(int r1);

    void onICMBrightness(int r1);

    void onIcmTimeChanged(String str);

    void onKeySts(int r1);

    void onLightDetectedSts(int r1);

    void onPLGMaxPosition(int r1);

    void onRemoteLockFeedbackSts(int r1);

    void onSSMStatus(int r1);

    void onScreenOverTemperature(int r1);

    void onSrfSts(int r1);

    void onTrunkSts(int r1);

    void onVehicleSpeed(float f);

    void onWindowSts(int r1, int r2);
}
