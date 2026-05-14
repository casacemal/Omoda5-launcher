package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
import android.car.YFVehiclePropertyIds;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.media.AudioSetting;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IAmblightListener;
import com.chery.caradapter.carapi.interfaces.managers.IAmblightManager;

/* loaded from: classes.dex */
public class CarAmblightClient extends CarBaseClient implements IAmblightManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarAmblightClient.class);
    private static volatile CarAmblightClient sInstance = null;
    private HandlerThread handlerThread;
    private IAmblightListener listener;
    private CarHandler mHandler;
    private ProxyPropertyEventCallback proxyPropertyManager = new ProxyPropertyEventCallback();
    private int mAmblight = 0;
    private int mDriverMode = 0;
    private int mBrightness = 1;
    private int mDimmingColor = 1;
    private int mMusicMode = 2;
    private int mOutSideMusicMode = 0;

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 != 557854784) {
                switch (r0) {
                    case 557854760:
                        CarAmblightClient.this.onAmblight(message.arg1);
                        break;
                    case 557854761:
                        CarAmblightClient.this.onAssociatedDriverMode(message.arg1);
                        break;
                    case 557854762:
                        CarAmblightClient.this.onBrightness(message.arg1);
                        break;
                    case 557854763:
                        CarAmblightClient.this.onTheaterDimmingColor(message.arg1);
                        break;
                }
            } else {
                CarAmblightClient.this.onMusicMode(message.arg1);
                CarAmblightClient.this.setAudioMusicLight();
            }
            super.handleMessage(message);
        }
    }

    private CarAmblightClient() {
    }

    public static CarAmblightClient getInstance() {
        if (sInstance == null) {
            synchronized (CarAmblightClient.class) {
                if (sInstance == null) {
                    sInstance = new CarAmblightClient();
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
        this.mAmblight = this.carPropertyManager.getIntProperty(557854760, 0);
        this.mDriverMode = this.carPropertyManager.getIntProperty(557854761, 0);
        this.mBrightness = this.carPropertyManager.getIntProperty(557854762, 0);
        this.mDimmingColor = this.carPropertyManager.getIntProperty(557854763, 0);
        this.mMusicMode = this.carPropertyManager.getIntProperty(557854784, 0);
        PFLog.m29i(TAG, "CarAmblightClient init: mAmblight:" + this.mAmblight + ",mDriverMode:" + this.mDriverMode + ",mBrightness:" + this.mBrightness + ",mDimmingColor:" + this.mDimmingColor);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854760, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854761, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854762, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854763, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854784, 1.0f);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public void setListener(IAmblightListener iAmblightListener) {
        this.listener = iAmblightListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public int getAmblightOn() {
        return this.mAmblight;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public void setAmblightOn(int r2) {
        setIntProperty(557854760, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public int getAssociatedDriverMode() {
        return this.mDriverMode;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public void setAssociatedDriverMode(int r2) {
        setIntProperty(557854761, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public int getBrightness() {
        return this.mBrightness;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public void setBrightness(int r2) {
        setIntProperty(557854762, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public void setTheaterDimmingColor(int r2) {
        setIntProperty(557854763, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public int getTheaterDimmingColor() {
        return this.mDimmingColor;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public int getMusicMode() {
        return this.mMusicMode;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public void setMusicMode(int r2) {
        setIntProperty(557854784, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAmblightManager
    public void setOutMusicShow(int r4) {
        PFLog.m29i(TAG, "setOutMusicShow:   " + r4);
        this.mOutSideMusicMode = r4;
        setIntProperty(557854806, r4);
        setAudioMusicLight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAudioMusicLight() {
        int r2 = 1;
        if (this.mOutSideMusicMode != 1 && this.mMusicMode != 1) {
            r2 = 0;
        }
        PFLog.m29i(TAG, "setAudioMusicLight: sendValue = " + r2 + ",mOutSideMusicMode = " + this.mOutSideMusicMode + ",mMusicMode = " + this.mMusicMode);
        this.carAudioManager.setAudioSetting(new AudioSetting("music_light", r2, 0, 0));
    }

    private void setIntProperty(int r2, int r3) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setIntProperty(r2, 0, r3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAmblight(int r1) {
        IAmblightListener iAmblightListener = this.listener;
        if (iAmblightListener != null) {
            iAmblightListener.onAmblightOn(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAssociatedDriverMode(int r1) {
        IAmblightListener iAmblightListener = this.listener;
        if (iAmblightListener != null) {
            iAmblightListener.onAssociatedDriverMode(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBrightness(int r1) {
        IAmblightListener iAmblightListener = this.listener;
        if (iAmblightListener != null) {
            iAmblightListener.onBrightness(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTheaterDimmingColor(int r1) {
        IAmblightListener iAmblightListener = this.listener;
        if (iAmblightListener != null) {
            iAmblightListener.onTheaterDimmingColor(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMusicMode(int r1) {
        IAmblightListener iAmblightListener = this.listener;
        if (iAmblightListener != null) {
            iAmblightListener.onMusicMode(r1);
        }
    }

    private class ProxyPropertyEventCallback implements CarPropertyManager.CarPropertyEventCallback {
        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onErrorEvent(int r1, int r2) {
        }

        private ProxyPropertyEventCallback() {
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onChangeEvent(CarPropertyValue carPropertyValue) {
            PFLog.m29i(CarAmblightClient.TAG, "onChangeEvent: app receive call back:" + YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()));
            int propertyId = carPropertyValue.getPropertyId();
            if (propertyId != 557854784) {
                switch (propertyId) {
                    case 557854760:
                        CarAmblightClient.this.mAmblight = ((Integer) carPropertyValue.getValue()).intValue();
                        CarAmblightClient.this.mHandler.obtainMessage(557854760, CarAmblightClient.this.mAmblight, 0).sendToTarget();
                        PFLog.m29i(CarAmblightClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAmblightClient.this.mAmblight)));
                        break;
                    case 557854761:
                        CarAmblightClient.this.mDriverMode = ((Integer) carPropertyValue.getValue()).intValue();
                        CarAmblightClient.this.mHandler.obtainMessage(557854761, CarAmblightClient.this.mDriverMode, 0).sendToTarget();
                        PFLog.m29i(CarAmblightClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAmblightClient.this.mDriverMode)));
                        break;
                    case 557854762:
                        CarAmblightClient.this.mBrightness = ((Integer) carPropertyValue.getValue()).intValue();
                        CarAmblightClient.this.mHandler.obtainMessage(557854762, CarAmblightClient.this.mBrightness, 0).sendToTarget();
                        PFLog.m29i(CarAmblightClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAmblightClient.this.mBrightness)));
                        break;
                    case 557854763:
                        CarAmblightClient.this.mDimmingColor = ((Integer) carPropertyValue.getValue()).intValue();
                        CarAmblightClient.this.mHandler.obtainMessage(557854763, CarAmblightClient.this.mDimmingColor, 0).sendToTarget();
                        PFLog.m29i(CarAmblightClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAmblightClient.this.mDimmingColor)));
                        break;
                }
            }
            CarAmblightClient.this.mMusicMode = ((Integer) carPropertyValue.getValue()).intValue();
            CarAmblightClient.this.mHandler.obtainMessage(557854784, CarAmblightClient.this.mMusicMode, 0).sendToTarget();
            PFLog.m29i(CarAmblightClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAmblightClient.this.mMusicMode)));
        }
    }
}
