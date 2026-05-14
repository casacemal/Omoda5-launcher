package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager;

/* loaded from: classes.dex */
public class CarPowerClient extends CarBaseClient implements ICarPowerManager {
    private static final int POWER_MODE_CHANGE = 0;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarPowerClient.class);
    private static volatile CarPowerClient sInstance = null;
    private ProxyCarPowerCallback carPowerCallback = new ProxyCarPowerCallback();
    private HandlerThread handlerThread;
    private int mCurrentPowerMode;
    private CarHandler mHandler;
    private IPowerListener powerListener;

    public static CarPowerClient getInstance() {
        if (sInstance == null) {
            synchronized (CarPowerClient.class) {
                if (sInstance == null) {
                    sInstance = new CarPowerClient();
                }
            }
        }
        return sInstance;
    }

    @Override // com.chery.caradapter.carapi.client.CarBaseClient
    public void init() {
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new CarHandler(this.handlerThread.getLooper());
        this.carPowerManager.setListener(this.carPowerCallback);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public void setListener(IPowerListener iPowerListener) {
        this.powerListener = iPowerListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public void setBackLightEnable(boolean z) {
        PFLog.m25d(TAG, "setBackLightEnable " + z);
        if (this.carPowerManager != null) {
            this.carPowerManager.setBackLightEnable(z);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public boolean getBackLightStatus() {
        if (this.carPowerManager != null) {
            return this.carPowerManager.getBackLightStatus();
        }
        return true;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public int getBootReason() {
        if (this.carPowerManager != null) {
            return this.carPowerManager.getBootReason();
        }
        return 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public void requestRestartNow() {
        if (this.carPowerManager != null) {
            this.carPowerManager.requestRestartNow();
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public String getMCUVersion() {
        if (this.carPowerManager != null) {
            return this.carPowerManager.getMCUVersion();
        }
        return null;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public String getMCUVersionForApp() {
        if (this.carPowerManager != null) {
            return this.carPowerManager.getMCUVersionForApp();
        }
        return null;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public int getCurrentPowerMode() {
        int currentPowerMode;
        if (this.carPowerManager == null || (currentPowerMode = this.carPowerManager.getCurrentPowerMode()) == 9) {
            return 12;
        }
        return currentPowerMode;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public void sendEventToMCU(boolean z) {
        if (this.carPowerManager != null) {
            this.carPowerManager.sendEventToMCU(z);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public void sendPROModeExit(boolean z) {
        if (this.carPowerManager != null) {
            this.carPowerManager.sendPROModeExit(z);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ICarPowerManager
    public void requestMCUDoFactoryReset() {
        if (this.carPowerManager != null) {
            this.carPowerManager.requestMCUDoFactoryReset();
        }
    }

    private class ProxyCarPowerCallback implements CarPowerManager.CarPowerStateListener {
        private ProxyCarPowerCallback() {
        }

        @Override // android.car.hardware.power.CarPowerManager.CarPowerStateListener
        public void onStateChanged(int r4) {
            PFLog.m25d(CarPowerClient.TAG, "onStateChanged " + r4);
            CarPowerClient.this.mCurrentPowerMode = r4;
            CarPowerClient.this.mHandler.obtainMessage(0, CarPowerClient.this.mCurrentPowerMode, 0).sendToTarget();
        }
    }

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                CarPowerClient.this.onStateChanged(message.arg1);
            }
            super.handleMessage(message);
        }
    }

    @Override // com.chery.caradapter.carapi.client.CarBaseClient
    public void setPropertyManager(CarPropertyManager carPropertyManager) {
        this.carPropertyManager = carPropertyManager;
    }

    @Override // com.chery.caradapter.carapi.client.CarBaseClient
    public void setAudioManager(CarAudioManager carAudioManager) {
        this.carAudioManager = carAudioManager;
    }

    @Override // com.chery.caradapter.carapi.client.CarBaseClient
    public void setInfoManager(CarInfoManager carInfoManager) {
        this.carInfoManager = carInfoManager;
    }

    @Override // com.chery.caradapter.carapi.client.CarBaseClient
    public void setPowerManager(CarPowerManager carPowerManager) {
        this.carPowerManager = carPowerManager;
    }

    private CarPowerClient() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStateChanged(int r4) {
        PFLog.m25d(TAG, "onStateChanged " + r4);
        IPowerListener iPowerListener = this.powerListener;
        if (iPowerListener != null) {
            iPowerListener.onStateChanged(r4);
        }
    }
}
