package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.media.AudioSetting;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IVolumeListener;
import com.chery.caradapter.carapi.interfaces.managers.IVolumeManager;

/* loaded from: classes.dex */
public class CarVolumeClient extends CarBaseClient implements IVolumeManager {
    private static final String FLAGS = "flags";
    private static final String GROUPID = "groupId";
    private static final int MSG_GROUP_MUTE_CHANGED = 3;
    private static final int MSG_GROUP_VOLUME_CHANGED = 1;
    private static final int MSG_MASTER_MUTE_CHANGED = 2;
    private static final String ZONEID = "zoneId";
    private HandlerThread handlerThread;
    private IVolumeListener listener;
    private CarHandler mHandler;
    private ProxyCarVolumeCallback proxyCarVolumeCallback = new ProxyCarVolumeCallback();
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarVolumeClient.class);
    private static volatile CarVolumeClient sInstance = null;

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 == 1) {
                Bundle data = message.getData();
                if (data == null) {
                    return;
                }
                CarVolumeClient.this.onGroupVolumeChanged(data.getInt(CarVolumeClient.ZONEID), data.getInt(CarVolumeClient.GROUPID), data.getInt(CarVolumeClient.FLAGS));
            } else if (r0 == 2) {
                Bundle data2 = message.getData();
                if (data2 == null) {
                    return;
                }
                CarVolumeClient.this.onMasterMuteChanged(data2.getInt(CarVolumeClient.ZONEID), data2.getInt(CarVolumeClient.FLAGS));
            } else if (r0 == 3) {
                Bundle data3 = message.getData();
                if (data3 == null) {
                    return;
                }
                CarVolumeClient.this.onGroupMuteChanged(data3.getInt(CarVolumeClient.ZONEID), data3.getInt(CarVolumeClient.GROUPID), data3.getInt(CarVolumeClient.FLAGS));
            }
            super.handleMessage(message);
        }
    }

    private CarVolumeClient() {
    }

    public static CarVolumeClient getInstance() {
        if (sInstance == null) {
            synchronized (CarVolumeClient.class) {
                if (sInstance == null) {
                    sInstance = new CarVolumeClient();
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
        this.carAudioManager.registerCarVolumeCallback(this.proxyCarVolumeCallback);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void setListener(IVolumeListener iVolumeListener) {
        this.listener = iVolumeListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void destroy() {
        if (this.carAudioManager != null) {
            this.carAudioManager.unregisterCarVolumeCallback(this.proxyCarVolumeCallback);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public int getGroupVolume(int r2) {
        if (this.carAudioManager != null) {
            return this.carAudioManager.getGroupVolume(r2);
        }
        return 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void setGroupVolume(int r2, int r3, int r4) {
        if (this.carAudioManager != null) {
            this.carAudioManager.setGroupVolume(r2, r3, r4);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public int getGroupMaxVolume(int r2) {
        if (this.carAudioManager != null) {
            return this.carAudioManager.getGroupMaxVolume(r2);
        }
        return 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public int getGroupMinVolume(int r2) {
        if (this.carAudioManager != null) {
            return this.carAudioManager.getGroupMinVolume(r2);
        }
        return 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public int getVolumeGroupIdForUsage(int r2) {
        if (this.carAudioManager != null) {
            return this.carAudioManager.getVolumeGroupIdForUsage(r2);
        }
        return 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void setupOnVolumeMax(int r2, int r3) {
        if (this.carAudioManager != null) {
            this.carAudioManager.setupOnVolumeMax(r2, r3);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public int getupOnVolumeMax(int r2) {
        if (this.carAudioManager != null) {
            return this.carAudioManager.getOnVolumeMax(r2);
        }
        return 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void setGroupMute(int r2, boolean z, int r4) {
        if (this.carAudioManager != null) {
            this.carAudioManager.setGroupMute(r2, z, r4);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public boolean getGroupMute(int r2) {
        if (this.carAudioManager != null) {
            return this.carAudioManager.getGroupMute(r2);
        }
        return false;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void setAudioSetting(String str, int r5) {
        PFLog.m25d(TAG, "groupId = " + str + "value = " + r5);
        if (this.carAudioManager != null) {
            this.carAudioManager.setAudioSetting(new AudioSetting(str, r5, 0, 0));
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public int getAudioSetting(String str) {
        if (this.carAudioManager != null) {
            return this.carAudioManager.getAudioSetting(new AudioSetting(str, 0, 0, 0));
        }
        return 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public int[] getEQBand(int r3) {
        return this.carAudioManager != null ? this.carAudioManager.getEQBand(r3) : new int[0];
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void registerCarAudioSettingCallback(CarAudioManager.CarAudioSettingCallback carAudioSettingCallback) {
        this.carAudioManager.registerCarAudioSettingCallback(carAudioSettingCallback);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void unregisterCarAudioSettingCallback(CarAudioManager.CarAudioSettingCallback carAudioSettingCallback) {
        this.carAudioManager.unregisterCarAudioSettingCallback(carAudioSettingCallback);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IVolumeManager
    public void setSourceMute(int r2) {
        this.carAudioManager.setSourceMute(r2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGroupVolumeChanged(int r1, int r2, int r3) {
        IVolumeListener iVolumeListener = this.listener;
        if (iVolumeListener != null) {
            iVolumeListener.onGroupVolumeChanged(r1, r2, r3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMasterMuteChanged(int r1, int r2) {
        IVolumeListener iVolumeListener = this.listener;
        if (iVolumeListener != null) {
            iVolumeListener.onMasterMuteChanged(r1, r2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGroupMuteChanged(int r1, int r2, int r3) {
        IVolumeListener iVolumeListener = this.listener;
        if (iVolumeListener != null) {
            iVolumeListener.onGroupMuteChanged(r1, r2, r3);
        }
    }

    private class ProxyCarVolumeCallback extends CarAudioManager.CarVolumeCallback {
        private ProxyCarVolumeCallback() {
        }

        @Override // android.car.media.CarAudioManager.CarVolumeCallback
        public void onGroupVolumeChanged(int r4, int r5, int r6) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            Bundle bundle = new Bundle();
            bundle.putInt(CarVolumeClient.ZONEID, r4);
            bundle.putInt(CarVolumeClient.GROUPID, r5);
            bundle.putInt(CarVolumeClient.FLAGS, r6);
            messageObtain.setData(bundle);
            CarVolumeClient.this.mHandler.sendMessage(messageObtain);
        }

        @Override // android.car.media.CarAudioManager.CarVolumeCallback
        public void onMasterMuteChanged(int r4, int r5) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putInt(CarVolumeClient.ZONEID, r4);
            bundle.putInt(CarVolumeClient.FLAGS, r5);
            messageObtain.setData(bundle);
            CarVolumeClient.this.mHandler.sendMessage(messageObtain);
        }

        @Override // android.car.media.CarAudioManager.CarVolumeCallback
        public void onGroupMuteChanged(int r4, int r5, int r6) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            Bundle bundle = new Bundle();
            bundle.putInt(CarVolumeClient.ZONEID, r4);
            bundle.putInt(CarVolumeClient.GROUPID, r5);
            bundle.putInt(CarVolumeClient.FLAGS, r6);
            messageObtain.setData(bundle);
            CarVolumeClient.this.mHandler.sendMessage(messageObtain);
        }
    }
}
