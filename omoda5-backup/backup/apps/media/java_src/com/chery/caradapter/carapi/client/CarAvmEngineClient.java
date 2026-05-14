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
import com.chery.caradapter.carapi.interfaces.IAvmEngineListener;
import com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CarAvmEngineClient extends CarBaseClient implements IAvmEngineManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarAvmEngineClient.class);
    private static volatile CarAvmEngineClient sInstance = null;
    private HandlerThread handlerThread;
    private IAvmEngineListener listener;
    private CarHandler mHandler;
    private ProxyPropertyEventCallback proxyPropertyManager = new ProxyPropertyEventCallback();

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 561037312:
                    CarAvmEngineClient.this.onEnterExitState((byte[]) message.obj);
                    break;
                case 561037314:
                    CarAvmEngineClient.this.onEngineerMode((byte[]) message.obj);
                    break;
                case 561037315:
                    CarAvmEngineClient.this.onCalibrationStatus((byte[]) message.obj);
                    break;
                case 561037316:
                    CarAvmEngineClient.this.onViewStatus((byte[]) message.obj);
                    break;
                case 561037317:
                    CarAvmEngineClient.this.onViewParams((byte[]) message.obj);
                    break;
                case 561037318:
                    CarAvmEngineClient.this.onLogSettings((byte[]) message.obj);
                    break;
                case 561037319:
                    CarAvmEngineClient.this.onDataStorage((byte[]) message.obj);
                    break;
                case 561037320:
                    CarAvmEngineClient.this.onSimulateOthers((byte[]) message.obj);
                    break;
                case 561037321:
                    CarAvmEngineClient.this.onAvmVersion((byte[]) message.obj);
                    break;
            }
            super.handleMessage(message);
        }
    }

    private CarAvmEngineClient() {
    }

    public static CarAvmEngineClient getInstance() {
        if (sInstance == null) {
            synchronized (CarAvmEngineClient.class) {
                if (sInstance == null) {
                    sInstance = new CarAvmEngineClient();
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
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037312, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037314, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037315, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037316, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037317, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037318, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037319, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037320, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 561037321, 1.0f);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setListener(IAvmEngineListener iAvmEngineListener) {
        this.listener = iAvmEngineListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setEnterExitState(byte[] bArr) {
        sendPropertyData(561037312, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setLicensePlate(byte[] bArr) {
        sendPropertyData(561037313, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setEngineerMode(byte[] bArr) {
        sendPropertyData(561037314, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setCalibrationStatus(byte[] bArr) {
        sendPropertyData(561037315, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setViewStatus(byte[] bArr) {
        sendPropertyData(561037316, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setViewParams(byte[] bArr) {
        sendPropertyData(561037317, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setLogSettings(byte[] bArr) {
        sendPropertyData(561037318, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setDataStorage(byte[] bArr) {
        sendPropertyData(561037319, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setSimulateOthers(byte[] bArr) {
        sendPropertyData(561037320, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setAvmVersion(byte[] bArr) {
        sendPropertyData(561037321, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void setAvmTouchEvent(byte[] bArr) {
        sendPropertyData(561037322, bArr);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmEngineManager
    public void factoryReset(byte[] bArr) {
        sendPropertyData(561037323, bArr);
    }

    private void sendPropertyData(int r3, byte[] bArr) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setProperty(byte[].class, r3, 0, bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEnterExitState(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onEnterExitState(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEngineerMode(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onEngineerMode(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCalibrationStatus(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onCalibrationStatus(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onViewStatus(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onViewStatus(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onViewParams(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onViewParams(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLogSettings(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onLogSettings(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDataStorage(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onDataStorage(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSimulateOthers(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onSimulateOthers(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAvmVersion(byte[] bArr) {
        IAvmEngineListener iAvmEngineListener = this.listener;
        if (iAvmEngineListener != null) {
            iAvmEngineListener.onAvmVersion(bArr);
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
            int propertyId = carPropertyValue.getPropertyId();
            PFLog.m29i(CarAvmEngineClient.TAG, "onChangeEvent: app receive call back:" + YFVehiclePropertyIds.toString(propertyId));
            switch (propertyId) {
                case 561037312:
                case 561037314:
                case 561037315:
                case 561037316:
                case 561037317:
                case 561037318:
                case 561037319:
                case 561037320:
                case 561037321:
                    byte[] bArr = (byte[]) carPropertyValue.getValue();
                    CarAvmEngineClient.this.mHandler.obtainMessage(propertyId, bArr).sendToTarget();
                    PFLog.m29i(CarAvmEngineClient.TAG, String.format("onChangeEvent: app receive call back: %s : %s", YFVehiclePropertyIds.toString(propertyId), Arrays.toString(bArr)));
                    break;
            }
        }
    }
}
