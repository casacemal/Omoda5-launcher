package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
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
import com.chery.caradapter.carapi.interfaces.IHvacListener;
import com.chery.caradapter.carapi.interfaces.managers.IHvacManager;

/* loaded from: classes.dex */
public class CarHvacClient extends CarBaseClient implements IHvacManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarHvacClient.class);
    private static volatile CarHvacClient sInstance = null;
    private HandlerThread handlerThread;
    private IHvacListener listener;
    private HavcHandler mHandler;
    private int mDisplay = 0;
    private int mClmOn = 0;
    private int mCompressorSts = 0;
    private int mCirculationModeSts = 0;
    private int mBlowSpeedLevelSts = 0;
    private int mModeAdjustSts = 0;
    private int mAutoSts = 0;
    private int mTemperatureLeftC = -1;
    private int mTemperatureRightC = -1;
    private int mTemperatureLeftF = -1;
    private int mTemperatureRightF = -1;
    private int mElecClimateTemp = -1;
    private int mTemperatureUnit = 0;
    private int mFGHeatSts = 0;
    private int mZoneSelectionSts = 0;
    private int mFrontDeforestMaxSts = 0;
    private int mBlowDelayOffSts = 1;
    private int mBlowAdvanceOnSts = 1;
    private int mAcModeCustomSts = 0;
    private int mAutoDefrostOnSts = 0;
    private int mPm25AutoRunSetSts = 0;
    private int mFragranceWelcomeModeSts = 0;
    private int mRefreshFunctionSts = 0;
    private int mSelfTestActive = 0;
    private int mSelfTestResult = 0;
    private int mSeatHeatDriver = 0;
    private int mSeatHeatPassenger = 0;
    private int mSeatVentDriver = 0;
    private int mSeatVentPassenger = 0;
    private int mBeepState = 0;
    private float mT1eDriverTemp = -1.0f;
    private float mT1ePassengerTemp = -1.0f;
    private int mT1eBlowSpeedLevelSts = 0;
    private ProxyPropertyEventCallback proxyPropertyEventCallback = new ProxyPropertyEventCallback();

    private CarHvacClient() {
    }

    public static CarHvacClient getInstance() {
        if (sInstance == null) {
            synchronized (CarHvacClient.class) {
                if (sInstance == null) {
                    sInstance = new CarHvacClient();
                }
            }
        }
        return sInstance;
    }

    @Override // com.chery.caradapter.carapi.client.CarBaseClient
    public void init() {
        HandlerThread handlerThread = new HandlerThread("CarHvac");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new HavcHandler(this.handlerThread.getLooper());
        this.mDisplay = this.carPropertyManager.getIntProperty(557846554, 0);
        this.mTemperatureUnit = this.carPropertyManager.getIntProperty(557846557, 0);
        this.mClmOn = this.carPropertyManager.getIntProperty(557846530, 0);
        this.mCompressorSts = this.carPropertyManager.getIntProperty(557846531, 0);
        this.mCirculationModeSts = this.carPropertyManager.getIntProperty(557846532, 0);
        this.mBlowSpeedLevelSts = this.carPropertyManager.getIntProperty(557846533, 0);
        this.mModeAdjustSts = this.carPropertyManager.getIntProperty(557846534, 0);
        this.mAutoSts = this.carPropertyManager.getIntProperty(557846535, 0);
        this.mTemperatureLeftC = this.carPropertyManager.getIntProperty(557846536, 0);
        this.mTemperatureRightC = this.carPropertyManager.getIntProperty(557846537, 0);
        this.mTemperatureLeftF = this.carPropertyManager.getIntProperty(557846555, 0);
        this.mTemperatureRightF = this.carPropertyManager.getIntProperty(557846556, 0);
        this.mElecClimateTemp = this.carPropertyManager.getIntProperty(557846553, 0);
        this.mFGHeatSts = this.carPropertyManager.getIntProperty(557846558, 0);
        this.mZoneSelectionSts = this.carPropertyManager.getIntProperty(557846538, 0);
        this.mFrontDeforestMaxSts = this.carPropertyManager.getIntProperty(557846541, 0);
        this.mBlowDelayOffSts = this.carPropertyManager.getIntProperty(557846542, 0);
        this.mBlowAdvanceOnSts = this.carPropertyManager.getIntProperty(557846543, 0);
        this.mAcModeCustomSts = this.carPropertyManager.getIntProperty(557846544, 0);
        this.mAutoDefrostOnSts = this.carPropertyManager.getIntProperty(557846545, 0);
        this.mPm25AutoRunSetSts = this.carPropertyManager.getIntProperty(557846546, 0);
        this.mFragranceWelcomeModeSts = this.carPropertyManager.getIntProperty(557846547, 0);
        this.mRefreshFunctionSts = this.carPropertyManager.getIntProperty(557846548, 0);
        this.mSelfTestActive = this.carPropertyManager.getIntProperty(557846539, 0);
        this.mSelfTestResult = this.carPropertyManager.getIntProperty(557846540, 0);
        this.mSeatHeatDriver = this.carPropertyManager.getIntProperty(557846549, 0);
        this.mSeatHeatPassenger = this.carPropertyManager.getIntProperty(557846550, 0);
        this.mSeatVentDriver = this.carPropertyManager.getIntProperty(557846551, 0);
        this.mSeatVentPassenger = this.carPropertyManager.getIntProperty(557846552, 0);
        this.mBeepState = this.carPropertyManager.getIntProperty(557846559, 0);
        this.mT1eDriverTemp = this.carPropertyManager.getFloatProperty(559943735, 0);
        this.mT1ePassengerTemp = this.carPropertyManager.getFloatProperty(559943736, 0);
        this.mT1eBlowSpeedLevelSts = this.carPropertyManager.getIntProperty(557846582, 0);
        PFLog.m29i(TAG, "CarHvacClient init: mClmOn:" + this.mClmOn + ",mCompressorSts:" + this.mCompressorSts + ",mCirculationModeSts:" + this.mCirculationModeSts + ",mBlowSpeedLevelSts:" + this.mBlowSpeedLevelSts + ",mModeAdjustSts:" + this.mModeAdjustSts + ",mAutoSts:" + this.mAutoSts + ",mTemperatureLeftC:" + this.mTemperatureLeftC + ",mTemperatureRightC:" + this.mTemperatureRightC + ",mTemperatureUnit:" + this.mTemperatureUnit + ",mFGHeatSts:" + this.mFGHeatSts + ",mZoneSelectionSts:" + this.mZoneSelectionSts + ",mFrontDeforestMaxSts:" + this.mFrontDeforestMaxSts + ",mBlowDelayOffSts:" + this.mBlowDelayOffSts + ",mBlowAdvanceOnSts:" + this.mBlowAdvanceOnSts + ",mAcModeCustomSts:" + this.mAcModeCustomSts + ",mAutoDefrostOnSts:" + this.mAutoDefrostOnSts + ",mPm25AutoRunSetSts:" + this.mPm25AutoRunSetSts + ",mFragranceWelcomeModeSts:" + this.mFragranceWelcomeModeSts + ",mRefreshFunctionSts:" + this.mRefreshFunctionSts + ",mSelfTestActive:" + this.mSelfTestActive + ",mSelfTestResult:" + this.mSelfTestResult + ",mSeatHeatDriver:" + this.mSeatHeatDriver + ",mSeatHeatPassenger:" + this.mSeatHeatPassenger + ",mSeatVentDriver:" + this.mSeatVentDriver + ",mSeatVentPassenger:" + this.mSeatVentPassenger + ",mT1eDriverTemp:" + this.mT1eDriverTemp + ",mT1ePassengerTemp:" + this.mT1ePassengerTemp + ",mT1eBlowSpeedLevelSts:" + this.mT1eBlowSpeedLevelSts);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846530, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846557, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846531, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846532, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846533, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846534, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846535, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846536, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846537, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846538, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846541, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846542, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846543, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846544, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846545, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846546, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846547, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846548, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846539, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846540, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846549, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846550, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846551, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846552, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846554, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846555, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846556, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846553, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846558, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846559, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 559943735, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 559943736, 1.0f);
        this.carPropertyManager.registerCallback(this.proxyPropertyEventCallback, 557846582, 1.0f);
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

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setListener(IHvacListener iHvacListener) {
        this.listener = iHvacListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setClimateDisplay(int r4) {
        PFLog.m29i(TAG, "setClimateDisplay:   " + r4);
        sendIntPropertyData(557846554, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getClimateDisplaySts() {
        return this.mDisplay;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setClmOn(int r4) {
        PFLog.m29i(TAG, "setClmOn:   " + r4);
        sendIntPropertyData(557846530, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getClmOn() {
        return this.mClmOn;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setAcRequestKeySts(int r4) {
        PFLog.m29i(TAG, "setAcRequestKeySts:   " + r4);
        sendIntPropertyData(557846531, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getAcRequestKeySts() {
        return this.mCompressorSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setCirculationModeKeySts(int r4) {
        PFLog.m29i(TAG, "setCirculationModeKeySts:   " + r4);
        sendIntPropertyData(557846532, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getCirculationModeDisplaySts() {
        return this.mCirculationModeSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setBlowSpeedLevelKeySts(int r4) {
        PFLog.m29i(TAG, "setBlowSpeedLevelKeySts:   " + r4);
        sendIntPropertyData(557846533, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getBlowSpeedLevelDisplaySts() {
        return this.mBlowSpeedLevelSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setModeAdjustKeySts(int r4) {
        PFLog.m29i(TAG, "setModeAdjustKeySts:   " + r4);
        sendIntPropertyData(557846534, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getModeAdjustDisplaySts() {
        return this.mModeAdjustSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setAutoKeySts(int r4) {
        PFLog.m29i(TAG, "setAutoKeySts:   " + r4);
        sendIntPropertyData(557846535, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getAutoDisplaySts() {
        return this.mAutoSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setTemperatureLeftC(int r4) {
        PFLog.m29i(TAG, "setTemperatureLeftC:   " + r4);
        sendIntPropertyData(557846536, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getTemperatureLeftC() {
        return this.mTemperatureLeftC;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setTemperatureRightC(int r4) {
        PFLog.m29i(TAG, "setTemperatureRightC:   " + r4);
        sendIntPropertyData(557846537, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getTemperatureRightC() {
        return this.mTemperatureRightC;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setTemperatureLeftF(int r4) {
        PFLog.m29i(TAG, "setTemperatureLeftF:   " + r4);
        sendIntPropertyData(557846555, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getTemperatureLeftF() {
        return this.mTemperatureLeftF;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setTemperatureRightF(int r4) {
        PFLog.m29i(TAG, "setTemperatureRightF:   " + r4);
        sendIntPropertyData(557846556, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getTemperatureRightF() {
        return this.mTemperatureRightF;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setElecClimateTemp(int r4) {
        PFLog.m29i(TAG, "setElecClimateTemp:   " + r4);
        sendIntPropertyData(557846553, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getElecClimateTemp() {
        return this.mElecClimateTemp;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setZoneSelectionKeySts(int r4) {
        PFLog.m29i(TAG, "setZoneSelectionKeySts:   " + r4);
        sendIntPropertyData(557846538, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getZoneSelectionDisplaySts() {
        return this.mZoneSelectionSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setMaxFrontDeforestSts(int r4) {
        PFLog.m29i(TAG, "setMaxFrontDeforestSts:   " + r4);
        sendIntPropertyData(557846541, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getFrontDeforestMaxDisplaySts() {
        return this.mFrontDeforestMaxSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setBlowDelayOffKeySts(int r4) {
        PFLog.m29i(TAG, "setBlowDelayOffKeySts:   " + r4);
        sendIntPropertyData(557846542, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getBlowDelayOffSts() {
        return this.mBlowDelayOffSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setBlowAdvanceOnKeySts(int r4) {
        PFLog.m29i(TAG, "setBlowAdvanceOnKeySts:   " + r4);
        sendIntPropertyData(557846543, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getBlowAdvanceOnSts() {
        return this.mBlowAdvanceOnSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setAcModeCustom(int r4) {
        PFLog.m29i(TAG, "setAcModeCustom:   " + r4);
        sendIntPropertyData(557846544, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getAcModeCustomSts() {
        return this.mAcModeCustomSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setAutoDefrostOnKeySts(int r4) {
        PFLog.m29i(TAG, "setAutoDefrostOnKeySts:   " + r4);
        sendIntPropertyData(557846545, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getAutoDefrostOnSts() {
        return this.mAutoDefrostOnSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setPm25AutoRunSet(int r4) {
        PFLog.m29i(TAG, "setPm25AutoRunSet:   " + r4);
        sendIntPropertyData(557846546, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getPm25AutoRunSetSts() {
        return this.mPm25AutoRunSetSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setFragranceWelcomeMode(int r4) {
        PFLog.m29i(TAG, "setFragranceWelcomeMode:   " + r4);
        sendIntPropertyData(557846547, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getFragranceWelcomeModeSts() {
        return this.mFragranceWelcomeModeSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setRefreshFunction(int r4) {
        PFLog.m29i(TAG, "setRefreshFunction:   " + r4);
        sendIntPropertyData(557846548, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getRefreshFunctionSts() {
        return this.mRefreshFunctionSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getSelfTestActive() {
        return this.mSelfTestActive;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getSelfTestResult() {
        return this.mSelfTestResult;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setSeatHeatDriver(int r4) {
        PFLog.m29i(TAG, "setSeatHeatDriver:   " + r4);
        sendIntPropertyData(557846549, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getSeatHeatDriver() {
        return this.mSeatHeatDriver;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setSeatHeatPassenger(int r4) {
        PFLog.m29i(TAG, "setSeatHeatPassenger:   " + r4);
        sendIntPropertyData(557846550, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getSeatHeatPassenger() {
        return this.mSeatHeatPassenger;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setSeatVentDriver(int r4) {
        PFLog.m29i(TAG, "setSeatVentDriver:   " + r4);
        sendIntPropertyData(557846551, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getSeatVentDriver() {
        return this.mSeatVentDriver;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setSeatVentPassenger(int r4) {
        PFLog.m29i(TAG, "setSeatVentPassenger:   " + r4);
        sendIntPropertyData(557846552, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getSeatVentPassenger() {
        return this.mSeatVentPassenger;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setTemperatureUnit(int r4) {
        PFLog.m29i(TAG, "setTemperatureUnit:   " + r4);
        sendIntPropertyData(557846557, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getTemperatureUnitSts() {
        return this.mTemperatureUnit;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setFGHeat(int r4) {
        PFLog.m29i(TAG, "setFGHeat:   " + r4);
        sendIntPropertyData(557846558, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getFGHeatSts() {
        return this.mFGHeatSts;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setBeep(int r4) {
        PFLog.m29i(TAG, "setBeep:   " + r4);
        sendIntPropertyData(557846559, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getBeepSts() {
        return this.mBeepState;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setT1eDriverTemp(float f) {
        PFLog.m29i(TAG, "setT1eDriverTemp:   " + f);
        sendFloatPropertyData(559943735, f);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public float getT1eDriverTemp() {
        return this.mT1eDriverTemp;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setT1ePassengerTemp(float f) {
        PFLog.m29i(TAG, "setT1ePassengerTemp:   " + f);
        sendFloatPropertyData(559943736, f);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public float getT1ePassengerTemp() {
        return this.mT1ePassengerTemp;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public void setT1eBlowSpeedLevelKeySts(int r4) {
        PFLog.m29i(TAG, "setT1eBlowSpeedLevelKeySts:   " + r4);
        sendIntPropertyData(557846582, r4);
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IHvacManager
    public int getT1eBlowSpeedLevelDisplaySts() {
        return this.mT1eBlowSpeedLevelSts;
    }

    private void sendIntPropertyData(int r2, int r3) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setIntProperty(r2, 0, r3);
        }
    }

    private void sendFloatPropertyData(int r2, float f) {
        if (this.carPropertyManager != null) {
            this.carPropertyManager.setFloatProperty(r2, 0, f);
        }
    }

    private class HavcHandler extends Handler {
        public HavcHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 != 557846582) {
                switch (r0) {
                    case 557846530:
                        CarHvacClient.this.mClmOn = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mClmOn:  " + CarHvacClient.this.mClmOn);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onWorkingSts(CarHvacClient.this.mClmOn);
                            break;
                        }
                        break;
                    case 557846531:
                        CarHvacClient.this.mCompressorSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mCompressorSts:  " + CarHvacClient.this.mCompressorSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onAcRequestDisplaySts(CarHvacClient.this.mCompressorSts);
                            break;
                        }
                        break;
                    case 557846532:
                        CarHvacClient.this.mCirculationModeSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mCirculationModeSts:  " + CarHvacClient.this.mCirculationModeSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onCirculationModeDisplaySts(CarHvacClient.this.mCirculationModeSts);
                            break;
                        }
                        break;
                    case 557846533:
                        CarHvacClient.this.mBlowSpeedLevelSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mBlowSpeedLevelSts:  " + CarHvacClient.this.mBlowSpeedLevelSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onBlowSpeedLevelDisplaySts(CarHvacClient.this.mBlowSpeedLevelSts);
                            break;
                        }
                        break;
                    case 557846534:
                        CarHvacClient.this.mModeAdjustSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mModeAdjustSts:  " + CarHvacClient.this.mModeAdjustSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onModeAdjustDisplaySts(CarHvacClient.this.mModeAdjustSts);
                            break;
                        }
                        break;
                    case 557846535:
                        CarHvacClient.this.mAutoSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mAutoSts:  " + CarHvacClient.this.mAutoSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onAutoDisplaySts(CarHvacClient.this.mAutoSts);
                            break;
                        }
                        break;
                    case 557846536:
                        CarHvacClient.this.mTemperatureLeftC = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mTemperatureLeftC:  " + CarHvacClient.this.mTemperatureLeftC);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onTemperatureLeftC(CarHvacClient.this.mTemperatureLeftC);
                            break;
                        }
                        break;
                    case 557846537:
                        CarHvacClient.this.mTemperatureRightC = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mTemperatureRightC:  " + CarHvacClient.this.mTemperatureRightC);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onTemperatureRightC(CarHvacClient.this.mTemperatureRightC);
                            break;
                        }
                        break;
                    case 557846538:
                        CarHvacClient.this.mZoneSelectionSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mZoneSelectionSts:  " + CarHvacClient.this.mZoneSelectionSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onZoneSelectionDisplaySts(CarHvacClient.this.mZoneSelectionSts);
                            break;
                        }
                        break;
                    case 557846539:
                        CarHvacClient.this.mSelfTestActive = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mSelfTestActive:  " + CarHvacClient.this.mSelfTestActive);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onSelfTestActive(CarHvacClient.this.mSelfTestActive);
                            break;
                        }
                        break;
                    case 557846540:
                        CarHvacClient.this.mSelfTestResult = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mSelfTestResult:  " + CarHvacClient.this.mSelfTestResult);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onSelfTestResult(CarHvacClient.this.mSelfTestResult);
                            break;
                        }
                        break;
                    case 557846541:
                        CarHvacClient.this.mFrontDeforestMaxSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mFrontDeforestMaxSts:  " + CarHvacClient.this.mFrontDeforestMaxSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onFrontDeforestMaxDisplaySts(CarHvacClient.this.mFrontDeforestMaxSts);
                            break;
                        }
                        break;
                    case 557846542:
                        CarHvacClient.this.mBlowDelayOffSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mBlowDelayOffSts:  " + CarHvacClient.this.mBlowDelayOffSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onBlowDelayOffSts(CarHvacClient.this.mBlowDelayOffSts);
                            break;
                        }
                        break;
                    case 557846543:
                        CarHvacClient.this.mBlowAdvanceOnSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mBlowAdvanceOnSts:  " + CarHvacClient.this.mBlowAdvanceOnSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onBlowAdvanceOnSts(CarHvacClient.this.mBlowAdvanceOnSts);
                            break;
                        }
                        break;
                    case 557846544:
                        CarHvacClient.this.mAcModeCustomSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mAcModeCustomSts:  " + CarHvacClient.this.mAcModeCustomSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onAcModeCustomSts(CarHvacClient.this.mAcModeCustomSts);
                            break;
                        }
                        break;
                    case 557846545:
                        CarHvacClient.this.mAutoDefrostOnSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mAutoDefrostOnSts:  " + CarHvacClient.this.mAutoDefrostOnSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onAutoDefrostOnSts(CarHvacClient.this.mAutoDefrostOnSts);
                            break;
                        }
                        break;
                    case 557846546:
                        CarHvacClient.this.mPm25AutoRunSetSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mPm25AutoRunSetSts:  " + CarHvacClient.this.mPm25AutoRunSetSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onPm25AutoRunSetSts(CarHvacClient.this.mPm25AutoRunSetSts);
                            break;
                        }
                        break;
                    case 557846547:
                        CarHvacClient.this.mFragranceWelcomeModeSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mFragranceWelcomeModeSts:  " + CarHvacClient.this.mFragranceWelcomeModeSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onFragranceWelcomeModeSts(CarHvacClient.this.mFragranceWelcomeModeSts);
                            break;
                        }
                        break;
                    case 557846548:
                        CarHvacClient.this.mRefreshFunctionSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mRefreshFunctionSts:  " + CarHvacClient.this.mRefreshFunctionSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onRefreshFunctionSts(CarHvacClient.this.mRefreshFunctionSts);
                            break;
                        }
                        break;
                    case 557846549:
                        CarHvacClient.this.mSeatHeatDriver = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mSeatHeatDriver:  " + CarHvacClient.this.mSeatHeatDriver);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onSeatHeatDriver(CarHvacClient.this.mSeatHeatDriver);
                            break;
                        }
                        break;
                    case 557846550:
                        CarHvacClient.this.mSeatHeatPassenger = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mSeatHeatPassenger:  " + CarHvacClient.this.mSeatHeatPassenger);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onSeatHeatPassenger(CarHvacClient.this.mSeatHeatPassenger);
                            break;
                        }
                        break;
                    case 557846551:
                        CarHvacClient.this.mSeatVentDriver = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mSeatVentDriver:  " + CarHvacClient.this.mSeatVentDriver);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onSeatVentDriver(CarHvacClient.this.mSeatVentDriver);
                            break;
                        }
                        break;
                    case 557846552:
                        CarHvacClient.this.mSeatVentPassenger = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mSeatVentPassenger:  " + CarHvacClient.this.mSeatVentPassenger);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onSeatVentPassenger(CarHvacClient.this.mSeatVentPassenger);
                            break;
                        }
                        break;
                    case 557846553:
                        CarHvacClient.this.mElecClimateTemp = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mElecClimateTemp:  " + CarHvacClient.this.mElecClimateTemp);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onElecClimateTemp(CarHvacClient.this.mElecClimateTemp);
                            break;
                        }
                        break;
                    case 557846554:
                        CarHvacClient.this.mDisplay = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mDisplay:  " + CarHvacClient.this.mDisplay);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onDisplayActive(CarHvacClient.this.mDisplay);
                            break;
                        }
                        break;
                    case 557846555:
                        CarHvacClient.this.mTemperatureLeftF = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mTemperatureLeftF:  " + CarHvacClient.this.mTemperatureLeftF);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onTemperatureLeftF(CarHvacClient.this.mTemperatureLeftF);
                            break;
                        }
                        break;
                    case 557846556:
                        CarHvacClient.this.mTemperatureRightF = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mTemperatureRightF:  " + CarHvacClient.this.mTemperatureRightF);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onTemperatureRightF(CarHvacClient.this.mTemperatureRightF);
                            break;
                        }
                        break;
                    case 557846557:
                        CarHvacClient.this.mTemperatureUnit = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mTemperatureUnit:  " + CarHvacClient.this.mTemperatureUnit);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onTemperatureUnitSts(CarHvacClient.this.mTemperatureUnit);
                            break;
                        }
                        break;
                    case 557846558:
                        CarHvacClient.this.mFGHeatSts = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mFGHeatSts:  " + CarHvacClient.this.mFGHeatSts);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onFGHeatSts(CarHvacClient.this.mFGHeatSts);
                            break;
                        }
                        break;
                    case 557846559:
                        CarHvacClient.this.mBeepState = ((Integer) message.obj).intValue();
                        PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mBeepSts:  " + CarHvacClient.this.mBeepState);
                        if (CarHvacClient.this.listener != null) {
                            CarHvacClient.this.listener.onBeepSts(CarHvacClient.this.mBeepState);
                            break;
                        }
                        break;
                    default:
                        switch (r0) {
                            case 559943735:
                                CarHvacClient.this.mT1eDriverTemp = ((Float) message.obj).floatValue();
                                PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mT1eDriverTemp:  " + CarHvacClient.this.mT1eDriverTemp);
                                if (CarHvacClient.this.listener != null) {
                                    CarHvacClient.this.listener.onT1eDriverTemp(CarHvacClient.this.mT1eDriverTemp);
                                    break;
                                }
                                break;
                            case 559943736:
                                CarHvacClient.this.mT1ePassengerTemp = ((Float) message.obj).floatValue();
                                PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mT1ePassengerTemp:  " + CarHvacClient.this.mT1ePassengerTemp);
                                if (CarHvacClient.this.listener != null) {
                                    CarHvacClient.this.listener.onT1ePassengerTemp(CarHvacClient.this.mT1ePassengerTemp);
                                    break;
                                }
                                break;
                        }
                }
            }
            CarHvacClient.this.mT1eBlowSpeedLevelSts = ((Integer) message.obj).intValue();
            PFLog.m29i(CarHvacClient.TAG, "handleMessage:    mT1eBlowSpeedLevelSts:  " + CarHvacClient.this.mT1eBlowSpeedLevelSts);
            if (CarHvacClient.this.listener != null) {
                CarHvacClient.this.listener.onT1eBlowSpeedLevelDisplaySts(CarHvacClient.this.mT1eBlowSpeedLevelSts);
            }
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
            if (propertyId != 557846582) {
                switch (propertyId) {
                    case 557846530:
                        CarHvacClient.this.mHandler.obtainMessage(557846530, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846531:
                        CarHvacClient.this.mHandler.obtainMessage(557846531, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846532:
                        CarHvacClient.this.mHandler.obtainMessage(557846532, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846533:
                        CarHvacClient.this.mHandler.obtainMessage(557846533, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846534:
                        CarHvacClient.this.mHandler.obtainMessage(557846534, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846535:
                        CarHvacClient.this.mHandler.obtainMessage(557846535, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846536:
                        CarHvacClient.this.mHandler.obtainMessage(557846536, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846537:
                        CarHvacClient.this.mHandler.obtainMessage(557846537, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846538:
                        CarHvacClient.this.mHandler.obtainMessage(557846538, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846539:
                        CarHvacClient.this.mHandler.obtainMessage(557846539, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846540:
                        CarHvacClient.this.mHandler.obtainMessage(557846540, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846541:
                        CarHvacClient.this.mHandler.obtainMessage(557846541, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846542:
                        CarHvacClient.this.mHandler.obtainMessage(557846542, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846543:
                        CarHvacClient.this.mHandler.obtainMessage(557846543, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846544:
                        CarHvacClient.this.mHandler.obtainMessage(557846544, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846545:
                        CarHvacClient.this.mHandler.obtainMessage(557846545, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846546:
                        CarHvacClient.this.mHandler.obtainMessage(557846546, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846547:
                        CarHvacClient.this.mHandler.obtainMessage(557846547, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846548:
                        CarHvacClient.this.mHandler.obtainMessage(557846548, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846549:
                        CarHvacClient.this.mHandler.obtainMessage(557846549, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846550:
                        CarHvacClient.this.mHandler.obtainMessage(557846550, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846551:
                        CarHvacClient.this.mHandler.obtainMessage(557846551, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846552:
                        CarHvacClient.this.mHandler.obtainMessage(557846552, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846553:
                        CarHvacClient.this.mHandler.obtainMessage(557846553, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846554:
                        CarHvacClient.this.mHandler.obtainMessage(557846554, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846555:
                        CarHvacClient.this.mHandler.obtainMessage(557846555, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846556:
                        CarHvacClient.this.mHandler.obtainMessage(557846556, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846557:
                        CarHvacClient.this.mHandler.obtainMessage(557846557, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846558:
                        CarHvacClient.this.mHandler.obtainMessage(557846558, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    case 557846559:
                        CarHvacClient.this.mHandler.obtainMessage(557846559, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
                        break;
                    default:
                        switch (propertyId) {
                            case 559943735:
                                CarHvacClient.this.mHandler.obtainMessage(559943735, Float.valueOf(((Float) carPropertyValue.getValue()).floatValue())).sendToTarget();
                                break;
                            case 559943736:
                                CarHvacClient.this.mHandler.obtainMessage(559943736, Float.valueOf(((Float) carPropertyValue.getValue()).floatValue())).sendToTarget();
                                break;
                        }
                }
            }
            CarHvacClient.this.mHandler.obtainMessage(557846582, Integer.valueOf(((Integer) carPropertyValue.getValue()).intValue())).sendToTarget();
        }
    }
}
