package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.constants.CarConfigInfo;
import com.chery.caradapter.carapi.interfaces.IConfigListener;
import com.chery.caradapter.carapi.interfaces.managers.IConfigManager;

/* loaded from: classes.dex */
public class CarConfigInfoClient extends CarBaseClient implements IConfigManager {
    private static final int MSG_CONFIG_INFO = 1;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarConfigInfoClient.class);
    private static volatile CarConfigInfoClient sInstance = null;
    private HandlerThread handlerThread;
    private IConfigListener listener;
    private CarConfigInfo mConfig;
    private String mEcuHwNumber;
    private String mEcuSerialNumber;
    private String mEcuSwNumber;
    private CarHandler mHandler;
    private String mUuid;
    private String mVehiclePartNumber;
    private boolean isConnected = false;
    private byte[] config_7010 = new byte[0];
    private byte[] config_7019 = new byte[0];
    private byte[] config_701A = new byte[0];
    private byte[] config_701B = new byte[0];
    private byte[] config_7038 = new byte[0];

    public boolean getAutoVentilationVisibility() {
        return true;
    }

    public boolean getDrlVisibility() {
        return false;
    }

    public boolean getEspVisibility() {
        return true;
    }

    public boolean getHdcVisibility() {
        return true;
    }

    public boolean getHeadlampHeightVisibility() {
        return true;
    }

    public boolean getRadarVisibility() {
        return true;
    }

    public boolean getRemoteLockVisibility() {
        return true;
    }

    public boolean getSelfCleaningVisibility() {
        return true;
    }

    public boolean getTjaicaExitVisibility() {
        return false;
    }

    private class CarHandler extends Handler {
        public CarHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                CarConfigInfoClient carConfigInfoClient = CarConfigInfoClient.this;
                carConfigInfoClient.parseConfig7010(carConfigInfoClient.config_7010);
                CarConfigInfoClient carConfigInfoClient2 = CarConfigInfoClient.this;
                carConfigInfoClient2.parseConfig7019(carConfigInfoClient2.config_7019);
                CarConfigInfoClient carConfigInfoClient3 = CarConfigInfoClient.this;
                carConfigInfoClient3.parseConfig701A(carConfigInfoClient3.config_701A);
                CarConfigInfoClient carConfigInfoClient4 = CarConfigInfoClient.this;
                carConfigInfoClient4.parseConfig701B(carConfigInfoClient4.config_701B);
                CarConfigInfoClient carConfigInfoClient5 = CarConfigInfoClient.this;
                carConfigInfoClient5.parseConfig7038(carConfigInfoClient5.config_7038);
                PFLog.m29i(CarConfigInfoClient.TAG, "init: " + CarConfigInfoClient.this.mConfig.toString());
                PFLog.m29i(CarConfigInfoClient.TAG, "init: mEcuHwNumber" + CarConfigInfoClient.this.mEcuHwNumber);
                PFLog.m29i(CarConfigInfoClient.TAG, "init: mEcuSwNumber" + CarConfigInfoClient.this.mEcuSwNumber);
                PFLog.m29i(CarConfigInfoClient.TAG, "init: mEcuSerialNumber" + CarConfigInfoClient.this.mEcuSerialNumber);
                PFLog.m29i(CarConfigInfoClient.TAG, "init: mVehiclePartNumber" + CarConfigInfoClient.this.mVehiclePartNumber);
                PFLog.m29i(CarConfigInfoClient.TAG, "init: mUuid" + CarConfigInfoClient.this.mUuid);
                if (CarConfigInfoClient.this.mVehiclePartNumber.isEmpty() && CarConfigInfoClient.this.isDebug()) {
                    String str = SystemProperties.get("persist.Config.chery.config.partno", "");
                    if (!str.isEmpty()) {
                        CarConfigInfoClient.this.mVehiclePartNumber = str;
                        PFLog.m29i(CarConfigInfoClient.TAG, "init: mVehiclePartNumber debug:" + CarConfigInfoClient.this.mVehiclePartNumber);
                    }
                }
                if (CarConfigInfoClient.this.listener != null) {
                    CarConfigInfoClient.this.listener.onConfigSuccess();
                }
                CarConfigInfoClient.this.isConnected = true;
            }
            super.handleMessage(message);
        }
    }

    private CarConfigInfoClient() {
    }

    public static CarConfigInfoClient getInstance() {
        if (sInstance == null) {
            synchronized (CarConfigInfoClient.class) {
                if (sInstance == null) {
                    sInstance = new CarConfigInfoClient();
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
        this.mConfig = new CarConfigInfo();
        this.mHandler.postDelayed(new Runnable() { // from class: com.chery.caradapter.carapi.client.CarConfigInfoClient.1
            @Override // java.lang.Runnable
            public void run() {
                boolean configInfo = CarConfigInfoClient.this.getConfigInfo();
                PFLog.m29i(CarConfigInfoClient.TAG, "getConfigInfo: " + configInfo);
                if (configInfo) {
                    CarConfigInfoClient.this.mHandler.sendEmptyMessage(1);
                } else {
                    CarConfigInfoClient.this.mHandler.postDelayed(this, 300L);
                }
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getConfigInfo() {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        this.config_7010 = this.carInfoManager.getByteProperty(561013250);
        this.config_7019 = this.carInfoManager.getByteProperty(561013251);
        this.config_701A = this.carInfoManager.getByteProperty(561013252);
        this.config_701B = this.carInfoManager.getByteProperty(561013253);
        this.config_7038 = this.carInfoManager.getByteProperty(561013263);
        this.mEcuHwNumber = this.carInfoManager.getStringProperty(554721799);
        this.mEcuSwNumber = this.carInfoManager.getStringProperty(554721798);
        this.mEcuSerialNumber = this.carInfoManager.getStringProperty(554721800);
        this.mVehiclePartNumber = this.carInfoManager.getStringProperty(554721801);
        this.mUuid = this.carInfoManager.getStringProperty(554721802);
        byte[] bArr4 = this.config_701A;
        return bArr4 != null && bArr4.length > 1 && (bArr = this.config_701B) != null && bArr.length > 1 && (bArr2 = this.config_7010) != null && bArr2.length > 1 && (bArr3 = this.config_7019) != null && bArr3.length > 1;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IConfigManager
    public void setListener(IConfigListener iConfigListener) {
        this.listener = iConfigListener;
    }

    @Override // com.chery.caradapter.carapi.interfaces.managers.IConfigManager
    public boolean isConnected() {
        return this.isConnected;
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

    public String getEcuHwNumber() {
        return this.mEcuHwNumber;
    }

    public String getEcuSwNumber() {
        return this.mEcuSwNumber;
    }

    public String getEcuSerialNumber() {
        return this.mEcuSerialNumber;
    }

    public String getVehiclePartNumber() {
        return this.mVehiclePartNumber;
    }

    public String getUuid() {
        return this.mUuid;
    }

    public boolean hasCerenceVr() {
        return this.mConfig.voiceRecognition == 1;
    }

    public boolean hasTurboDogNavi() {
        String str = this.mVehiclePartNumber;
        return str == null || str.contains(CarConfigInfo.PartNo.PART_NO_646AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_647AA);
    }

    public boolean hasDAB() {
        String str = this.mVehiclePartNumber;
        if (str == null) {
            return false;
        }
        return str.contains(CarConfigInfo.PartNo.PART_NO_555AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_898AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_901AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_845AA) || this.mConfig.digitalBroadcastAntenna == 1;
    }

    public String getProjectName() {
        String str = this.mVehiclePartNumber;
        return (str == null || str.contains(CarConfigInfo.PartNo.PART_NO_646AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_647AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_648AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_649AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_650AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_555AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_556AA)) ? "T19C" : (this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_899AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_900AA) || this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_901AA)) ? "T1E" : this.mVehiclePartNumber.contains(CarConfigInfo.PartNo.PART_NO_812AA) ? CarConfigInfo.ProjectName.T19C_CHINA : "T19C";
    }

    public String getVehicleName() {
        return this.mConfig.brand == 4 ? CarConfigInfo.VehicleName.T19C_OMODA : "T19C";
    }

    public boolean isChina() {
        String str = this.mVehiclePartNumber;
        return str != null && str.contains(CarConfigInfo.PartNo.PART_NO_812AA);
    }

    public boolean isRudderRight() {
        return this.mConfig.cfg2 == 1;
    }

    public boolean isPartNumberBrazil() {
        String str = this.mVehiclePartNumber;
        return str != null && str.contains(CarConfigInfo.PartNo.PART_NO_556AA);
    }

    public int getRomSize() {
        String str = this.mVehiclePartNumber;
        if (str == null) {
            return 0;
        }
        return str.contains(CarConfigInfo.PartNo.PART_NO_648AA) ? 1 : 2;
    }

    public boolean hasWifi() {
        return hasCarPlay() || hasAuto();
    }

    public boolean isDebug() {
        return SystemProperties.getBoolean("persist.Config.chery.config.debug", false);
    }

    public int getImmo() {
        return this.mConfig.immo;
    }

    public boolean hasEsp() {
        return this.mConfig.esp == 1;
    }

    public boolean hasAbs() {
        return this.mConfig.abs == 1;
    }

    public boolean hasAbm() {
        return this.mConfig.abm == 1;
    }

    public boolean hasIcm() {
        return this.mConfig.icm == 1;
    }

    public boolean hasBcm() {
        return this.mConfig.bcm == 1;
    }

    public boolean hasEms() {
        return this.mConfig.ems == 1;
    }

    public boolean hasRadar() {
        return this.mConfig.radar == 1;
    }

    public boolean hasSas() {
        return this.mConfig.sas == 1;
    }

    public boolean hasTpms() {
        return this.mConfig.tpms == 1;
    }

    public boolean hasPeps() {
        return this.mConfig.peps == 1;
    }

    public boolean hasEps() {
        return this.mConfig.eps == 1;
    }

    public boolean hasClm() {
        return this.mConfig.clm == 1;
    }

    public boolean hasTcu2() {
        return this.mConfig.tcu2 == 1;
    }

    public boolean hasTcu1() {
        return this.mConfig.tcu1 == 1;
    }

    public int getLanguage() {
        return this.mConfig.language;
    }

    public boolean hasEpb() {
        return this.mConfig.epb == 1;
    }

    public boolean hasTcu4() {
        return this.mConfig.tcu4 == 1;
    }

    public boolean hasTcu3() {
        return this.mConfig.tcu3 == 1;
    }

    public boolean hasAvm() {
        return this.mConfig.avm == 1;
    }

    public boolean hasLdw() {
        return this.mConfig.ldw == 1;
    }

    public boolean hasAutoLight() {
        return this.mConfig.autoLight == 1;
    }

    public boolean hasBsd() {
        return this.mConfig.bsd == 1;
    }

    public boolean hasReverseAssistVideo() {
        return this.mConfig.reverseAssistVideo == 1;
    }

    public int getRadioArea() {
        return this.mConfig.radioArea;
    }

    public int getOverSpeedWarning() {
        return this.mConfig.overSpeedWarning;
    }

    public int getNumberOfSpeaker() {
        return this.mConfig.speaker;
    }

    public boolean hasPlg() {
        return this.mConfig.plg == 1;
    }

    public boolean hasFcm() {
        return this.mConfig.fcm == 1;
    }

    public boolean hasPM25() {
        return this.mConfig.aqm == 1;
    }

    public boolean hasSpeedAutoLock() {
        return this.mConfig.speedAutoLock == 1;
    }

    public boolean hasMirrorAutoFold() {
        return this.mConfig.mirrorAutoFold == 1;
    }

    public int getAvmType() {
        return this.mConfig.avmType;
    }

    public boolean hasGrmSwitch() {
        return this.mConfig.grmSwitch == 1;
    }

    public int SteeringWheel() {
        return this.mConfig.steeringWheel;
    }

    public int getIhu() {
        return this.mConfig.ihu;
    }

    public boolean hasAntenna() {
        return this.mConfig.antenna == 1;
    }

    public boolean hasEipm() {
        return this.mConfig.eipm == 1;
    }

    public boolean hasSteeringMode() {
        return this.mConfig.steeringMode == 1;
    }

    public int getPepsType() {
        return this.mConfig.peps;
    }

    public int getInteractiveMode() {
        return this.mConfig.interactiveMode;
    }

    public boolean hasFrm() {
        return this.mConfig.frm == 1;
    }

    public int getNmType() {
        return this.mConfig.nmType;
    }

    public boolean hasLka() {
        return this.mConfig.lka == 1;
    }

    public boolean hasArNavi() {
        return this.mConfig.arNavi == 1;
    }

    public boolean hasFaceRecognition() {
        return this.mConfig.faceReco == 1;
    }

    public boolean hasCwc() {
        return this.mConfig.cwc == 1;
    }

    public boolean hasScu() {
        return this.mConfig.scu == 1;
    }

    public boolean hasDvr() {
        return this.mConfig.dvr == 1;
    }

    public boolean hasInteriorLighting() {
        return this.mConfig.interiorLightingType == 1;
    }

    public boolean hasMfs() {
        return this.mConfig.mfs == 1;
    }

    public boolean hasArkamysAdvanced() {
        return this.mConfig.arkamysAdvanced == 1;
    }

    public int getInteriorLightingType() {
        return this.mConfig.interiorLightingType;
    }

    public boolean hasFrontWindshieldHeating() {
        return this.mConfig.frontWindshieldHeating == 1;
    }

    public int getConfiguration2() {
        return this.mConfig.cfg2;
    }

    public boolean hasDow() {
        return this.mConfig.dow == 1;
    }

    public boolean hasBtKey() {
        return this.mConfig.btKey == 1;
    }

    public int getRadarAlarmDisplay() {
        return this.mConfig.radarAlarmDisplay;
    }

    public boolean hasAutoDefog() {
        return this.mConfig.autoDefog == 1;
    }

    public boolean hasIntelligentOpenTrunk() {
        return this.mConfig.intelligentOpenTrunk == 1;
    }

    public boolean hasGotoUnlockAndLeaveLock() {
        return this.mConfig.gotoUnlockAndLeaveLock == 1;
    }

    public boolean hasWelcomeFunction() {
        return this.mConfig.welcomeFunction == 1;
    }

    public boolean hasAipm() {
        return this.mConfig.aipm == 1;
    }

    public boolean hasIon() {
        return this.mConfig.ion == 1;
    }

    public boolean hasAuto() {
        return this.mConfig.auto == 1;
    }

    public boolean hasQDLink() {
        return this.mConfig.qdlink == 1;
    }

    public boolean hasFragrance() {
        return this.mConfig.fragrance == 1;
    }

    public boolean hasCarPlay() {
        return this.mConfig.carplay == 1;
    }

    public boolean hasDrl() {
        return this.mConfig.drl == 1;
    }

    public boolean hasDateFromBus() {
        return this.mConfig.dateFromBus == 1;
    }

    public boolean hasAcp() {
        return this.mConfig.acp == 1;
    }

    public boolean hasRcw() {
        return this.mConfig.rcw == 1;
    }

    public int getNumberOfDriveMode() {
        return this.mConfig.numberOfDriveMode;
    }

    public boolean hasEamp() {
        return this.mConfig.eamp == 1;
    }

    public int getRearRadarsNumber() {
        return this.mConfig.rearRadarsNumber;
    }

    public int getAssistLine() {
        return this.mConfig.assistLine;
    }

    public int getDisplayType() {
        return this.mConfig.displayType;
    }

    public int getFaceStyle() {
        return this.mConfig.faceStyle;
    }

    public int getRadioArea2() {
        return this.mConfig.radioArea2;
    }

    public boolean hasApa() {
        return this.mConfig.apa == 1;
    }

    public boolean hasApm() {
        return this.mConfig.apm == 1;
    }

    public boolean hasCgw() {
        return this.mConfig.cgw == 1;
    }

    public boolean hasLightedRoofRack() {
        return this.mConfig.lightedRoofRack == 1;
    }

    public boolean hasSeatVentilating() {
        return this.mConfig.seatVentilating == 1;
    }

    public boolean hasSonySound() {
        return this.mConfig.SONYsound == 1;
    }

    public int getSNumberofDriveMode2() {
        return this.mConfig.numberofDriveMode2;
    }

    public boolean hasNaviInformation() {
        return this.mConfig.naviInformation == 1;
    }

    public boolean hasBeidou() {
        return this.mConfig.beidou == 1;
    }

    public boolean hasSla() {
        return this.mConfig.sla == 1;
    }

    public int getCmosInteractiveMode() {
        return this.mConfig.cmosInteractiveMode;
    }

    public int getAvmIntergatedMethod() {
        return this.mConfig.avmIntergatedMethod;
    }

    public int getSunroof() {
        return this.mConfig.sunroof;
    }

    public boolean hasSeatMassage() {
        return this.mConfig.seatMassage == 1;
    }

    public boolean hasCvbox() {
        return this.mConfig.cvbox == 1;
    }

    public boolean hashud() {
        return this.mConfig.hud == 1;
    }

    public int getIdleStartStopType() {
        return this.mConfig.idleStartStopType;
    }

    public boolean hasFrontRadar() {
        return this.mConfig.frontRadar == 1;
    }

    public int getTboxEcallExternalmodule() {
        return this.mConfig.tboxEcallExternalmodule;
    }

    public boolean hasEmergencyLaneKeeping() {
        return this.mConfig.emergencyLaneKeeping == 1;
    }

    public boolean hasSpeedControlFunction() {
        return this.mConfig.speedControlFunction == 1;
    }

    public boolean hasIdleStartStopSystem() {
        return this.mConfig.idleStartStopSystem == 1;
    }

    public boolean hasEclm() {
        return this.mConfig.eclm == 1;
    }

    public boolean hasCcp() {
        return this.mConfig.ccp == 1;
    }

    public boolean hasRrcr() {
        return this.mConfig.rrcr == 1;
    }

    public boolean hasRlcr() {
        return this.mConfig.rlcr == 1;
    }

    public boolean hasEpsIntegratedSAS() {
        return this.mConfig.epsIntegratedSAS == 1;
    }

    public boolean hasIntelligentEvasionSystem() {
        return this.mConfig.intelligentEvasionSystem == 1;
    }

    public boolean hasDriverAwayInformation() {
        return this.mConfig.driverAwayInformation == 1;
    }

    public boolean hasAutomaticEmergencyBraking() {
        return this.mConfig.automaticEmergencyBraking == 1;
    }

    public boolean hasVoiceRecognition() {
        return this.mConfig.voiceRecognition == 1;
    }

    public boolean hasTrafficLightIdentification() {
        return this.mConfig.trafficLightIdentification == 1;
    }

    public boolean hasTrafficSignRecognition() {
        return this.mConfig.trafficSignRecognition == 1;
    }

    public boolean hasTrafficJamAssist() {
        return this.mConfig.trafficJamAssist == 1;
    }

    public boolean hasLaneDeparturePrevention() {
        return this.mConfig.laneDeparturePrevention == 1;
    }

    public boolean hasPassengerSeatVentilation() {
        return this.mConfig.passengerSeatVentilation == 1;
    }

    public boolean hasPassengerSeatHeating() {
        return this.mConfig.passengerSeatHeating == 1;
    }

    public boolean hasDriverSeatVentilation() {
        return this.mConfig.driverSeatVentilation == 1;
    }

    public boolean hasDriverSeatHeating() {
        return this.mConfig.driverSeatHeating == 1;
    }

    public boolean hasShu1p() {
        return this.mConfig.shu1p == 1;
    }

    public boolean hasShu1d() {
        return this.mConfig.shu1d == 1;
    }

    public boolean hasSpeedLimitAssistance() {
        return this.mConfig.speedLimitAssistance == 1;
    }

    public boolean hasRearCrossTrafficBraking() {
        return this.mConfig.rearCrossTrafficBraking == 1;
    }

    public boolean hasLhm() {
        return this.mConfig.lhm == 1;
    }

    public boolean hasFatigueMonitoring() {
        return this.mConfig.fatigueMonitoring == 1;
    }

    public boolean hasEcall() {
        return this.mConfig.ecall == 1;
    }

    public int getReverseAssistVideoType() {
        return this.mConfig.reverseAssistVideoType;
    }

    public boolean hasShu2r() {
        return this.mConfig.shu2r == 1;
    }

    public boolean hasShu2l() {
        return this.mConfig.shu2l == 1;
    }

    public boolean hasRhm() {
        return this.mConfig.rhm == 1;
    }

    public boolean hasAutoAC() {
        return this.mConfig.clm == 1 && this.mConfig.eclm == 0;
    }

    public boolean hasElecAc() {
        return this.mConfig.clm == 0 && this.mConfig.eclm == 1;
    }

    public boolean isAutomaticTransmission() {
        return hasTcu1() || hasTcu2() || hasTcu3() || hasTcu4();
    }

    public boolean getIntelligentKeyVisibility() {
        return getWelLightVisibility() || getPepsPollingVisibility() || getIntelligentOpenVisibility();
    }

    public boolean getWelLightVisibility() {
        return this.mConfig.welcomeFunction == 1;
    }

    public boolean getPepsPollingVisibility() {
        return this.mConfig.gotoUnlockAndLeaveLock == 1;
    }

    public boolean getIntelligentOpenVisibility() {
        return this.mConfig.intelligentOpenTrunk == 1;
    }

    public boolean getLightVisibility() {
        return getDrlVisibility() || getHeadlampDelayVisibility() || getHmaVisibility() || getHeadlampHeightVisibility();
    }

    public boolean getOutMusicModeVisibility() {
        return this.mConfig.lhm == 1 && this.mConfig.rhm == 1;
    }

    public boolean getHeadlampDelayVisibility() {
        return this.mConfig.autoLight == 1;
    }

    public boolean getHmaVisibility() {
        return this.mConfig.fcm == 1;
    }

    public boolean getDriverVisibility() {
        return getDriverPart1Visibility() || getDriverPart2Visibility() || getDriverPart3Visibility();
    }

    public boolean getDriverPart1Visibility() {
        return getDowVisibility() || getRcwVisibility() || getBsdVisibility() || getFcwSensVisibility() || getAebVisibility() || getLdwVisibility() || getLdwWarnVisibility() || getLdwSensVisibility();
    }

    public boolean getDriverPart2Visibility() {
        return getSlaVisibility() || getOverSpeedVisibility() || getDMSVisibility() || getRctbVisibility() || getFcmElkVisibility() || getLdpVisibility() || getSpeedControlVisibility() || getIesVisibility() || getTjaicaExitVisibility() || getDaiVisibility() || getTrafficSignalLightVisibility() || getTrafficSymbolVisibility();
    }

    public boolean getDriverPart3Visibility() {
        return getAssVisibility() || getAssModeVisibility() || getRememberDriveModeVisibility();
    }

    public boolean getDowVisibility() {
        return this.mConfig.dow == 1;
    }

    public boolean getRcwVisibility() {
        return this.mConfig.rcw == 1;
    }

    public boolean getBsdVisibility() {
        return this.mConfig.rlcr == 1 && this.mConfig.rrcr == 1;
    }

    public boolean getSpeedControlVisibility() {
        return this.mConfig.speedControlFunction == 1;
    }

    public boolean getSlaVisibility() {
        return this.mConfig.sla == 1;
    }

    public boolean getOverSpeedVisibility() {
        return this.mConfig.overSpeedWarning == 1;
    }

    public boolean getDMSVisibility() {
        return this.mConfig.fatigueMonitoring == 1;
    }

    public boolean getAebVisibility() {
        return this.mConfig.frm == 1 || this.mConfig.automaticEmergencyBraking == 1;
    }

    public boolean getFcwVisibility() {
        return this.mConfig.frm == 1 || this.mConfig.automaticEmergencyBraking == 1;
    }

    public boolean getFcwSensVisibility() {
        return this.mConfig.frm == 1 || this.mConfig.automaticEmergencyBraking == 1;
    }

    public boolean getRctbVisibility() {
        return this.mConfig.rearCrossTrafficBraking == 1;
    }

    public boolean getDaiVisibility() {
        return this.mConfig.driverAwayInformation == 1;
    }

    public boolean getIesVisibility() {
        return this.mConfig.intelligentEvasionSystem == 1;
    }

    public boolean getLdwVisibility() {
        return this.mConfig.fcm == 1 || this.mConfig.ldw == 1;
    }

    public boolean getLdwWarnVisibility() {
        return this.mConfig.ldw == 1;
    }

    public boolean getLdpVisibility() {
        return this.mConfig.laneDeparturePrevention == 1;
    }

    public boolean getLdwSensVisibility() {
        return this.mConfig.fcm == 1 || this.mConfig.ldw == 1;
    }

    public boolean getFcmElkVisibility() {
        return this.mConfig.emergencyLaneKeeping == 1;
    }

    public boolean getAssModeVisibility() {
        return this.mConfig.steeringMode == 1 && (this.mConfig.numberOfDriveMode == 0 || this.mConfig.numberOfDriveMode == 1 || this.mConfig.numberOfDriveMode == 3);
    }

    public boolean getAssVisibility() {
        return this.mConfig.steeringMode == 1;
    }

    public boolean getRememberDriveModeVisibility() {
        return this.mConfig.numberOfDriveMode == 0 || this.mConfig.numberOfDriveMode == 1 || this.mConfig.numberOfDriveMode == 3;
    }

    public boolean getTrafficSymbolVisibility() {
        return this.mConfig.trafficSignRecognition == 1;
    }

    public boolean getTrafficSignalLightVisibility() {
        return this.mConfig.trafficLightIdentification == 1;
    }

    public boolean getIssVisibility() {
        return this.mConfig.idleStartStopSystem == 1;
    }

    public boolean getPersionalVisibility() {
        return getDimmingStatusVisibility() || getLightBrightnessVisibility() || getLightColorVisibility() || getDriverModeVisibility() || getMusicModeVisibility();
    }

    public boolean getDimmingStatusVisibility() {
        return this.mConfig.interiorLighting == 1;
    }

    public boolean getLightBrightnessVisibility() {
        return this.mConfig.interiorLighting == 1;
    }

    public boolean getLightColorVisibility() {
        return this.mConfig.interiorLighting == 1;
    }

    public boolean getDriverModeVisibility() {
        return this.mConfig.interiorLighting == 1 && (this.mConfig.numberOfDriveMode == 0 || this.mConfig.numberOfDriveMode == 1 || this.mConfig.numberOfDriveMode == 3);
    }

    public boolean getMusicModeVisibility() {
        return this.mConfig.interiorLighting == 1;
    }

    public boolean getBasicVisibility() {
        return getBasicPart1Visibility() || getBasicPart2Visibility();
    }

    public boolean getBasicPart1Visibility() {
        return getAutoLockVisibility() || getRemoteLockVisibility() || getAutoFoldVisibility() || getTrunkVisibility();
    }

    public boolean getBasicPart2Visibility() {
        return getCwcVisibility() || getPhoneForgottenVisibility();
    }

    public boolean getAutoLockVisibility() {
        return this.mConfig.speedAutoLock == 1;
    }

    public boolean getAutoFoldVisibility() {
        return this.mConfig.mirrorAutoFold == 1;
    }

    public boolean getTrunkVisibility() {
        return this.mConfig.plg == 1;
    }

    public boolean getCwcVisibility() {
        return this.mConfig.cwc == 1;
    }

    public boolean getPhoneForgottenVisibility() {
        return this.mConfig.cwc == 1;
    }

    public boolean getAirVisibility() {
        return getAirPart1Visibility() || getAirPart2Visibility();
    }

    public boolean getAirPart1Visibility() {
        return getAutoDefrostVisibility() || getSelfCleaningVisibility() || getAutoVentilationVisibility() || getCustomAirVisibility() || getAutoRunVisibility();
    }

    public boolean getAirPart2Visibility() {
        return getWelcomeModeVisibility() || getRefreshVisibility();
    }

    public boolean getAutoDefrostVisibility() {
        return this.mConfig.autoDefog == 1;
    }

    public boolean getCustomAirVisibility() {
        return this.mConfig.clm == 1;
    }

    public boolean getAutoRunVisibility() {
        return this.mConfig.aqm == 1;
    }

    public boolean getWelcomeModeVisibility() {
        return this.mConfig.fragrance == 1;
    }

    public boolean getRefreshVisibility() {
        return this.mConfig.fragrance == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseConfig7010(byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            return;
        }
        this.mConfig.immo = (bArr[0] >> 6) & 3;
        this.mConfig.esp = (bArr[0] >> 5) & 1;
        this.mConfig.abs = (bArr[0] >> 4) & 1;
        this.mConfig.abm = (bArr[0] >> 3) & 1;
        this.mConfig.icm = (bArr[0] >> 2) & 1;
        this.mConfig.bcm = (bArr[0] >> 1) & 1;
        this.mConfig.ems = bArr[0] & 1;
        this.mConfig.radar = (bArr[1] >> 7) & 1;
        this.mConfig.sas = (bArr[1] >> 6) & 1;
        this.mConfig.tpms = (bArr[1] >> 5) & 1;
        this.mConfig.peps = (bArr[1] >> 4) & 1;
        this.mConfig.eps = (bArr[1] >> 3) & 1;
        this.mConfig.clm = (bArr[1] >> 2) & 1;
        this.mConfig.tcu2 = (bArr[1] >> 1) & 1;
        this.mConfig.tcu1 = bArr[1] & 1;
        this.mConfig.language = (bArr[2] >> 4) & 15;
        this.mConfig.epb = (bArr[2] >> 3) & 1;
        this.mConfig.tcu4 = (bArr[2] >> 2) & 1;
        this.mConfig.tcu3 = (bArr[2] >> 1) & 1;
        this.mConfig.avm = bArr[2] & 1;
        this.mConfig.ldw = (bArr[3] >> 7) & 1;
        this.mConfig.autoLight = (bArr[3] >> 6) & 1;
        this.mConfig.bsd = (bArr[3] >> 5) & 1;
        this.mConfig.reverseAssistVideo = (bArr[3] >> 4) & 1;
        this.mConfig.radioArea = (bArr[3] >> 2) & 3;
        this.mConfig.overSpeedWarning = bArr[3] & 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseConfig7019(byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            return;
        }
        this.mConfig.speaker = (bArr[0] >> 5) & 7;
        this.mConfig.plg = (bArr[0] >> 4) & 1;
        this.mConfig.fcm = (bArr[0] >> 3) & 1;
        this.mConfig.aqm = (bArr[0] >> 2) & 1;
        this.mConfig.speedAutoLock = (bArr[0] >> 1) & 1;
        this.mConfig.mirrorAutoFold = bArr[0] & 1;
        this.mConfig.avmType = (bArr[1] >> 6) & 3;
        this.mConfig.grmSwitch = (bArr[1] >> 5) & 1;
        this.mConfig.steeringWheel = (bArr[1] >> 4) & 1;
        this.mConfig.ihu = (bArr[1] >> 3) & 1;
        this.mConfig.antenna = (bArr[1] >> 2) & 1;
        this.mConfig.eipm = (bArr[1] >> 1) & 1;
        this.mConfig.steeringMode = bArr[1] & 1;
        this.mConfig.pepsType = (bArr[2] >> 6) & 3;
        this.mConfig.interactiveMode = (bArr[2] >> 4) & 3;
        this.mConfig.frm = (bArr[2] >> 3) & 1;
        this.mConfig.nmType = (bArr[2] >> 1) & 3;
        this.mConfig.lka = bArr[2] & 1;
        this.mConfig.arNavi = (bArr[3] >> 7) & 1;
        this.mConfig.faceReco = (bArr[3] >> 6) & 1;
        this.mConfig.cwc = (bArr[3] >> 4) & 1;
        this.mConfig.scu = (bArr[3] >> 3) & 1;
        this.mConfig.dvr = (bArr[3] >> 2) & 1;
        this.mConfig.interiorLighting = (bArr[3] >> 1) & 1;
        this.mConfig.mfs = bArr[3] & 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseConfig701A(byte[] bArr) {
        if (bArr == null || bArr.length < 8) {
            return;
        }
        this.mConfig.arkamysAdvanced = (bArr[0] >> 7) & 1;
        this.mConfig.interiorLightingType = (bArr[0] >> 5) & 3;
        this.mConfig.frontWindshieldHeating = (bArr[0] >> 4) & 1;
        this.mConfig.cfg2 = bArr[0] & 15;
        this.mConfig.dow = (bArr[1] >> 7) & 1;
        this.mConfig.btKey = (bArr[1] >> 6) & 1;
        this.mConfig.radarAlarmDisplay = (bArr[1] >> 5) & 1;
        this.mConfig.autoDefog = (bArr[1] >> 4) & 1;
        this.mConfig.intelligentOpenTrunk = (bArr[1] >> 3) & 1;
        this.mConfig.gotoUnlockAndLeaveLock = (bArr[1] >> 2) & 1;
        this.mConfig.welcomeFunction = (bArr[1] >> 1) & 1;
        this.mConfig.aipm = bArr[1] & 1;
        this.mConfig.ion = (bArr[2] >> 7) & 1;
        this.mConfig.auto = (bArr[2] >> 6) & 1;
        this.mConfig.qdlink = (bArr[2] >> 5) & 1;
        this.mConfig.fragrance = (bArr[2] >> 4) & 1;
        this.mConfig.carplay = (bArr[2] >> 3) & 1;
        this.mConfig.drl = (bArr[2] >> 2) & 1;
        this.mConfig.dateFromBus = (bArr[2] >> 1) & 1;
        this.mConfig.acp = bArr[2] & 1;
        this.mConfig.rcw = (bArr[3] >> 7) & 1;
        this.mConfig.numberOfDriveMode = (bArr[3] >> 5) & 3;
        this.mConfig.eamp = (bArr[3] >> 4) & 1;
        this.mConfig.rearRadarsNumber = (bArr[3] >> 2) & 3;
        this.mConfig.assistLine = bArr[3] & 3;
        this.mConfig.displayType = (bArr[4] >> 6) & 3;
        this.mConfig.faceStyle = (bArr[4] >> 5) & 1;
        this.mConfig.radioArea2 = (bArr[4] >> 3) & 3;
        this.mConfig.apa = (bArr[4] >> 2) & 1;
        this.mConfig.apm = (bArr[4] >> 1) & 1;
        this.mConfig.cgw = bArr[4] & 1;
        this.mConfig.reserved2 = (bArr[5] >> 7) & 1;
        this.mConfig.lightedRoofRack = (bArr[5] >> 6) & 1;
        this.mConfig.seatVentilating = (bArr[5] >> 5) & 1;
        this.mConfig.SONYsound = (bArr[5] >> 4) & 1;
        this.mConfig.numberofDriveMode2 = (bArr[5] >> 1) & 7;
        this.mConfig.naviInformation = bArr[5] & 1;
        this.mConfig.beidou = (bArr[6] >> 7) & 1;
        this.mConfig.sla = (bArr[6] >> 6) & 1;
        this.mConfig.cmosInteractiveMode = (bArr[6] >> 4) & 3;
        this.mConfig.avmIntergatedMethod = (bArr[6] >> 2) & 3;
        this.mConfig.sunroof = bArr[6] & 3;
        this.mConfig.digitalBroadcastAntenna = (bArr[7] >> 7) & 1;
        this.mConfig.seatMassage = (bArr[7] >> 6) & 1;
        this.mConfig.cvbox = (bArr[7] >> 5) & 1;
        this.mConfig.hud = (bArr[7] >> 4) & 1;
        this.mConfig.idleStartStopType = (bArr[7] >> 2) & 3;
        this.mConfig.frontRadar = (bArr[7] >> 1) & 1;
        this.mConfig.tboxEcallExternalmodule = bArr[7] & 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseConfig701B(byte[] bArr) {
        if (bArr == null || bArr.length < 8) {
            return;
        }
        this.mConfig.emergencyLaneKeeping = (bArr[0] >> 7) & 1;
        this.mConfig.speedControlFunction = (bArr[0] >> 6) & 1;
        this.mConfig.idleStartStopSystem = (bArr[0] >> 5) & 1;
        this.mConfig.eclm = (bArr[0] >> 4) & 1;
        this.mConfig.ccp = (bArr[0] >> 3) & 1;
        this.mConfig.rrcr = (bArr[0] >> 2) & 1;
        this.mConfig.rlcr = (bArr[0] >> 1) & 1;
        this.mConfig.epsIntegratedSAS = bArr[0] & 1;
        this.mConfig.intelligentEvasionSystem = (bArr[1] >> 7) & 1;
        this.mConfig.driverAwayInformation = (bArr[1] >> 6) & 1;
        this.mConfig.automaticEmergencyBraking = (bArr[1] >> 5) & 1;
        this.mConfig.voiceRecognition = (bArr[1] >> 4) & 1;
        this.mConfig.trafficLightIdentification = (bArr[1] >> 3) & 1;
        this.mConfig.trafficSignRecognition = (bArr[1] >> 2) & 1;
        this.mConfig.trafficJamAssist = (bArr[1] >> 1) & 1;
        this.mConfig.laneDeparturePrevention = bArr[1] & 1;
        this.mConfig.passengerSeatVentilation = (bArr[2] >> 7) & 1;
        this.mConfig.passengerSeatHeating = (bArr[2] >> 6) & 1;
        this.mConfig.driverSeatVentilation = (bArr[2] >> 5) & 1;
        this.mConfig.driverSeatHeating = (bArr[2] >> 4) & 1;
        this.mConfig.shu1p = (bArr[2] >> 3) & 1;
        this.mConfig.shu1d = (bArr[2] >> 2) & 1;
        this.mConfig.speedLimitAssistance = (bArr[2] >> 1) & 1;
        this.mConfig.rearCrossTrafficBraking = bArr[2] & 1;
        this.mConfig.lhm = (bArr[3] >> 7) & 1;
        this.mConfig.fatigueMonitoring = (bArr[3] >> 6) & 1;
        this.mConfig.ecall = (bArr[3] >> 5) & 1;
        this.mConfig.reverseAssistVideoType = (bArr[3] >> 2) & 7;
        this.mConfig.shu2r = (bArr[3] >> 1) & 1;
        this.mConfig.shu2l = bArr[3] & 1;
        this.mConfig.rhm = bArr[4] & 1;
        this.mConfig.brand = bArr[6] & 15;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseConfig7038(byte[] bArr) {
        if (bArr == null || bArr.length < 8) {
            return;
        }
        this.mConfig.sunroofAtmosphereLamp = bArr[0] & 1;
        this.mConfig.ihuDcmLearnSK = (bArr[0] >> 7) & 1;
        this.mConfig.rearviewMirrorScrollDown = (bArr[0] >> 6) & 1;
        this.mConfig.seatRearViewMirrorMemory = (bArr[1] >> 1) & 1;
        this.mConfig.navigationMap = bArr[3] & 15;
        this.mConfig.country = bArr[6] & 255;
    }

    public String getCherySWVersionCode() {
        return this.carInfoManager.getCherySWVersionCode();
    }

    public String getSOCVersionCode() {
        return this.carInfoManager.getSOCVersionCode();
    }

    public int getCountry() {
        return this.mConfig.country;
    }
}
