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
import com.chery.caradapter.carapi.interfaces.IAvmListener;
import com.chery.caradapter.carapi.interfaces.managers.IAvmManager;

/* loaded from: classes.dex */
public class CarAvmClient extends CarBaseClient implements IAvmManager {
    private static final int GEAR_POSITION_DELAY_TIME = 500;
    private static final int MSG_SEND_CHECK_GEAR_POSITION = 51;
    private static final int MSG_SEND_CHECK_MANUAL_GEAR_POSITION = 50;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarAvmClient.class);
    private static volatile CarAvmClient sInstance = null;
    private HandlerThread handlerThread;
    private IAvmListener listener;
    private CarHandler mHandler;
    private ProxyPropertyEventCallback proxyPropertyManager = new ProxyPropertyEventCallback();
    private int mGearPosition = 0;
    private int mManualGearPosition = 0;
    private int mRadarWorkSts = 0;

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 == 50) {
                CarAvmClient.this.checkManualGearPosition();
            } else if (r0 == 51) {
                CarAvmClient.this.checkGearPosition();
            } else if (r0 == 557850630) {
                CarAvmClient.this.onGearPosition(message.arg1);
            } else if (r0 == 557850641) {
                CarAvmClient.this.onRadarWorkSts(message.arg1);
            } else if (r0 == 557850687) {
                CarAvmClient.this.onManualGearPosition(message.arg1);
            }
            super.handleMessage(message);
        }
    }

    private CarAvmClient() {
    }

    public static CarAvmClient getInstance() {
        if (sInstance == null) {
            synchronized (CarAvmClient.class) {
                if (sInstance == null) {
                    sInstance = new CarAvmClient();
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
        this.mGearPosition = this.carPropertyManager.getIntProperty(557850630, 0);
        this.mManualGearPosition = this.carPropertyManager.getIntProperty(557850687, 0);
        this.mRadarWorkSts = this.carPropertyManager.getIntProperty(557850641, 0);
        PFLog.m29i(TAG, "CarAvmClient init: mGearPosition: " + this.mGearPosition + ",mManualGearPosition: " + this.mManualGearPosition + ",mRadarWorkSts: " + this.mRadarWorkSts);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850630, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850687, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850641, 1.0f);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmManager
    public void setListener(IAvmListener iAvmListener) {
        this.listener = iAvmListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmManager
    public int getGearPosition() {
        return this.mGearPosition;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmManager
    public int getRadarSts() {
        return this.mRadarWorkSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmManager
    public void setRadarSts(int r2) {
        setIntProperty(557854792, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IAvmManager
    public int getManualGearPosition() {
        return this.mManualGearPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGearPosition(int r1) {
        IAvmListener iAvmListener = this.listener;
        if (iAvmListener != null) {
            iAvmListener.onGearPosition(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onManualGearPosition(int r1) {
        IAvmListener iAvmListener = this.listener;
        if (iAvmListener != null) {
            iAvmListener.onManualGearPosition(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRadarWorkSts(int r1) {
        IAvmListener iAvmListener = this.listener;
        if (iAvmListener != null) {
            iAvmListener.onRadarWorkSts(r1);
        }
    }

    private void setIntProperty(int r2, int r3) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setIntProperty(r2, 0, r3);
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
            PFLog.m29i(CarAvmClient.TAG, "onChangeEvent: app receive call back:" + YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()));
            int propertyId = carPropertyValue.getPropertyId();
            if (propertyId == 557850630) {
                CarAvmClient.this.mGearPosition = ((Integer) carPropertyValue.getValue()).intValue();
                PFLog.m29i(CarAvmClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAvmClient.this.mGearPosition)));
                if (2 == CarAvmClient.this.mGearPosition) {
                    PFLog.m25d(CarAvmClient.TAG, "onGearPosition delay 500ms re-check ");
                    CarAvmClient.this.sendHandlerMsgDelayed(51, null, CarAvmClient.GEAR_POSITION_DELAY_TIME);
                    return;
                } else {
                    if (CarAvmClient.this.mHandler.hasMessages(51)) {
                        PFLog.m25d(CarAvmClient.TAG, "onGearPosition cancel re-check ");
                        CarAvmClient.this.mHandler.removeMessages(51);
                    }
                    CarAvmClient.this.mHandler.obtainMessage(557850630, CarAvmClient.this.mGearPosition, 0).sendToTarget();
                    return;
                }
            }
            if (propertyId == 557850641) {
                CarAvmClient.this.mRadarWorkSts = ((Integer) carPropertyValue.getValue()).intValue();
                CarAvmClient.this.mHandler.obtainMessage(557850641, CarAvmClient.this.mRadarWorkSts, 0).sendToTarget();
                PFLog.m29i(CarAvmClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAvmClient.this.mRadarWorkSts)));
            } else {
                if (propertyId != 557850687) {
                    return;
                }
                CarAvmClient.this.mManualGearPosition = ((Integer) carPropertyValue.getValue()).intValue();
                PFLog.m29i(CarAvmClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarAvmClient.this.mManualGearPosition)));
                if (1 == CarAvmClient.this.mManualGearPosition) {
                    PFLog.m25d(CarAvmClient.TAG, "onManualGearPosition delay 500ms re-check ");
                    CarAvmClient.this.sendHandlerMsgDelayed(50, null, CarAvmClient.GEAR_POSITION_DELAY_TIME);
                } else {
                    if (CarAvmClient.this.mHandler.hasMessages(50)) {
                        PFLog.m25d(CarAvmClient.TAG, "onManualGearPosition cancel re-check ");
                        CarAvmClient.this.mHandler.removeMessages(50);
                    }
                    CarAvmClient.this.mHandler.obtainMessage(557850687, CarAvmClient.this.mManualGearPosition, 0).sendToTarget();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkGearPosition() {
        this.mGearPosition = this.carPropertyManager.getIntProperty(557850630, 0);
        PFLog.m29i(TAG, "checkGearPosition(2:R): " + this.mGearPosition);
        this.mHandler.obtainMessage(557850630, this.mGearPosition, 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkManualGearPosition() {
        this.mManualGearPosition = this.carPropertyManager.getIntProperty(557850687, 0);
        PFLog.m29i(TAG, "checkManualGearPosition(1:R): " + this.mManualGearPosition);
        this.mHandler.obtainMessage(557850687, this.mManualGearPosition, 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendHandlerMsgDelayed(int r2, Object obj, int r4) {
        if (this.mHandler.hasMessages(r2)) {
            this.mHandler.removeMessages(r2);
        }
        CarHandler carHandler = this.mHandler;
        carHandler.sendMessageDelayed(carHandler.obtainMessage(r2, obj), r4);
    }
}
