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
import com.chery.caradapter.carapi.interfaces.IDriveListener;
import com.chery.caradapter.carapi.interfaces.managers.IDriveManager;

/* loaded from: classes.dex */
public class CarDriveClient extends CarBaseClient implements IDriveManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarDriveClient.class);
    private static volatile CarDriveClient sInstance = null;
    private HandlerThread handlerThread;
    private IDriveListener listener;
    private CarHandler mHandler;
    private ProxyPropertyEventCallback proxyPropertyManager = new ProxyPropertyEventCallback();
    private int mAEBOnOffSts = 1;
    private int mFCWOnOffSts = 1;
    private int mFCWSnvtySts = 1;
    private int mTJAICAExitTextInfoSts = 1;
    private int mOverSpeed = 0;
    private int mELKOnOffSts = 1;
    private int mLDWOnOffSts = 1;
    private int mWarnModSts = 3;
    private int mLDPOnOffSts = 2;
    private int mLDWLDPSnvtySts = 1;
    private int mHDCCtrlSts = 0;
    private int mESPSwitchStatus = 0;
    private int mDAIOnOffSts = 1;
    private int mIESOnOffSts = 1;
    private int mAssociWithDriverModeSts = 0;
    private int mAssistanceStyleSts = 0;
    private int mTSIOnOffSts = 1;
    private int mTLIOnOffSts = 1;
    private int mRCTBOnOffSts = 0;
    private int mRCWOnOffSts = 0;
    private int mBSDLCARCTAOnOffSts = 0;
    private int mDOWOnOffSts = 0;
    private int mScfSts = 1;
    private int mDriveModeSts = 1;
    private int mDriveModeSetSts = 1;
    private int mSlaSts = 1;

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setListener(IDriveListener iDriveListener) {
        this.listener = iDriveListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setAEBSwt(int r4) {
        PFLog.m29i(TAG, "setAEBSwt:   " + r4);
        setIntProperty(557854728, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getAEBOnOffSts() {
        return this.mAEBOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setFCWSwt(int r4) {
        PFLog.m29i(TAG, "setFCWSwt:   " + r4);
        setIntProperty(557854729, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getFCWOnOffSts() {
        return this.mFCWOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setFCWSnvty(int r4) {
        PFLog.m29i(TAG, "setFCWSnvty:   " + r4);
        setIntProperty(557854730, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getFCWSnvtySts() {
        return this.mFCWSnvtySts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setTJAICAExitTextInfoSwt(int r4) {
        PFLog.m29i(TAG, "setTJAICAExitTextInfoSwt:   " + r4);
        setIntProperty(557854731, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getTJAICAExitTextInfoSts() {
        return this.mTJAICAExitTextInfoSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setSCFSwt(int r4) {
        PFLog.m29i(TAG, "setSCFSwt:   " + r4);
        setIntProperty(557854775, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getSCFSwtSts() {
        return this.mScfSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setOverSpeed(int r4) {
        PFLog.m29i(TAG, "setOverSpeed:   " + r4);
        setIntProperty(557854732, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getOverSpeed() {
        return this.mOverSpeed;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setELKSwt(int r4) {
        PFLog.m29i(TAG, "setELKSwt:   " + r4);
        setIntProperty(557854733, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getELKOnOffSts() {
        return this.mELKOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setLDWSwt(int r4) {
        PFLog.m29i(TAG, "setLDWSwt:   " + r4);
        setIntProperty(557854734, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getLDWOnOffSts() {
        return this.mLDWOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setWarnModSwt(int r4) {
        PFLog.m29i(TAG, "setWarnModSwt:   " + r4);
        setIntProperty(557854735, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getWarnModSts() {
        return this.mWarnModSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setLDPSwt(int r4) {
        PFLog.m29i(TAG, "setLDPSwt:   " + r4);
        setIntProperty(557854736, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getLDPOnOffSts() {
        return this.mLDPOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setLDWLDPSnvty(int r4) {
        PFLog.m29i(TAG, "setLDWLDPSnvty:   " + r4);
        setIntProperty(557854737, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getLDWLDPSnvtySts() {
        return this.mLDWLDPSnvtySts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setHDCOnOff(int r4) {
        PFLog.m29i(TAG, "setHDCOnOff:   " + r4);
        setIntProperty(557854738, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getHDCCtrlSts() {
        return this.mHDCCtrlSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setESPFunctionSts(int r4) {
        PFLog.m29i(TAG, "setESPFunctionSts:   " + r4);
        setIntProperty(557854739, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getESPSwitchStatus() {
        return this.mESPSwitchStatus;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setDAISwt(int r4) {
        PFLog.m29i(TAG, "setDAISwt:   " + r4);
        setIntProperty(557854740, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getDAIOnOffSts() {
        return this.mDAIOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setIESSwtSet(int r4) {
        PFLog.m29i(TAG, "setIESSwtSet:   " + r4);
        setIntProperty(557854741, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getIESOnOffSts() {
        return this.mIESOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setEPSAssociWithDriverMode(int r4) {
        PFLog.m29i(TAG, "setEPSAssociWithDriverMode:   " + r4);
        setIntProperty(557854742, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getEPSAssociWithDriverModeSts() {
        return this.mAssociWithDriverModeSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setEPSAssistanceStyle(int r4) {
        PFLog.m29i(TAG, "setEPSAssistanceStyle:   " + r4);
        setIntProperty(557854743, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getEPSAssistanceStyleSts() {
        return this.mAssistanceStyleSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setTLISwt(int r4) {
        PFLog.m29i(TAG, "setTLISwt:   " + r4);
        setIntProperty(557854777, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getTLIOnOffSts() {
        return this.mTLIOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setTSISwt(int r4) {
        PFLog.m29i(TAG, "setTSISwt:   " + r4);
        setIntProperty(557854776, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getTSIOnOffSts() {
        return this.mTSIOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setRCTBSwt(int r4) {
        PFLog.m29i(TAG, "setRCTBSwt:   " + r4);
        setIntProperty(557854744, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getRCTBOnOffSts() {
        return this.mRCTBOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setRCW(int r4) {
        PFLog.m29i(TAG, "setRCW:   " + r4);
        setIntProperty(557854745, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getRCWOnOffSts() {
        return this.mRCWOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setBSDSwitchSts(int r4) {
        PFLog.m29i(TAG, "setBSDSwitchSts:   " + r4);
        setIntProperty(557854746, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getBSDLCARCTAOnOffSts() {
        return this.mBSDLCARCTAOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setDOW(int r4) {
        PFLog.m29i(TAG, "setDOW:   " + r4);
        setIntProperty(557854747, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getDOWOnOffSts() {
        return this.mDOWOnOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setDriveMode(int r4) {
        PFLog.m29i(TAG, "setDriveMode:   " + r4);
        setIntProperty(557854778, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public void setSla(int r4) {
        PFLog.m29i(TAG, "setSla:   " + r4);
        setIntProperty(557854805, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IDriveManager
    public int getSla() {
        return this.mSlaSts;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAEBOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onAEBOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFCWOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onFCWOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFCWSnvtySts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onFCWSnvtySts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTJAICAExitTextInfoSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onTJAICAExitTextInfoSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSCFSwtSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onSCFSwtSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOverSpeed(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onOverSpeed(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onELKOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onELKOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLDWOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onLDWOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWarnModSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onWarnModSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLDPOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onLDPOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLDWLDPSnvtySts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onLDWLDPSnvtySts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHDCCtrlSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onHDCCtrlSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onESPSwitchStatus(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onESPSwitchStatus(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDAIOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onDAIOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIESOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onIESOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEPSAssociWithDriverModeSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onEPSAssociWithDriverModeSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEPSAssistanceStyleSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onEPSAssistanceStyleSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTLIOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onTLIOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTSIOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onTSIOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRCTBOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onRCTBOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRCWOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onRCWOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBSDLCARCTAOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onBSDLCARCTAOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDOWOnOffSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onDOWOnOffSts(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDriveModeKey(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onDriveModeKey(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDriveModeKeySet(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onDriveModeKeySet(r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSlaSts(int r1) {
        IDriveListener iDriveListener = this.listener;
        if (iDriveListener != null) {
            iDriveListener.onSlaSet(r1);
        }
    }

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 == 557854785) {
                CarDriveClient.this.onDriveModeKey(message.arg1);
            } else if (r0 == 557854793) {
                CarDriveClient.this.onDriveModeKeySet(message.arg1);
            } else if (r0 != 557854805) {
                switch (r0) {
                    case 557854728:
                        CarDriveClient.this.onAEBOnOffSts(message.arg1);
                        break;
                    case 557854729:
                        CarDriveClient.this.onFCWOnOffSts(message.arg1);
                        break;
                    case 557854730:
                        CarDriveClient.this.onFCWSnvtySts(message.arg1);
                        break;
                    case 557854731:
                        CarDriveClient.this.onTJAICAExitTextInfoSts(message.arg1);
                        break;
                    case 557854732:
                        CarDriveClient.this.onOverSpeed(message.arg1);
                        break;
                    case 557854733:
                        CarDriveClient.this.onELKOnOffSts(message.arg1);
                        break;
                    case 557854734:
                        CarDriveClient.this.onLDWOnOffSts(message.arg1);
                        break;
                    case 557854735:
                        CarDriveClient.this.onWarnModSts(message.arg1);
                        break;
                    case 557854736:
                        CarDriveClient.this.onLDPOnOffSts(message.arg1);
                        break;
                    case 557854737:
                        CarDriveClient.this.onLDWLDPSnvtySts(message.arg1);
                        break;
                    case 557854738:
                        CarDriveClient.this.onHDCCtrlSts(message.arg1);
                        break;
                    case 557854739:
                        CarDriveClient.this.onESPSwitchStatus(message.arg1);
                        break;
                    case 557854740:
                        CarDriveClient.this.onDAIOnOffSts(message.arg1);
                        break;
                    case 557854741:
                        CarDriveClient.this.onIESOnOffSts(message.arg1);
                        break;
                    case 557854742:
                        CarDriveClient.this.onEPSAssociWithDriverModeSts(message.arg1);
                        break;
                    case 557854743:
                        CarDriveClient.this.onEPSAssistanceStyleSts(message.arg1);
                        break;
                    case 557854744:
                        CarDriveClient.this.onRCTBOnOffSts(message.arg1);
                        break;
                    case 557854745:
                        CarDriveClient.this.onRCWOnOffSts(message.arg1);
                        break;
                    case 557854746:
                        CarDriveClient.this.onBSDLCARCTAOnOffSts(message.arg1);
                        break;
                    case 557854747:
                        CarDriveClient.this.onDOWOnOffSts(message.arg1);
                        break;
                    default:
                        switch (r0) {
                            case 557854775:
                                CarDriveClient.this.onSCFSwtSts(message.arg1);
                                break;
                            case 557854776:
                                CarDriveClient.this.onTSIOnOffSts(message.arg1);
                                break;
                            case 557854777:
                                CarDriveClient.this.onTLIOnOffSts(message.arg1);
                                break;
                        }
                }
            } else {
                CarDriveClient.this.onSlaSts(message.arg1);
            }
            super.handleMessage(message);
        }
    }

    private CarDriveClient() {
    }

    public static CarDriveClient getInstance() {
        if (sInstance == null) {
            synchronized (CarDriveClient.class) {
                if (sInstance == null) {
                    sInstance = new CarDriveClient();
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
        this.mAEBOnOffSts = this.carPropertyManager.getIntProperty(557854728, 0);
        this.mFCWOnOffSts = this.carPropertyManager.getIntProperty(557854729, 0);
        this.mFCWSnvtySts = this.carPropertyManager.getIntProperty(557854730, 0);
        this.mTJAICAExitTextInfoSts = this.carPropertyManager.getIntProperty(557854731, 0);
        this.mOverSpeed = this.carPropertyManager.getIntProperty(557854732, 0);
        this.mELKOnOffSts = this.carPropertyManager.getIntProperty(557854733, 0);
        this.mLDWOnOffSts = this.carPropertyManager.getIntProperty(557854734, 0);
        this.mWarnModSts = this.carPropertyManager.getIntProperty(557854735, 0);
        this.mLDPOnOffSts = this.carPropertyManager.getIntProperty(557854736, 0);
        this.mLDWLDPSnvtySts = this.carPropertyManager.getIntProperty(557854737, 0);
        this.mHDCCtrlSts = this.carPropertyManager.getIntProperty(557854738, 0);
        this.mESPSwitchStatus = this.carPropertyManager.getIntProperty(557854739, 0);
        this.mDAIOnOffSts = this.carPropertyManager.getIntProperty(557854740, 0);
        this.mIESOnOffSts = this.carPropertyManager.getIntProperty(557854741, 0);
        this.mAssociWithDriverModeSts = this.carPropertyManager.getIntProperty(557854742, 0);
        this.mAssistanceStyleSts = this.carPropertyManager.getIntProperty(557854743, 0);
        this.mRCTBOnOffSts = this.carPropertyManager.getIntProperty(557854744, 0);
        this.mRCWOnOffSts = this.carPropertyManager.getIntProperty(557854745, 0);
        this.mBSDLCARCTAOnOffSts = this.carPropertyManager.getIntProperty(557854746, 0);
        this.mDOWOnOffSts = this.carPropertyManager.getIntProperty(557854747, 0);
        this.mScfSts = this.carPropertyManager.getIntProperty(557854775, 0);
        this.mTSIOnOffSts = this.carPropertyManager.getIntProperty(557854776, 0);
        this.mTLIOnOffSts = this.carPropertyManager.getIntProperty(557854777, 0);
        this.mDriveModeSts = this.carPropertyManager.getIntProperty(557854785, 0);
        this.mDriveModeSetSts = this.carPropertyManager.getIntProperty(557854793, 0);
        this.mSlaSts = this.carPropertyManager.getIntProperty(557854805, 0);
        PFLog.m29i(TAG, "CarDriveClient init: mAEBOnOffSts:" + this.mAEBOnOffSts + ",mFCWOnOffSts:" + this.mFCWOnOffSts + ",mFCWSnvtySts:" + this.mFCWSnvtySts + ",mTJAICAExitTextInfoSts:" + this.mTJAICAExitTextInfoSts + ",mOverSpeed:" + this.mOverSpeed + ",mELKOnOffSts:" + this.mELKOnOffSts + ",mLDPOnOffSts:" + this.mLDPOnOffSts + ",mELKOnOffSts:" + this.mELKOnOffSts + ",mLDWOnOffSts:" + this.mLDWOnOffSts + ",mLDWLDPSnvtySts:" + this.mLDWLDPSnvtySts + ",mHDCCtrlSts:" + this.mHDCCtrlSts + ",mESPSwitchStatus:" + this.mESPSwitchStatus + ",mDAIOnOffSts:" + this.mDAIOnOffSts + ",mIESOnOffSts:" + this.mIESOnOffSts + ",mAssociWithDriverModeSts:" + this.mAssociWithDriverModeSts + ",mAssistanceStyleSts:" + this.mAssistanceStyleSts + ",mRCTBOnOffSts:" + this.mRCWOnOffSts + ",mBSDLCARCTAOnOffSts:" + this.mBSDLCARCTAOnOffSts + ",mTSIOnOffSts:" + this.mTSIOnOffSts + ",mTLIOnOffSts:" + this.mTLIOnOffSts + ",mDOWOnOffSts:" + this.mDOWOnOffSts + ",mScfSts:" + this.mScfSts + ",mDriveModeSts:" + this.mDriveModeSts + ",mDriveModeSetSts:" + this.mDriveModeSetSts + ",mSlaSts:" + this.mSlaSts);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854728, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854729, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854730, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854731, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854732, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854733, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854734, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854735, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854736, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854737, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854738, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854739, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854740, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854741, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854742, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854743, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854744, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854745, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854746, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854747, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854775, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854776, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854777, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854785, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854793, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyManager, 557854805, 1.0f);
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
            int propertyId = carPropertyValue.getPropertyId();
            if (propertyId == 557854785) {
                CarDriveClient.this.mDriveModeSts = ((Integer) carPropertyValue.getValue()).intValue();
                CarDriveClient.this.mHandler.obtainMessage(557854785, CarDriveClient.this.mDriveModeSts, 0).sendToTarget();
                PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mDriveModeSts)));
                return;
            }
            if (propertyId == 557854793) {
                CarDriveClient.this.mDriveModeSetSts = ((Integer) carPropertyValue.getValue()).intValue();
                CarDriveClient.this.mHandler.obtainMessage(557854793, CarDriveClient.this.mDriveModeSetSts, 0).sendToTarget();
                PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mDriveModeSetSts)));
                return;
            }
            if (propertyId != 557854805) {
                switch (propertyId) {
                    case 557854728:
                        CarDriveClient.this.mAEBOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854728, CarDriveClient.this.mAEBOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mAEBOnOffSts)));
                        break;
                    case 557854729:
                        CarDriveClient.this.mFCWOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854729, CarDriveClient.this.mFCWOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mFCWOnOffSts)));
                        break;
                    case 557854730:
                        CarDriveClient.this.mFCWSnvtySts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854730, CarDriveClient.this.mFCWSnvtySts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mFCWSnvtySts)));
                        break;
                    case 557854731:
                        CarDriveClient.this.mTJAICAExitTextInfoSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854731, CarDriveClient.this.mTJAICAExitTextInfoSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mTJAICAExitTextInfoSts)));
                        break;
                    case 557854732:
                        CarDriveClient.this.mOverSpeed = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854732, CarDriveClient.this.mOverSpeed, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mOverSpeed)));
                        break;
                    case 557854733:
                        CarDriveClient.this.mELKOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854733, CarDriveClient.this.mELKOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mELKOnOffSts)));
                        break;
                    case 557854734:
                        CarDriveClient.this.mLDWOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854734, CarDriveClient.this.mLDWOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mLDWOnOffSts)));
                        break;
                    case 557854735:
                        CarDriveClient.this.mWarnModSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854735, CarDriveClient.this.mWarnModSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mWarnModSts)));
                        break;
                    case 557854736:
                        CarDriveClient.this.mLDPOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854736, CarDriveClient.this.mLDPOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mLDPOnOffSts)));
                        break;
                    case 557854737:
                        CarDriveClient.this.mLDWLDPSnvtySts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854737, CarDriveClient.this.mLDWLDPSnvtySts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mLDWLDPSnvtySts)));
                        break;
                    case 557854738:
                        CarDriveClient.this.mHDCCtrlSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854738, CarDriveClient.this.mHDCCtrlSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mHDCCtrlSts)));
                        break;
                    case 557854739:
                        CarDriveClient.this.mESPSwitchStatus = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854739, CarDriveClient.this.mESPSwitchStatus, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mESPSwitchStatus)));
                        break;
                    case 557854740:
                        CarDriveClient.this.mDAIOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854740, CarDriveClient.this.mDAIOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mDAIOnOffSts)));
                        break;
                    case 557854741:
                        CarDriveClient.this.mIESOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854741, CarDriveClient.this.mIESOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mIESOnOffSts)));
                        break;
                    case 557854742:
                        CarDriveClient.this.mAssociWithDriverModeSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854742, CarDriveClient.this.mAssociWithDriverModeSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mAssociWithDriverModeSts)));
                        break;
                    case 557854743:
                        CarDriveClient.this.mAssistanceStyleSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854743, CarDriveClient.this.mAssistanceStyleSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mAssistanceStyleSts)));
                        break;
                    case 557854744:
                        CarDriveClient.this.mRCTBOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854744, CarDriveClient.this.mRCTBOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mRCTBOnOffSts)));
                        break;
                    case 557854745:
                        CarDriveClient.this.mRCWOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854745, CarDriveClient.this.mRCWOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mRCWOnOffSts)));
                        break;
                    case 557854746:
                        CarDriveClient.this.mBSDLCARCTAOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854746, CarDriveClient.this.mBSDLCARCTAOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mBSDLCARCTAOnOffSts)));
                        break;
                    case 557854747:
                        CarDriveClient.this.mDOWOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                        CarDriveClient.this.mHandler.obtainMessage(557854747, CarDriveClient.this.mDOWOnOffSts, 0).sendToTarget();
                        PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mDOWOnOffSts)));
                        break;
                    default:
                        switch (propertyId) {
                            case 557854775:
                                CarDriveClient.this.mScfSts = ((Integer) carPropertyValue.getValue()).intValue();
                                CarDriveClient.this.mHandler.obtainMessage(557854775, CarDriveClient.this.mScfSts, 0).sendToTarget();
                                PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mScfSts)));
                                break;
                            case 557854776:
                                CarDriveClient.this.mTSIOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                                CarDriveClient.this.mHandler.obtainMessage(557854776, CarDriveClient.this.mTSIOnOffSts, 0).sendToTarget();
                                PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mTSIOnOffSts)));
                                break;
                            case 557854777:
                                CarDriveClient.this.mTLIOnOffSts = ((Integer) carPropertyValue.getValue()).intValue();
                                CarDriveClient.this.mHandler.obtainMessage(557854777, CarDriveClient.this.mTLIOnOffSts, 0).sendToTarget();
                                PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mTLIOnOffSts)));
                                break;
                        }
                }
                return;
            }
            CarDriveClient.this.mSlaSts = ((Integer) carPropertyValue.getValue()).intValue();
            CarDriveClient.this.mHandler.obtainMessage(557854805, CarDriveClient.this.mSlaSts, 0).sendToTarget();
            PFLog.m29i(CarDriveClient.TAG, String.format("onChangeEvent: app receive call back: %s : %d", YFVehiclePropertyIds.toString(carPropertyValue.getPropertyId()), Integer.valueOf(CarDriveClient.this.mSlaSts)));
        }
    }
}
