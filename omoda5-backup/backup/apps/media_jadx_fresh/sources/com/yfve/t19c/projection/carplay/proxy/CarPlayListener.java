package com.yfve.t19c.projection.carplay.proxy;

import android.media.session.MediaSession;

/* loaded from: classes.dex */
public class CarPlayListener {
    public static final int CP_CallSts_Active = 4;
    public static final int CP_CallSts_Connecting = 3;
    public static final int CP_CallSts_Disconnected = 0;
    public static final int CP_CallSts_Disconnecting = 6;
    public static final int CP_CallSts_Held = 5;
    public static final int CP_CallSts_Ringing = 2;
    public static final int CP_CallSts_Sending = 1;
    public static final int NotifyType_CP_NotFront = 1;

    public void onNotification(String str) {
    }

    public void onNotiftIApAuthStatus(int r1, int r2) {
    }

    public void onNotifyCPReadyToAuth(String str, int r2) {
    }

    public void onNotifyDevTransport(String str, String str2, boolean z) {
    }

    public void onNotifyDisableBt(String str) {
    }

    public void onNotifyLauncherPop(int r1, String str, String str2) {
    }

    public void onNotifyVideoChange(boolean z) {
    }

    public void onNotifyWifi(int r1, boolean z, String str, String str2) {
    }

    public void onNotifyWirelessCPEnalbe(boolean z) {
    }

    public void onSessionStsUpdate(int r1, String str, String str2) {
    }

    public void onSetVideoFocus(boolean z) {
    }

    public void onUSBIAP2DeviceStsChanged(boolean z, String str) {
    }

    public void onUpdateCallInfo(int r1, String str, String str2, long j) {
    }

    public void onUpdateClientSts(boolean z) {
    }

    public void onUpdateMediaToken(MediaSession.Token token) {
    }

    public void onUpdateNaviInfo(String str, int r2, int r3, int r4, String str2) {
    }

    public void onUpdateSiriSts(boolean z) {
    }
}
