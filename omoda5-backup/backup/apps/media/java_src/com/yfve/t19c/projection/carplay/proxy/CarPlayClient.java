package com.yfve.t19c.projection.carplay.proxy;

import android.content.Context;
import android.media.session.MediaSession;
import android.util.Log;
import android.view.Surface;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class CarPlayClient {
    public static final int Priority_High = 2;
    public static final int Priority_Low = 0;
    public static final int Priority_Mid = 1;
    public static final String TAG = CarPlayClient.class.getSimpleName();
    private CarPlayNativeCarPlayClient mCarPlayClient;
    private CarPlayJAVAClient mCarPlayJavaClient;

    public CarPlayClient() {
        this.mCarPlayClient = null;
        this.mCarPlayJavaClient = null;
        this.mCarPlayClient = new CarPlayNativeCarPlayClient();
        this.mCarPlayJavaClient = new CarPlayJAVAClient();
    }

    public void initialise(Context context) {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.initialise(context);
        }
    }

    public void uninitialise(Context context) {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.uninitialise(context);
        }
    }

    public void registerListener(CarPlayListener carPlayListener) {
        CarPlayNativeCarPlayClient carPlayNativeCarPlayClient = this.mCarPlayClient;
        if (carPlayNativeCarPlayClient != null) {
            carPlayNativeCarPlayClient.registerListener(carPlayListener);
        }
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.registerListener(carPlayListener);
        }
    }

    public void unregisterListener(CarPlayListener carPlayListener) {
        CarPlayNativeCarPlayClient carPlayNativeCarPlayClient = this.mCarPlayClient;
        if (carPlayNativeCarPlayClient != null) {
            carPlayNativeCarPlayClient.unregisterListener(carPlayListener);
        }
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.unregisterListener(carPlayListener);
        }
    }

    public void exitActivity() {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.exitActivity();
        }
    }

    public void touchScreenUpdate(byte b, int r2, int r3) {
        CarPlayNativeCarPlayClient carPlayNativeCarPlayClient = this.mCarPlayClient;
        if (carPlayNativeCarPlayClient != null) {
            carPlayNativeCarPlayClient.touchScreenUpdate(b, r2, r3);
        }
    }

    public void requestUI(String str) throws UnsupportedEncodingException {
        CarPlayNativeCarPlayClient carPlayNativeCarPlayClient = this.mCarPlayClient;
        if (carPlayNativeCarPlayClient != null) {
            carPlayNativeCarPlayClient.requestUI(str);
        } else {
            Log.d(TAG, "CarPlayNativeCarPlayClient is null");
        }
    }

    public void startSession(String str, boolean z) {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.startCarPlaySession(str, z);
        }
    }

    public MediaSession.Token getMediaToken() {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            return carPlayJAVAClient.getMediaToken();
        }
        return null;
    }

    public boolean getCarPlayVideoState() {
        Log.d(TAG, "getCarPlayVideoState");
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            return carPlayJAVAClient.getCarPlayVideoState();
        }
        return false;
    }

    public void setCarPlayConnect() {
        Log.d(TAG, "setCarPlayConnect");
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.setCarPlayConnect();
        }
    }

    public void stopSession() {
        CarPlayNativeCarPlayClient carPlayNativeCarPlayClient = this.mCarPlayClient;
        if (carPlayNativeCarPlayClient != null) {
            carPlayNativeCarPlayClient.stopCarPlaySession();
        }
    }

    public void lunchApp(String str) {
        CarPlayNativeCarPlayClient carPlayNativeCarPlayClient = this.mCarPlayClient;
        if (carPlayNativeCarPlayClient != null) {
            carPlayNativeCarPlayClient.lunchCarPlayApp(str);
        }
    }

    public void setSurface(Surface surface) {
        if (this.mCarPlayClient != null) {
            Log.d(TAG, "setSurface");
            this.mCarPlayClient.setSurface(surface);
        } else {
            Log.d(TAG, "CarPlayNativeCarPlayClient is null");
        }
    }

    public void roleSwitchComplete(String str) {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.roleSwitchComplete(str);
        }
    }

    public void requestVideoResource(boolean z) throws UnsupportedEncodingException {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null && z) {
            carPlayJAVAClient.requestNativeUI();
        }
        CarPlayNativeCarPlayClient carPlayNativeCarPlayClient = this.mCarPlayClient;
        if (carPlayNativeCarPlayClient == null || z) {
            return;
        }
        carPlayNativeCarPlayClient.requestUI(null);
    }

    public void requestCPMedia() {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.requestCPMedia();
        }
    }

    public void requestResource(boolean z, boolean z2, boolean z3, int r4) {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            carPlayJAVAClient.requestResource(z, z2, z3, r4);
        }
    }

    public boolean isCPStarted() {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        if (carPlayJAVAClient != null) {
            return carPlayJAVAClient.isCPStarted();
        }
        return false;
    }

    public String getSerialNumber() {
        CarPlayJAVAClient carPlayJAVAClient = this.mCarPlayJavaClient;
        return carPlayJAVAClient != null ? carPlayJAVAClient.getSerialNumber() : "";
    }
}
