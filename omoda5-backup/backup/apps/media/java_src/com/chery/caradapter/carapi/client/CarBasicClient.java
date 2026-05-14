package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
import android.car.YFVehiclePropertyIds;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IBasicListener;
import com.chery.caradapter.carapi.interfaces.managers.IBasicManager;

/* loaded from: classes.dex */
public class CarBasicClient extends CarBaseClient implements IBasicManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarBasicClient.class);
    private static volatile CarBasicClient sInstance = null;
    private HandlerThread handlerThread;
    private IBasicListener listener;
    private CarHandler mHandler;
    private ProxyPropertyEventCallback proxyPropertyManager = new ProxyPropertyEventCallback();
    private int mAutoLockSts = 0;
    private int mAutoFoldSts = 0;
    private int mRemoteLockFeedbackSts = 0;
    private int mPLGMaxPosition = 100;
    private int mSSMStatus = 0;
    private int mCWC_workingSts = 1;
    private int mCWC_ChargingSts = 0;
    private int mCWC_PhoneForgotten = 1;
    private int mCWC_PhoneForgottenMsg = 0;
    private int mBCM_4_KeySts = 0;
    private int mICM_BrightnessLevel = 10;
    private int mVehicleSpeedVSOSigValid = 1;
    private float mVehicleSpeedVSOSig = 0.0f;
    private int mDayNightModeLight = 0;
    private int mDayNightModeLightByCan = 0;
    private int mLightDetectedSts = 0;
    private int mTrunkSts = 0;
    private int mSrfSts = 0;
    private int mFDWindowSts = 0;
    private int mFPWindowSts = 0;
    private int mRLWindowSts = 0;
    private int mRRWindowSts = 0;
    private int mScreenOverTemperatureSts = 0;
    private float mVehicleSpeed = -1.0f;
    private String mIcmTime = "20210101000000";
    private int mDMSSts = 1;

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setListener(IBasicListener iBasicListener) {
        this.listener = iBasicListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setAutoLockSts(int r4) {
        PFLog.m29i(TAG, "setAutoLockSts:   " + r4);
        setIntProperty(557854721, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getAutoLockSts() {
        return this.mAutoLockSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setAutoFoldSts(int r4) {
        PFLog.m29i(TAG, "setAutoFoldSts:   " + r4);
        setIntProperty(557854722, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getAutoFoldSts() {
        return this.mAutoFoldSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setRemoteLockFeedback(int r4) {
        PFLog.m29i(TAG, "setRemoteLockFeedback:   " + r4);
        setIntProperty(557854723, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getRemoteLockFeedbackSts() {
        return this.mRemoteLockFeedbackSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setLanguage(int r4) {
        PFLog.m29i(TAG, "setLanguage:   " + r4);
        setIntProperty(557854724, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setPLGMaxPosition(int r4) {
        PFLog.m29i(TAG, "setPLGMaxPosition:   " + r4);
        setIntProperty(557854725, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getPLGMaxPosition() {
        return this.mPLGMaxPosition;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setIssSwitch(int r4) {
        PFLog.m29i(TAG, "setIssSwitch:   " + r4);
        setIntProperty(557854773, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getSSMStatus() {
        return this.mSSMStatus;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setCWCWorkingSts(int r4) {
        PFLog.m29i(TAG, "setCWCWorkingSts:   " + r4);
        setIntProperty(557854726, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getCWCWorkingSts() {
        return this.mCWC_workingSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getCWCChargingSts() {
        return this.mCWC_ChargingSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setCWCPhoneForgottenSts(int r4) {
        PFLog.m29i(TAG, "setCWCPhoneForgottenSts:   " + r4);
        setIntProperty(557854727, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getCWCPhoneForgottenSts() {
        return this.mCWC_PhoneForgotten;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getCWCPhoneForgottenMsg() {
        return this.mCWC_PhoneForgottenMsg;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getKeySts() {
        return this.mBCM_4_KeySts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public float getVehicleSpeed() {
        return this.mVehicleSpeed;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setICMBrightness(int r4) {
        PFLog.m29i(TAG, "setICMBrightness:   " + r4);
        setIntProperty(557854764, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getICMBrightness() {
        return this.mICM_BrightnessLevel;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getDayNightModeLightSts() {
        return (this.mDayNightModeLight == 1 || this.mDayNightModeLightByCan == 1) ? 1 : 0;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getLightDetectedSts() {
        return this.mLightDetectedSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setTrunkSts(int r4) {
        PFLog.m29i(TAG, "setTrunkSts:   " + r4);
        setIntProperty(557854781, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getTrunkSts() {
        return this.mTrunkSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setSrfSts(int r4) {
        PFLog.m29i(TAG, "setSrfSts:   " + r4);
        setIntProperty(557854782, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getSrfSts() {
        return this.mSrfSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setWindowSts(int r4) {
        PFLog.m29i(TAG, "setWindowSts:   " + r4);
        setIntProperty(557854783, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getWindowSts(int r2) {
        if (r2 == 0) {
            return this.mFDWindowSts;
        }
        if (r2 == 1) {
            return this.mFPWindowSts;
        }
        if (r2 == 2) {
            return this.mRLWindowSts;
        }
        if (r2 != 3) {
            return 0;
        }
        return this.mRRWindowSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setIcmTheme(int r4) {
        PFLog.m29i(TAG, "setIcmTheme:   " + r4);
        setIntProperty(557854779, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setIcmTime(String str) throws NumberFormatException {
        PFLog.m29i(TAG, "setIcmTime: " + str);
        if (this.carPropertyManager != null) {
            Bundle bundle = new Bundle();
            bundle.putString("Time", str);
            this.carPropertyManager.setIPCTime(bundle);
        }
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public String getIcmTime() {
        return this.mIcmTime;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setIcmTimeFormat(int r4) {
        PFLog.m29i(TAG, "setIcmTimeFormat:   " + r4);
        setIntProperty(557854791, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getScreenOverTemperatureSts() {
        return this.mScreenOverTemperatureSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public void setDMSSwt(int r4) {
        PFLog.m29i(TAG, "setDMSSwt:   " + r4);
        setIntProperty(557854829, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IBasicManager
    public int getDMSSts() {
        return this.mDMSSts;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAutoLockSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onAutoLockSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAutoFoldSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onAutoFoldSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoteLockFeedbackSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onRemoteLockFeedbackSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPLGMaxPosition(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onPLGMaxPosition(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSSMStatus(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onSSMStatus(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCWCWorkingSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onCWCWorkingSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCWChargingSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onCWCChargingSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCWCPhoneForgottenSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onCWCPhoneForgottenSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCWCPhoneForgottenMsg(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onCWCPhoneForgottenMsg(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLightDetectedSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onLightDetectedSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTrunkSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onTrunkSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSrfSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onSrfSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWindowSts(int r1, int r2) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onWindowSts(r1, r2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeySts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onKeySts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVehicleSpeed(float f) {
        if (this.mVehicleSpeedVSOSigValid == 0) {
            this.mVehicleSpeed = f;
            IBasicListener iBasicListener = this.listener;
            if (iBasicListener != null) {
                iBasicListener.onVehicleSpeed(f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVehicleSpeedValid(int r3) {
        float f = this.mVehicleSpeedVSOSig;
        if (r3 == 1) {
            f = -1.0f;
        }
        if (this.mVehicleSpeed != f) {
            this.mVehicleSpeed = f;
            IBasicListener iBasicListener = this.listener;
            if (iBasicListener != null) {
                iBasicListener.onVehicleSpeed(f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onICMBrightness(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onICMBrightness(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDayNightModeLight(int r3) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            if (r3 == 1 || this.mDayNightModeLightByCan == 1) {
                this.listener.onDayNightModeLight(1);
            } else {
                iBasicListener.onDayNightModeLight(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDayNightModeLightByCan(int r3) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            if (r3 == 1 || this.mDayNightModeLight == 1) {
                this.listener.onDayNightModeLight(1);
            } else {
                iBasicListener.onDayNightModeLight(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIcmTimeChanged(String str) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onIcmTimeChanged(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScreenOverTemperature(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onScreenOverTemperature(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCtpKeyVoiceRemind(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onCtpKeyVoiceRemind(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDMSSts(int r1) {
        IBasicListener iBasicListener = this.listener;
        if (iBasicListener != null) {
            iBasicListener.onDMSSts(r1);
        }
    }

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 554709044:
                    CarBasicClient carBasicClient = CarBasicClient.this;
                    carBasicClient.onIcmTimeChanged(carBasicClient.mIcmTime);
                    break;
                case 557850624:
                    CarBasicClient.this.onKeySts(message.arg1);
                    break;
                case 557850646:
                    CarBasicClient.this.onTrunkSts(message.arg1);
                    break;
                case 557850648:
                    CarBasicClient.this.onSrfSts(message.arg1);
                    break;
                case 557850660:
                    CarBasicClient.this.onVehicleSpeedValid(message.arg1);
                    break;
                case 557850683:
                    CarBasicClient.this.onDayNightModeLight(message.arg1);
                    break;
                case 557850684:
                    CarBasicClient.this.onDayNightModeLightByCan(message.arg1);
                    break;
                case 557850685:
                    CarBasicClient.this.onLightDetectedSts(message.arg1);
                    break;
                case 557850686:
                    CarBasicClient.this.onScreenOverTemperature(message.arg1);
                    break;
                case 557850696:
                    CarBasicClient.this.onCtpKeyVoiceRemind(message.arg1);
                    break;
                case 557854721:
                    CarBasicClient.this.onAutoLockSts(message.arg1);
                    break;
                case 557854722:
                    CarBasicClient.this.onAutoFoldSts(message.arg1);
                    break;
                case 557854723:
                    CarBasicClient.this.onRemoteLockFeedbackSts(message.arg1);
                    break;
                case 557854725:
                    CarBasicClient.this.onPLGMaxPosition(message.arg1);
                    break;
                case 557854726:
                    CarBasicClient.this.onCWCWorkingSts(message.arg1);
                    break;
                case 557854727:
                    CarBasicClient.this.onCWCPhoneForgottenSts(message.arg1);
                    break;
                case 557854764:
                    CarBasicClient.this.onICMBrightness(message.arg1);
                    break;
                case 557854773:
                    CarBasicClient.this.onSSMStatus(message.arg1);
                    break;
                case 557854774:
                    CarBasicClient.this.onCWChargingSts(message.arg1);
                    break;
                case 557854780:
                    CarBasicClient.this.onCWCPhoneForgottenMsg(message.arg1);
                    break;
                case 557854786:
                    CarBasicClient.this.onWindowSts(0, message.arg1);
                    break;
                case 557854787:
                    CarBasicClient.this.onWindowSts(1, message.arg1);
                    break;
                case 557854788:
                    CarBasicClient.this.onWindowSts(2, message.arg1);
                    break;
                case 557854789:
                    CarBasicClient.this.onWindowSts(3, message.arg1);
                    break;
                case 557854829:
                    CarBasicClient.this.onDMSSts(message.arg1);
                    break;
                case 559947811:
                    CarBasicClient carBasicClient2 = CarBasicClient.this;
                    carBasicClient2.onVehicleSpeed(carBasicClient2.mVehicleSpeedVSOSig);
                    break;
            }
            super.handleMessage(message);
        }
    }

    private CarBasicClient() {
    }

    public static CarBasicClient getInstance() {
        if (sInstance == null) {
            synchronized (CarBasicClient.class) {
                if (sInstance == null) {
                    sInstance = new CarBasicClient();
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
        this.mAutoLockSts = this.carPropertyManager.getIntProperty(557854721, 0);
        this.mAutoFoldSts = this.carPropertyManager.getIntProperty(557854722, 0);
        this.mRemoteLockFeedbackSts = this.carPropertyManager.getIntProperty(557854723, 0);
        this.mPLGMaxPosition = this.carPropertyManager.getIntProperty(557854725, 0);
        this.mCWC_workingSts = this.carPropertyManager.getIntProperty(557854726, 0);
        this.mCWC_ChargingSts = this.carPropertyManager.getIntProperty(557854774, 0);
        this.mCWC_PhoneForgotten = this.carPropertyManager.getIntProperty(557854727, 0);
        this.mCWC_PhoneForgottenMsg = this.carPropertyManager.getIntProperty(557854780, 0);
        this.mBCM_4_KeySts = this.carPropertyManager.getIntProperty(557850624, 0);
        this.mVehicleSpeedVSOSig = this.carPropertyManager.getFloatProperty(559947811, 0);
        this.mVehicleSpeedVSOSigValid = this.carPropertyManager.getIntProperty(557850660, 0);
        this.mICM_BrightnessLevel = this.carPropertyManager.getIntProperty(557854764, 0);
        this.mSSMStatus = this.carPropertyManager.getIntProperty(557854773, 0);
        this.mDayNightModeLight = this.carPropertyManager.getIntProperty(557850683, 0);
        this.mDayNightModeLightByCan = this.carPropertyManager.getIntProperty(557850684, 0);
        this.mLightDetectedSts = this.carPropertyManager.getIntProperty(557850685, 0);
        this.mTrunkSts = this.carPropertyManager.getIntProperty(557850646, 0);
        this.mSrfSts = this.carPropertyManager.getIntProperty(557850648, 0);
        this.mFDWindowSts = this.carPropertyManager.getIntProperty(557854786, 0);
        this.mFPWindowSts = this.carPropertyManager.getIntProperty(557854787, 0);
        this.mRLWindowSts = this.carPropertyManager.getIntProperty(557854788, 0);
        this.mRRWindowSts = this.carPropertyManager.getIntProperty(557854789, 0);
        this.mScreenOverTemperatureSts = this.carPropertyManager.getIntProperty(557850686, 0);
        this.mDMSSts = this.carPropertyManager.getIntProperty(557854829, 0);
        if (this.mVehicleSpeedVSOSigValid == 0) {
            this.mVehicleSpeed = this.mVehicleSpeedVSOSig;
        } else {
            this.mVehicleSpeed = -1.0f;
        }
        PFLog.m29i(TAG, "CarBasicClient init: mAutoLockSts:" + this.mAutoLockSts + ",mAutoFoldSts:" + this.mAutoFoldSts + ",mRemoteLockFeedbackSts:" + this.mRemoteLockFeedbackSts + ",mPLGMaxPosition:" + this.mPLGMaxPosition + ",mCWC_workingSts:" + this.mCWC_workingSts + ",mCWC_PhoneForgotten:" + this.mCWC_PhoneForgotten + ",mCWC_ChargingSts:" + this.mCWC_ChargingSts + ",mCWC_PhoneForgottenMsg:" + this.mCWC_PhoneForgottenMsg + ",mICM_BrightnessLevel:" + this.mICM_BrightnessLevel + ",mVehicleSpeedVSOSig:" + this.mVehicleSpeedVSOSig + ",mVehicleSpeedVSOSigValid:" + this.mVehicleSpeedVSOSigValid + ",mSSMStatus:" + this.mSSMStatus + ",mDayNightModeLight:" + this.mDayNightModeLight + ",mLightDetectedSts:" + this.mLightDetectedSts + ",mDayNightModeLightByCan:" + this.mDayNightModeLightByCan + ",mBCM_4_KeySts:" + this.mBCM_4_KeySts + ",mFDWindowSts:" + this.mFDWindowSts + ",mFPWindowSts:" + this.mFPWindowSts + ",mRLWindowSts:" + this.mRLWindowSts + ",mRRWindowSts:" + this.mRRWindowSts + ",mTrunkSts:" + this.mTrunkSts + ",mSrfSts:" + this.mSrfSts + ",mScreenOverTemperatureSts:" + this.mScreenOverTemperatureSts + ",mDMSSts:" + this.mDMSSts);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854721, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854722, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854723, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854725, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854726, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854774, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854727, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850624, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 559947811, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850660, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854764, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854773, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850683, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850684, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850685, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854780, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 554709044, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850646, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850648, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854786, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854787, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854788, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854789, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850686, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557850696, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854829, 1.0f);
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
            switch (carPropertyValue.getPropertyId()) {
                case 554709044:
                    CarBasicClient.this.mIcmTime = (String) carPropertyValue.getValue();
                    CarBasicClient.this.mHandler.obtainMessage(554709044, 0, 0).sendToTarget();
                    break;
                case 557850624:
                    CarBasicClient.this.mBCM_4_KeySts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850624, CarBasicClient.this.mBCM_4_KeySts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mBCM_4_KeySts)));
                    break;
                case 557850646:
                    CarBasicClient.this.mTrunkSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850646, CarBasicClient.this.mTrunkSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mTrunkSts)));
                    break;
                case 557850648:
                    CarBasicClient.this.mSrfSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850648, CarBasicClient.this.mSrfSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mSrfSts)));
                    break;
                case 557850660:
                    CarBasicClient.this.mVehicleSpeedVSOSigValid = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850660, CarBasicClient.this.mVehicleSpeedVSOSigValid, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mVehicleSpeedVSOSigValid)));
                    break;
                case 557850683:
                    CarBasicClient.this.mDayNightModeLight = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850683, CarBasicClient.this.mDayNightModeLight, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mDayNightModeLight)));
                    break;
                case 557850684:
                    CarBasicClient.this.mDayNightModeLightByCan = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850684, CarBasicClient.this.mDayNightModeLightByCan, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mDayNightModeLightByCan)));
                    break;
                case 557850685:
                    CarBasicClient.this.mLightDetectedSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850685, CarBasicClient.this.mLightDetectedSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mLightDetectedSts)));
                    break;
                case 557850686:
                    CarBasicClient.this.mScreenOverTemperatureSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557850686, CarBasicClient.this.mScreenOverTemperatureSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mScreenOverTemperatureSts)));
                    break;
                case 557850696:
                    CarBasicClient.this.mHandler.obtainMessage(557850696, ((Integer) carPropertyValue.getValue()).intValue(), 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), (Integer) carPropertyValue.getValue()));
                    break;
                case 557854721:
                    CarBasicClient.this.mAutoLockSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854721, CarBasicClient.this.mAutoLockSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mAutoLockSts)));
                    break;
                case 557854722:
                    CarBasicClient.this.mAutoFoldSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854722, CarBasicClient.this.mAutoFoldSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mAutoFoldSts)));
                    break;
                case 557854723:
                    CarBasicClient.this.mRemoteLockFeedbackSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854723, CarBasicClient.this.mRemoteLockFeedbackSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mRemoteLockFeedbackSts)));
                    break;
                case 557854725:
                    CarBasicClient.this.mPLGMaxPosition = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854725, CarBasicClient.this.mPLGMaxPosition, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mPLGMaxPosition)));
                    break;
                case 557854726:
                    CarBasicClient.this.mCWC_workingSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854726, CarBasicClient.this.mCWC_workingSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mCWC_workingSts)));
                    break;
                case 557854727:
                    CarBasicClient.this.mCWC_PhoneForgotten = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854727, CarBasicClient.this.mCWC_PhoneForgotten, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mCWC_PhoneForgotten)));
                    break;
                case 557854764:
                    CarBasicClient.this.mICM_BrightnessLevel = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854764, CarBasicClient.this.mICM_BrightnessLevel, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mICM_BrightnessLevel)));
                    break;
                case 557854773:
                    CarBasicClient.this.mSSMStatus = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854773, CarBasicClient.this.mSSMStatus, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mSSMStatus)));
                    break;
                case 557854774:
                    CarBasicClient.this.mCWC_ChargingSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854774, CarBasicClient.this.mCWC_ChargingSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mCWC_ChargingSts)));
                    break;
                case 557854780:
                    CarBasicClient.this.mCWC_PhoneForgottenMsg = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854780, CarBasicClient.this.mCWC_PhoneForgottenMsg, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mCWC_PhoneForgottenMsg)));
                    break;
                case 557854786:
                    CarBasicClient.this.mFDWindowSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854786, CarBasicClient.this.mFDWindowSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mFDWindowSts)));
                    break;
                case 557854787:
                    CarBasicClient.this.mFPWindowSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854787, CarBasicClient.this.mFPWindowSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mFPWindowSts)));
                    break;
                case 557854788:
                    CarBasicClient.this.mRLWindowSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854788, CarBasicClient.this.mRLWindowSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mRLWindowSts)));
                    break;
                case 557854789:
                    CarBasicClient.this.mRRWindowSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854789, CarBasicClient.this.mRRWindowSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mRRWindowSts)));
                    break;
                case 557854829:
                    CarBasicClient.this.mDMSSts = ((Integer) carPropertyValue.getValue()).intValue();
                    CarBasicClient.this.mHandler.obtainMessage(557854829, CarBasicClient.this.mDMSSts, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarBasicClient.this.mDMSSts)));
                    break;
                case 559947811:
                    CarBasicClient.this.mVehicleSpeedVSOSig = ((Float) carPropertyValue.getValue()).floatValue();
                    CarBasicClient.this.mHandler.obtainMessage(559947811, 0, 0).sendToTarget();
                    PFLog.m29i(CarBasicClient.TAG, String.format("onChangeEvent: app receive call back: %s : %f", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Float.valueOf(CarBasicClient.this.mVehicleSpeedVSOSig)));
                    break;
            }
        }
    }
}
