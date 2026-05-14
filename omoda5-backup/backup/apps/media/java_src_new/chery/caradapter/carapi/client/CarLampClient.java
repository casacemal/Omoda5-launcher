package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
import android.car.YFVehiclePropertyIds;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.ILampListener;
import com.chery.caradapter.carapi.interfaces.managers.ILampManager;

/* loaded from: classes.dex */
public class CarLampClient extends CarBaseClient implements ILampManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarLampClient.class);
    private static volatile CarLampClient sInstance = null;
    private HandlerThread handlerThread;
    private ILampListener listener;
    private CarHandler mHandler;
    private ProxyPropertyEventCallback proxyPropertyManager = new ProxyPropertyEventCallback();
    private int mDayTimeLightMode = 0;
    private int mLampHeight = 0;
    private int mLampDelayLight = 0;
    private int mHMA = 2;

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 557854756:
                    CarLampClient.this.onDayTimeLightMode(message.arg1);
                    break;
                case 557854757:
                    CarLampClient.this.onHMA(message.arg1);
                    break;
                case 557854758:
                    CarLampClient.this.onHeadLampHeight(message.arg1);
                    break;
                case 557854759:
                    CarLampClient.this.onHeadLampDelayLight(message.arg1);
                    break;
            }
            super.handleMessage(message);
        }
    }

    private CarLampClient() {
    }

    public static CarLampClient getInstance() {
        if (sInstance == null) {
            synchronized (CarLampClient.class) {
                if (sInstance == null) {
                    sInstance = new CarLampClient();
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
        this.mDayTimeLightMode = this.carPropertyManager.getIntProperty(557854756, 0);
        this.mLampHeight = this.carPropertyManager.getIntProperty(557854758, 0);
        this.mLampDelayLight = this.carPropertyManager.getIntProperty(557854759, 0);
        this.mHMA = this.carPropertyManager.getIntProperty(557854757, 0);
        PFLog.m29i(TAG, " CarLampClient init: mDayTimeLightMode:" + this.mDayTimeLightMode + ",mLampHeight:" + this.mLampHeight + ",mLampDelayLight:" + this.mLampDelayLight + ",mHMA:" + this.mHMA);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854756, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854758, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854759, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854757, 1.0f);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public void setListener(ILampListener iLampListener) {
        this.listener = iLampListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public int getDRLMode() {
        return this.mDayTimeLightMode;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public void setDRLMode(int r2) {
        setIntProperty(557854756, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public int getHeadLampHeight() {
        return this.mLampHeight;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public void setHeadLampHeight(int r2) {
        setIntProperty(557854758, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public int getHeadLampDelayLight() {
        return this.mLampDelayLight;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public void setHeadLampDelayLight(int r2) {
        setIntProperty(557854759, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public int getHMA() {
        return this.mHMA;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.ILampManager
    public void setHMA(int r2) {
        setIntProperty(557854757, r2);
    }

    private void setIntProperty(int r2, int r3) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setIntProperty(r2, 0, r3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDayTimeLightMode(int r1) {
        ILampListener iLampListener = this.listener;
        if (iLampListener != null) {
            iLampListener.onDRLModeSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHeadLampHeight(int r1) {
        ILampListener iLampListener = this.listener;
        if (iLampListener != null) {
            iLampListener.onHeadLampHeightFeedbackSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHeadLampDelayLight(int r1) {
        ILampListener iLampListener = this.listener;
        if (iLampListener != null) {
            iLampListener.onHeadLampDelayLightSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHMA(int r1) {
        ILampListener iLampListener = this.listener;
        if (iLampListener != null) {
            iLampListener.onHMASts(r1);
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
            switch (carPropertyValue.getPropertyId()) {
                case 557854756:
                    CarLampClient.this.mDayTimeLightMode = ((Integer) carPropertyValue.getValue()).intValue();
                    CarLampClient.this.mHandler.obtainMessage(557854756, CarLampClient.this.mDayTimeLightMode, 0).sendToTarget();
                    PFLog.m29i(CarLampClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarLampClient.this.mDayTimeLightMode)));
                    break;
                case 557854757:
                    CarLampClient.this.mHMA = ((Integer) carPropertyValue.getValue()).intValue();
                    CarLampClient.this.mHandler.obtainMessage(557854757, CarLampClient.this.mHMA, 0).sendToTarget();
                    PFLog.m29i(CarLampClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarLampClient.this.mHMA)));
                    break;
                case 557854758:
                    CarLampClient.this.mLampHeight = ((Integer) carPropertyValue.getValue()).intValue();
                    CarLampClient.this.mHandler.obtainMessage(557854758, CarLampClient.this.mLampHeight, 0).sendToTarget();
                    PFLog.m29i(CarLampClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarLampClient.this.mLampHeight)));
                    break;
                case 557854759:
                    CarLampClient.this.mLampDelayLight = ((Integer) carPropertyValue.getValue()).intValue();
                    CarLampClient.this.mHandler.obtainMessage(557854759, CarLampClient.this.mLampDelayLight, 0).sendToTarget();
                    PFLog.m29i(CarLampClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarLampClient.this.mLampDelayLight)));
                    break;
            }
        }
    }
}
