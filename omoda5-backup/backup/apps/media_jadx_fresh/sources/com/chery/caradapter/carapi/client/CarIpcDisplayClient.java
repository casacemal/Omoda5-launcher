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
import android.os.SystemClock;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.avn.tools.string.StringUtils;
import com.chery.caradapter.carapi.interfaces.IIpcDisplayListener;
import com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager;

/* loaded from: classes.dex */
public class CarIpcDisplayClient extends CarBaseClient implements IIpcDisplayManager {
    private static final int DELAY_1S = 1000;
    private static final int MSG_DELIVER_AM_VALUE = 2;
    private static final int MSG_DELIVER_FM_VALUE = 3;
    private static final int MSG_DELIVER_RADIO_MODE = 4;
    private static final int MSG_DELIVER_RADIO_RESEARCH_STATUS = 6;
    private static final int MSG_DELIVER_RRMON_STATUS = 7;
    private static final int MSG_DELIVER_SOURCE_MODE = 5;
    private static final int MSG_DISPLAY_INFO_REQUEST_CHANGED = 1;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarIpcDisplayClient.class);
    private static volatile CarIpcDisplayClient sInstance = null;
    private HandlerThread handlerThread;
    private CarHandler mHandler;
    private IIpcDisplayListener listener = null;
    private ProxyPropertyEventCallback proxyPropertyEventCallback = new ProxyPropertyEventCallback();

    private class CarHandler extends Handler {
        private static final int MSG_ICM_RADIO_SEND_INTERVAL = 50;
        private static final int MSG_ICM_SEND_INTERVAL = 120;
        private long mIcmTimeStamp;

        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 == 561000493) {
                CarIpcDisplayClient.this.onMode(message.arg1);
            } else {
                switch (r0) {
                    case 1:
                        icmReceived((byte[]) message.obj);
                        break;
                    case 2:
                        icmAmValue(message.arg1);
                        break;
                    case 3:
                        icmFmValue(((Float) message.obj).floatValue());
                        break;
                    case 4:
                        CarIpcDisplayClient.this.sendIntPropertyData(557854749, message.arg1);
                        break;
                    case 5:
                        CarIpcDisplayClient.this.sendIntPropertyData(557854748, message.arg1);
                        break;
                    case 6:
                        CarIpcDisplayClient.this.sendIntPropertyData(557854752, message.arg1);
                        break;
                    case 7:
                        CarIpcDisplayClient.this.sendIntPropertyData(557854790, message.arg1);
                        break;
                }
            }
            super.handleMessage(message);
        }

        private void icmReceived(byte[] bArr) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (Math.abs(jUptimeMillis - this.mIcmTimeStamp) <= 120) {
                CarIpcDisplayClient.this.notifyIcmReceived(bArr, 120L);
            } else {
                this.mIcmTimeStamp = jUptimeMillis;
                CarIpcDisplayClient.this.sendPropertyData(561000448, bArr);
            }
        }

        private void icmFmValue(float f) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jAbs = Math.abs(jUptimeMillis - this.mIcmTimeStamp);
            if (jAbs <= 50) {
                CarIpcDisplayClient.this.notifyIcmFMReceived(f, 50 - jAbs);
            } else {
                this.mIcmTimeStamp = jUptimeMillis;
                CarIpcDisplayClient.this.sendFloatPropertyData(559951902, f);
            }
        }

        private void icmAmValue(int r8) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jAbs = Math.abs(jUptimeMillis - this.mIcmTimeStamp);
            if (jAbs <= 50) {
                CarIpcDisplayClient.this.notifyIcmAMReceived(r8, 50 - jAbs);
            } else {
                this.mIcmTimeStamp = jUptimeMillis;
                CarIpcDisplayClient.this.sendIntPropertyData(557854751, r8);
            }
        }
    }

    private CarIpcDisplayClient() {
    }

    public static CarIpcDisplayClient getInstance() {
        if (sInstance == null) {
            synchronized (CarIpcDisplayClient.class) {
                if (sInstance == null) {
                    sInstance = new CarIpcDisplayClient();
                }
            }
        }
        return sInstance;
    }

    @Override // com.chery.caradapter.carapi.client.CarBaseClient
    public void init() {
        byte[] bArr;
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new CarHandler(this.handlerThread.getLooper());
        CarPropertyValue property = this.carPropertyManager.getProperty(561000493, 0);
        if (property != null && (bArr = (byte[]) property.getValue()) != null) {
            PFLog.m29i(TAG, "init IPC_DISPLAY_INFO_REPLY : " + bArr.length + "--->" + StringUtils.toString(bArr));
            if (bArr.length == 3 && bArr[0] == 2 && bArr[1] == 1) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(561000493, bArr[2], 0), 1000L);
            }
        }
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 561000493, 1.0f);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setListener(IIpcDisplayListener iIpcDisplayListener) {
        this.listener = iIpcDisplayListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setSourceStationMode(int r3) {
        this.mHandler.obtainMessage(5, r3, 0).sendToTarget();
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setRadioFrequanceMode(int r3) {
        this.mHandler.obtainMessage(4, r3, 0).sendToTarget();
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setFmRadioFrequanceValue(float f) {
        this.mHandler.obtainMessage(3, Float.valueOf(f)).sendToTarget();
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setAmRadioFrequanceValue(int r3) {
        this.mHandler.obtainMessage(2, r3, 0).sendToTarget();
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setRadioResearchSts(int r3) {
        this.mHandler.obtainMessage(6, r3, 0).sendToTarget();
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setDisplayInfo(int r4, int r5, byte[] bArr) {
        byte[] bArr2 = new byte[50];
        bArr2[0] = (byte) (r4 & 255);
        bArr2[1] = (byte) (r5 & 255);
        if (bArr != null && bArr.length >= r5 && r5 <= 48) {
            System.arraycopy(bArr, 0, bArr2, 2, r5);
        }
        notifyIcmReceived(bArr2, 0L);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IIpcDisplayManager
    public void setDisPlayModeOn(int r3) {
        this.mHandler.obtainMessage(7, r3, 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyIcmReceived(byte[] bArr, long j) {
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, bArr), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyIcmFMReceived(float f, long j) {
        if (this.mHandler.hasMessages(3)) {
            this.mHandler.removeMessages(3);
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(3, Float.valueOf(f)), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyIcmAMReceived(int r4, long j) {
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(2, r4, 0), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPropertyData(int r3, byte[] bArr) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setProperty(byte[].class, r3, 0, bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendIntPropertyData(int r2, int r3) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setIntProperty(r2, 0, r3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFloatPropertyData(int r2, float f) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setFloatProperty(r2, 0, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMode(int r1) {
        IIpcDisplayListener iIpcDisplayListener = this.listener;
        if (iIpcDisplayListener != null) {
            iIpcDisplayListener.onMode(r1);
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
            byte[] bArr;
            PFLog.m29i(CarIpcDisplayClient.TAG, "onChangeEvent: app receive call back:" + YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()));
            if (carPropertyValue.getPropertyId() == 561000493 && (bArr = (byte[]) carPropertyValue.getValue()) != null) {
                PFLog.m29i(CarIpcDisplayClient.TAG, "onChangeEvent: " + StringUtils.toString(bArr));
                if (bArr.length == 3 && bArr[0] == 2 && bArr[1] == 1) {
                    if (CarIpcDisplayClient.this.mHandler.hasMessages(561000493)) {
                        CarIpcDisplayClient.this.mHandler.removeMessages(561000493);
                    }
                    CarIpcDisplayClient.this.mHandler.obtainMessage(561000493, bArr[2], 0).sendToTarget();
                }
            }
        }
    }
}
