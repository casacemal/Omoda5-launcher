package android.car.media;

import android.annotation.SystemApi;
import android.car.CarLibLog;
import android.car.CarManagerBase;
import android.car.media.ICarAudio;
import android.car.media.ICarAudioSettingCallback;
import android.car.media.ICarVolumeCallback;
import android.content.Context;
import android.media.AudioSetting;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.Display;
import android.view.DisplayAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class CarAudioManager implements CarManagerBase {

    @SystemApi
    public static final String AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS = "android.car.media.AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS";
    public static final String AUDIOFOCUS_EXTRA_REQUEST_ZONE_ID = "android.car.media.AUDIOFOCUS_EXTRA_REQUEST_ZONE_ID";
    public static final int CHANNEL_GAIN_MAX = 66;
    public static final int CHANNEL_GAIN_MUTE = 0;
    public static final int FLAG_CHANNEL_ALL = 15;
    public static final int FLAG_CHANNEL_LF = 1;
    public static final int FLAG_CHANNEL_LR = 4;
    public static final int FLAG_CHANNEL_RF = 2;
    public static final int FLAG_CHANNEL_RR = 8;

    @SystemApi
    public static final int PRIMARY_AUDIO_ZONE = 0;
    private final ICarAudio mService;
    private final ICarVolumeCallback mCarVolumeCallbackImpl = new ICarVolumeCallback.Stub() { // from class: android.car.media.CarAudioManager.1
        @Override // android.car.media.ICarVolumeCallback
        public void onGroupVolumeChanged(int r2, int r3, int r4) {
            Iterator it = CarAudioManager.this.mCarVolumeCallbacks.iterator();
            while (it.hasNext()) {
                ((CarVolumeCallback) it.next()).onGroupVolumeChanged(r2, r3, r4);
            }
        }

        @Override // android.car.media.ICarVolumeCallback
        public void onMasterMuteChanged(int r2, int r3) {
            Iterator it = CarAudioManager.this.mCarVolumeCallbacks.iterator();
            while (it.hasNext()) {
                ((CarVolumeCallback) it.next()).onMasterMuteChanged(r2, r3);
            }
        }

        @Override // android.car.media.ICarVolumeCallback
        public void onGroupMuteChanged(int r2, int r3, int r4) {
            Iterator it = CarAudioManager.this.mCarVolumeCallbacks.iterator();
            while (it.hasNext()) {
                ((CarVolumeCallback) it.next()).onGroupMuteChanged(r2, r3, r4);
            }
        }
    };
    private final ICarAudioSettingCallback mCarAudioSettingCallbackImpl = new ICarAudioSettingCallback.Stub() { // from class: android.car.media.CarAudioManager.2
        @Override // android.car.media.ICarAudioSettingCallback
        public void onAudioSettingChanged(AudioSetting audioSetting) {
            Iterator it = CarAudioManager.this.mCarAudioSettingCallbacks.iterator();
            while (it.hasNext()) {
                ((CarAudioSettingCallback) it.next()).onAudioSettingChanged(audioSetting);
            }
        }
    };
    private final List<CarVolumeCallback> mCarVolumeCallbacks = new ArrayList();
    private final List<CarAudioSettingCallback> mCarAudioSettingCallbacks = new ArrayList();

    public static abstract class CarAudioSettingCallback {
        public void onAudioSettingChanged(AudioSetting audioSetting) {
        }
    }

    public static abstract class CarVolumeCallback {
        public void onGroupMuteChanged(int r1, int r2, int r3) {
        }

        public void onGroupVolumeChanged(int r1, int r2, int r3) {
        }

        public void onMasterMuteChanged(int r1, int r2) {
        }
    }

    public boolean isDynamicRoutingEnabled() {
        try {
            return this.mService.isDynamicRoutingEnabled();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setGroupVolume(int r2, int r3, int r4) {
        setGroupVolume(0, r2, r3, r4);
    }

    @SystemApi
    public void setGroupVolume(int r1, int r2, int r3, int r4) {
        try {
            this.mService.setGroupVolume(r1, r2, r3, r4);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int getGroupMaxVolume(int r2) {
        return getGroupMaxVolume(0, r2);
    }

    @SystemApi
    public int getGroupMaxVolume(int r1, int r2) {
        try {
            return this.mService.getGroupMaxVolume(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int getGroupMinVolume(int r2) {
        return getGroupMinVolume(0, r2);
    }

    @SystemApi
    public int getGroupMinVolume(int r1, int r2) {
        try {
            return this.mService.getGroupMinVolume(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int getGroupVolume(int r2) {
        return getGroupVolume(0, r2);
    }

    @SystemApi
    public int getGroupVolume(int r1, int r2) {
        try {
            return this.mService.getGroupVolume(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setGroupMute(int r2, boolean z, int r4) {
        setGroupMute(0, r2, z, r4);
    }

    @SystemApi
    public void setGroupMute(int r1, int r2, boolean z, int r4) {
        try {
            this.mService.setGroupMute(r1, r2, z, r4);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public boolean getGroupMute(int r2) {
        return getGroupMute(0, r2);
    }

    @SystemApi
    public boolean getGroupMute(int r1, int r2) {
        try {
            return this.mService.getGroupMute(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setSourceMute(int r2, boolean z) {
        setSourceMute(0, r2, z);
    }

    @SystemApi
    public void setSourceMute(int r1, int r2, boolean z) {
        try {
            this.mService.setSourceMute(r1, r2, z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setGroupChannelGain(int r2, int r3, int r4) {
        setGroupChannelGain(0, r2, r3, r4);
    }

    @SystemApi
    public void setGroupChannelGain(int r1, int r2, int r3, int r4) {
        try {
            this.mService.setGroupChannelGain(r1, r2, r3, r4);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setFadeTowardFront(float f) {
        try {
            this.mService.setFadeTowardFront(f);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setBalanceTowardRight(float f) {
        try {
            this.mService.setBalanceTowardRight(f);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public String[] getExternalSources() {
        try {
            return this.mService.getExternalSources();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public CarAudioPatchHandle createAudioPatch(String str, int r2, int r3) {
        try {
            return this.mService.createAudioPatch(str, r2, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void releaseAudioPatch(CarAudioPatchHandle carAudioPatchHandle) {
        try {
            this.mService.releaseAudioPatch(carAudioPatchHandle);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int getVolumeGroupCount() {
        return getVolumeGroupCount(0);
    }

    @SystemApi
    public int getVolumeGroupCount(int r1) {
        try {
            return this.mService.getVolumeGroupCount(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int getVolumeGroupIdForUsage(int r2) {
        return getVolumeGroupIdForUsage(0, r2);
    }

    @SystemApi
    public int getVolumeGroupIdForUsage(int r1, int r2) {
        try {
            return this.mService.getVolumeGroupIdForUsage(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int[] getUsagesForVolumeGroupId(int r2) {
        return getUsagesForVolumeGroupId(0, r2);
    }

    public int[] getAudioZoneIds() {
        try {
            return this.mService.getAudioZoneIds();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int getZoneIdForUid(int r1) {
        try {
            return this.mService.getZoneIdForUid(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean setZoneIdForUid(int r1, int r2) {
        try {
            return this.mService.setZoneIdForUid(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean clearZoneIdForUid(int r1) {
        try {
            return this.mService.clearZoneIdForUid(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int getZoneIdForDisplay(Display display) {
        DisplayAddress.Physical physical;
        DisplayAddress.Physical address = display.getAddress();
        if (!(address instanceof DisplayAddress.Physical) || (physical = address) == null) {
            return 0;
        }
        return getZoneIdForDisplayPortId(physical.getPort());
    }

    public int getZoneIdForDisplayPortId(byte b) {
        try {
            return this.mService.getZoneIdForDisplayPortId(b);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int[] getUsagesForVolumeGroupId(int r1, int r2) {
        try {
            return this.mService.getUsagesForVolumeGroupId(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        ICarAudio iCarAudio = this.mService;
        if (iCarAudio != null) {
            try {
                iCarAudio.unregisterVolumeCallback(this.mCarVolumeCallbackImpl.asBinder());
                this.mService.unregisterAudioSettingCallback(this.mCarAudioSettingCallbackImpl.asBinder());
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public CarAudioManager(IBinder iBinder, Context context, Handler handler) {
        this.mService = ICarAudio.Stub.asInterface(iBinder);
        try {
            this.mService.registerVolumeCallback(this.mCarVolumeCallbackImpl.asBinder());
            this.mService.registerAudioSettingCallback(this.mCarAudioSettingCallbackImpl.asBinder());
        } catch (RemoteException e) {
            Log.e(CarLibLog.TAG_CAR, "registerVolumeCallback failed", e);
        }
    }

    public void registerCarVolumeCallback(CarVolumeCallback carVolumeCallback) {
        this.mCarVolumeCallbacks.add(carVolumeCallback);
    }

    public void unregisterCarVolumeCallback(CarVolumeCallback carVolumeCallback) {
        this.mCarVolumeCallbacks.remove(carVolumeCallback);
    }

    public void registerCarAudioSettingCallback(CarAudioSettingCallback carAudioSettingCallback) {
        this.mCarAudioSettingCallbacks.add(carAudioSettingCallback);
    }

    public void unregisterCarAudioSettingCallback(CarAudioSettingCallback carAudioSettingCallback) {
        this.mCarAudioSettingCallbacks.remove(carAudioSettingCallback);
    }

    @SystemApi
    public void setupOnVolumeMax(int r2, int r3) {
        setupOnVolumeMax(0, r2, r3);
    }

    @SystemApi
    public void setupOnVolumeMax(int r1, int r2, int r3) {
        try {
            this.mService.setupOnVolumeMax(r1, r2, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setupOnVolumeMin(int r2, int r3) {
        setupOnVolumeMin(0, r2, r3);
    }

    @SystemApi
    public void setupOnVolumeMin(int r1, int r2, int r3) {
        try {
            this.mService.setupOnVolumeMin(r1, r2, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int getOnVolumeMin(int r2) {
        return getOnVolumeMin(0, r2);
    }

    @SystemApi
    public int getOnVolumeMin(int r1, int r2) {
        try {
            return this.mService.getOnVolumeMin(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public int getOnVolumeMax(int r2) {
        return getOnVolumeMax(0, r2);
    }

    @SystemApi
    public int getOnVolumeMax(int r1, int r2) {
        try {
            return this.mService.getOnVolumeMax(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setAudioSetting(AudioSetting audioSetting) {
        try {
            this.mService.setAudioSetting(audioSetting);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int getAudioSetting(AudioSetting audioSetting) {
        try {
            return this.mService.getAudioSetting(audioSetting);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int[] getEQBand(int r1) {
        try {
            return this.mService.getEQBand(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setPresetEQForSmart(int r1) {
        try {
            this.mService.setPresetEQForSmart(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setNaviDucking(boolean z) {
        try {
            this.mService.setNaviDucking(z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
