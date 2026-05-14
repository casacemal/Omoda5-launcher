package com.chery.media.util;

import android.content.Context;
import android.os.Handler;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.CarAdapterClient;
import com.chery.caradapter.carapi.client.CarAvmEngineClient;
import com.chery.caradapter.carapi.client.CarBasicClient;
import com.chery.caradapter.carapi.client.CarConfigInfoClient;
import com.chery.caradapter.carapi.client.CarPowerClient;
import com.chery.caradapter.carapi.client.CarVolumeClient;
import com.chery.caradapter.carapi.interfaces.IAvmEngineListener;
import com.chery.caradapter.carapi.interfaces.IBasicListener;
import com.chery.caradapter.carapi.interfaces.IConfigListener;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.caradapter.carapi.interfaces.IVolumeListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CarAdapterUse {
    private static CarAvmEngineClient carAvmEngineClient;
    private static CarBasicClient carBasicClient;
    private static CarConfigInfoClient carConfigInfoClient;
    private static CarPowerClient carPowerClient;
    private static CarVolumeClient carVolumeClient;
    private static Context context;
    private static Handler handler;
    private static final String TAG = CarLog.concatTag("MEDIA", CarAdapterUse.class);
    private static List<IBasicListener> basicListeners = new ArrayList();
    private static List<IVolumeListener> volumeListeners = new ArrayList();
    private static List<IPowerListener> powerListeners = new ArrayList();
    private static List<IConfigListener> configListeners = new ArrayList();
    private static List<IAvmEngineListener> avmEngineListeners = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static String getCarPowerStateString(int r0) {
        switch (r0) {
            case 1:
                return "WAIT_FOR_VHAL";
            case 2:
                return "SUSPEND_ENTER";
            case 3:
                return "SUSPEND_EXIT";
            case 4:
            default:
                return "";
            case 5:
                return "SHUTDOWN_ENTER";
            case 6:
                return "ON";
            case 7:
                return "SHUTDOWN_PREPARE";
            case 8:
                return "SHUTDOWN_CANCELLED";
            case 9:
                return "PWR_MODE_NONE";
            case 10:
                return "PWR_MODE_OFF";
            case 11:
                return "PWR_MODE_STANDBY";
            case 12:
                return "PWR_MODE_RUN";
            case 13:
                return "PWR_MODE_SLEEP";
            case 14:
                return "PWR_MODE_ABNORMAL";
            case 15:
                return "PWR_MODE_TEMP_ON";
            case 16:
                return "PWR_MODE_OFF_USER";
            case 17:
                return "PWR_MODE_PARTIALRUN";
            case 18:
                return "PWR_MODE_PROTECTION";
            case 19:
                return "PWR_MODE_TEMPRUN_ENDING";
            case 20:
                return "PWR_REQ_SYSTEM_OFF";
            case 21:
                return "PWR_SCREEN_ON";
            case 22:
                return "PWR_SCREEN_OFF";
        }
    }

    public static void init(Context context2) {
        context = context2;
        handler = new Handler();
        carBasicClient = getCarBasicClient();
        carVolumeClient = getCarVolumeClient();
        carPowerClient = getCarPowerClient();
        carConfigInfoClient = getCarConfigInfoClient();
        carAvmEngineClient = getCarAvmEngineClient();
    }

    public static CarBasicClient getCarBasicClient() {
        if (carBasicClient == null) {
            CarBasicClient carBasicClient2 = (CarBasicClient) CarAdapterClient.getInstance(context).getCarClient(6);
            carBasicClient = carBasicClient2;
            carBasicClient2.setListener(new IBasicListener() { // from class: com.chery.media.util.CarAdapterUse.1
                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onAutoFoldSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onAutoLockSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onCWCChargingSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onCWCPhoneForgottenMsg(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onCWCPhoneForgottenSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onCWCWorkingSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onCtpKeyVoiceRemind(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onDMSSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onDayNightModeLight(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onICMBrightness(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onIcmTimeChanged(String str) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onKeySts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onLightDetectedSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onPLGMaxPosition(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onRemoteLockFeedbackSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onSSMStatus(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onScreenOverTemperature(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onSrfSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onTrunkSts(int r1) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onWindowSts(int r1, int r2) {
                }

                @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
                public void onVehicleSpeed(float f) {
                    PFLog.m25d(CarAdapterUse.TAG, "CarBasicClient onVehicleSpeed var1:" + f);
                    Iterator it = CarAdapterUse.basicListeners.iterator();
                    while (it.hasNext()) {
                        ((IBasicListener) it.next()).onVehicleSpeed(f);
                    }
                }
            });
        }
        return carBasicClient;
    }

    public static void addCarBasicClientListener(IBasicListener iBasicListener) {
        if (basicListeners.contains(iBasicListener)) {
            return;
        }
        basicListeners.add(iBasicListener);
    }

    public static void removeCarBasicClientListener(IBasicListener iBasicListener) {
        basicListeners.remove(iBasicListener);
    }

    public static CarVolumeClient getCarVolumeClient() {
        if (carVolumeClient == null) {
            CarVolumeClient carVolumeClient2 = (CarVolumeClient) CarAdapterClient.getInstance(context).getCarClient(16);
            carVolumeClient = carVolumeClient2;
            carVolumeClient2.setListener(new IVolumeListener() { // from class: com.chery.media.util.CarAdapterUse.2
                @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
                public void onGroupVolumeChanged(int r3, int r4, int r5) {
                    PFLog.m25d(CarAdapterUse.TAG, "CarVolumeClient onGroupVolumeChanged zoneId:" + r3 + " groupId:" + r4 + " flags:" + r5);
                    Iterator it = CarAdapterUse.volumeListeners.iterator();
                    while (it.hasNext()) {
                        ((IVolumeListener) it.next()).onGroupVolumeChanged(r3, r4, r5);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
                public void onMasterMuteChanged(int r3, int r4) {
                    PFLog.m25d(CarAdapterUse.TAG, "CarVolumeClient onMasterMuteChanged zoneId:" + r3 + " flags:" + r4);
                    Iterator it = CarAdapterUse.volumeListeners.iterator();
                    while (it.hasNext()) {
                        ((IVolumeListener) it.next()).onMasterMuteChanged(r3, r4);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
                public void onGroupMuteChanged(int r3, int r4, int r5) {
                    PFLog.m25d(CarAdapterUse.TAG, "CarVolumeClient onGroupMuteChanged zoneId:" + r3 + " groupId:" + r4 + " flags:" + r5);
                    Iterator it = CarAdapterUse.volumeListeners.iterator();
                    while (it.hasNext()) {
                        ((IVolumeListener) it.next()).onGroupMuteChanged(r3, r4, r5);
                    }
                }
            });
        }
        return carVolumeClient;
    }

    public static void addCarVolumeClientListener(IVolumeListener iVolumeListener) {
        if (volumeListeners.contains(iVolumeListener)) {
            return;
        }
        volumeListeners.add(iVolumeListener);
    }

    public static void removeCarVolumeClientListener(IVolumeListener iVolumeListener) {
        volumeListeners.remove(iVolumeListener);
    }

    public static CarPowerClient getCarPowerClient() {
        if (carPowerClient == null) {
            CarPowerClient carPowerClient2 = (CarPowerClient) CarAdapterClient.getInstance(context).getCarClient(18);
            carPowerClient = carPowerClient2;
            carPowerClient2.setListener(new IPowerListener() { // from class: com.chery.media.util.CarAdapterUse.3
                @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
                public void onStateChanged(final int r3) {
                    CarAdapterUse.handler.post(new Runnable() { // from class: com.chery.media.util.CarAdapterUse.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PFLog.m25d(CarAdapterUse.TAG, String.format("CarPowerClient onStateChanged %s(%s)", CarAdapterUse.getCarPowerStateString(r3), Integer.valueOf(r3)));
                            Iterator it = CarAdapterUse.powerListeners.iterator();
                            while (it.hasNext()) {
                                ((IPowerListener) it.next()).onStateChanged(r3);
                            }
                        }
                    });
                }
            });
        }
        return carPowerClient;
    }

    public static void addCarPowerClientListener(IPowerListener iPowerListener) {
        if (powerListeners.contains(iPowerListener)) {
            return;
        }
        powerListeners.add(iPowerListener);
    }

    public static void removeCarPowerClientListener(IPowerListener iPowerListener) {
        powerListeners.remove(iPowerListener);
    }

    public static CarConfigInfoClient getCarConfigInfoClient() {
        if (carConfigInfoClient == null) {
            CarConfigInfoClient carConfigInfoClient2 = (CarConfigInfoClient) CarAdapterClient.getInstance(context).getCarClient(17);
            carConfigInfoClient = carConfigInfoClient2;
            carConfigInfoClient2.setListener(new IConfigListener() { // from class: com.chery.media.util.CarAdapterUse.4
                @Override // com.chery.caradapter.carapi.interfaces.IConfigListener
                public void onConfigSuccess() {
                    PFLog.m25d(CarAdapterUse.TAG, "CarConfigInfoClient onConfigSuccess:");
                    PFLog.m25d(CarAdapterUse.TAG, "CarConfigInfoClient onConfigSuccess getRadioArea:" + CarAdapterUse.carConfigInfoClient.getRadioArea());
                    PFLog.m25d(CarAdapterUse.TAG, "CarConfigInfoClient onConfigSuccess getRadioArea2:" + CarAdapterUse.carConfigInfoClient.getRadioArea2());
                    PFLog.m25d(CarAdapterUse.TAG, "CarConfigInfoClient onConfigSuccess isPartNumberBrazil:" + CarAdapterUse.carConfigInfoClient.isPartNumberBrazil());
                }
            });
        }
        return carConfigInfoClient;
    }

    public static void addConfigListener(IConfigListener iConfigListener) {
        if (configListeners.contains(iConfigListener)) {
            return;
        }
        configListeners.add(iConfigListener);
    }

    public static void removeConfigListener(IConfigListener iConfigListener) {
        configListeners.remove(iConfigListener);
    }

    public static CarAvmEngineClient getCarAvmEngineClient() {
        if (carAvmEngineClient == null) {
            CarAvmEngineClient carAvmEngineClient2 = (CarAvmEngineClient) CarAdapterClient.getInstance(context).getCarClient(19);
            carAvmEngineClient = carAvmEngineClient2;
            carAvmEngineClient2.setListener(new IAvmEngineListener() { // from class: com.chery.media.util.CarAdapterUse.5
                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onEnterExitState(byte[] bArr) {
                    PFLog.m25d(CarAdapterUse.TAG, "onEnterExitState " + Arrays.toString(bArr));
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onEnterExitState(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onEngineerMode(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onEngineerMode(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onCalibrationStatus(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onCalibrationStatus(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onViewStatus(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onViewStatus(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onViewParams(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onViewParams(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onLogSettings(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onLogSettings(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onDataStorage(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onDataStorage(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onSimulateOthers(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onSimulateOthers(bArr);
                    }
                }

                @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
                public void onAvmVersion(byte[] bArr) {
                    Iterator it = CarAdapterUse.avmEngineListeners.iterator();
                    while (it.hasNext()) {
                        ((IAvmEngineListener) it.next()).onAvmVersion(bArr);
                    }
                }
            });
        }
        return carAvmEngineClient;
    }

    public static void addAvmEngineListener(IAvmEngineListener iAvmEngineListener) {
        if (avmEngineListeners.contains(iAvmEngineListener)) {
            return;
        }
        avmEngineListeners.add(iAvmEngineListener);
    }

    public static void removeAvmEngineListener(IAvmEngineListener iAvmEngineListener) {
        avmEngineListeners.remove(iAvmEngineListener);
    }
}
