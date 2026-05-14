package com.yfve.t19c.projection.androidauto.proxy;

import android.media.session.MediaSession;

/* loaded from: classes.dex */
public class AAProxyListener {
    public static int MEDIA_SOURCE_JUMP_FAILED = -1;
    public static int MEDIA_SOURCE_JUMP_SUCCEED = 0;
    public static int PREPARE_HFP_PARING_RESULT_FAILURE = -1;
    public static int PREPARE_HFP_PARING_RESULT_SUCCESS = 0;
    public static int SURFACE_LAYOUT_MODE_CENTER = 2;
    public static int SURFACE_LAYOUT_MODE_LEFT = 1;
    public static int SURFACE_LAYOUT_MODE_RIGHT = 3;
    public static final int VIDEO_FOCUS_MODE_NATIVE = 2;
    public static final int VIDEO_FOCUS_MODE_PROJECT = 1;
    public static int VOICE_SESSION_END = 2;
    public static int VOICE_SESSION_START = 1;

    public void OnPrepareRemoteHfpDevice(String str) {
    }

    public void onAAMediaSourceResponse(int r1) {
    }

    public void onAuthenticationResult(int r1) {
    }

    public void onHidePermissionPrompt() {
    }

    public void onNotification(String str) {
    }

    public void onNotifyDevTransport(String str, String str2) {
    }

    public void onResizeSurfaceView(int r1, int r2, int r3) {
    }

    public void onSessionStatusUpdate(int r1, String str, String str2) {
    }

    public void onSetVideoFocus(int r1) {
    }

    public void onShowPermissionPrompt() {
    }

    public void onTakeOverDilarPage(boolean z) {
    }

    public void onUpdateActivityState(int r1) {
    }

    public void onUpdateMediaToken(MediaSession.Token token) {
    }

    public void onUpdateVoiceSessionState(int r1) {
    }
}
