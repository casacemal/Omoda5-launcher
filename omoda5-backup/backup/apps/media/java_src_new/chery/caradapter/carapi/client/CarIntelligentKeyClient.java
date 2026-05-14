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
import com.chery.caradapter.carapi.interfaces.IIntelligentKeyListener;
import com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager;

/* loaded from: classes.dex */
public class CarIntelligentKeyClient extends CarBaseClient implements IIntelligentKeyManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarIntelligentKeyClient.class);
    private static volatile CarIntelligentKeyClient sInstance = null;
    private HandlerThread handlerThread;
    private CarHandler mHandler;
    private ProxyPropertyEventCallback proxyPropertyManager = new ProxyPropertyEventCallback();
    private IIntelligentKeyListener listener = null;
    private int mWelcomeLightPolling = 0;
    private int mPepsIntelligentOpen = 0;
    private int mPespsPolling = 0;

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 557854753:
                    CarIntelligentKeyClient.this.onWelcomeLightPolling(message.arg1);
                    break;
                case 557854754:
                    CarIntelligentKeyClient.this.onPepsIntelligentOpen(message.arg1);
                    break;
                case 557854755:
                    CarIntelligentKeyClient.this.onPespsPolling(message.arg1);
                    break;
            }
            super.handleMessage(message);
        }
    }

    private CarIntelligentKeyClient() {
    }

    public static CarIntelligentKeyClient getInstance() {
        if (sInstance == null) {
            synchronized (CarIntelligentKeyClient.class) {
                if (sInstance == null) {
                    sInstance = new CarIntelligentKeyClient();
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
        this.mWelcomeLightPolling = this.carPropertyManager.getIntProperty(557854753, 0);
        this.mPepsIntelligentOpen = this.carPropertyManager.getIntProperty(557854754, 0);
        this.mPespsPolling = this.carPropertyManager.getIntProperty(557854755, 0);
        PFLog.m29i(TAG, "CarIntelligentKeyClient init: mWelcomeLightPolling:" + this.mWelcomeLightPolling + ",mPepsIntelligentOpen:" + this.mPepsIntelligentOpen + ",mPespsPolling:" + this.mPespsPolling);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854753, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854754, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854755, 1.0f);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager
    public void setListener(IIntelligentKeyListener iIntelligentKeyListener) {
        this.listener = iIntelligentKeyListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager
    public int getWelcomeLightPolling() {
        return this.mWelcomeLightPolling;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager
    public void setWelcomeLightPolling(int r2) {
        setIntProperty(557854753, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager
    public int getPepsIntelligentOpen() {
        return this.mPepsIntelligentOpen;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager
    public void setPepsIntelligentOpen(int r2) {
        setIntProperty(557854754, r2);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager
    public int getPespsPolling() {
        return this.mPespsPolling;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIntelligentKeyManager
    public void setPespsPolling(int r2) {
        setIntProperty(557854755, r2);
    }

    private void setIntProperty(int r2, int r3) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setIntProperty(r2, 0, r3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWelcomeLightPolling(int r1) {
        IIntelligentKeyListener iIntelligentKeyListener = this.listener;
        if (iIntelligentKeyListener != null) {
            iIntelligentKeyListener.onWelcomeLightPolling(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPepsIntelligentOpen(int r1) {
        IIntelligentKeyListener iIntelligentKeyListener = this.listener;
        if (iIntelligentKeyListener != null) {
            iIntelligentKeyListener.onPepsIntelligentOpen(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPespsPolling(int r1) {
        IIntelligentKeyListener iIntelligentKeyListener = this.listener;
        if (iIntelligentKeyListener != null) {
            iIntelligentKeyListener.onPespsPolling(r1);
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
                case 557854753:
                    CarIntelligentKeyClient.this.mWelcomeLightPolling = ((Integer) carPropertyValue.getValue()).intValue();
                    CarIntelligentKeyClient.this.mHandler.obtainMessage(557854753, CarIntelligentKeyClient.this.mWelcomeLightPolling, 0).sendToTarget();
                    PFLog.m29i(CarIntelligentKeyClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarIntelligentKeyClient.this.mWelcomeLightPolling)));
                    break;
                case 557854754:
                    CarIntelligentKeyClient.this.mPepsIntelligentOpen = ((Integer) carPropertyValue.getValue()).intValue();
                    CarIntelligentKeyClient.this.mHandler.obtainMessage(557854754, CarIntelligentKeyClient.this.mPepsIntelligentOpen, 0).sendToTarget();
                    PFLog.m29i(CarIntelligentKeyClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarIntelligentKeyClient.this.mPepsIntelligentOpen)));
                    break;
                case 557854755:
                    CarIntelligentKeyClient.this.mPespsPolling = ((Integer) carPropertyValue.getValue()).intValue();
                    CarIntelligentKeyClient.this.mHandler.obtainMessage(557854755, CarIntelligentKeyClient.this.mPespsPolling, 0).sendToTarget();
                    PFLog.m29i(CarIntelligentKeyClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarIntelligentKeyClient.this.mPespsPolling)));
                    break;
            }
        }
    }
}
