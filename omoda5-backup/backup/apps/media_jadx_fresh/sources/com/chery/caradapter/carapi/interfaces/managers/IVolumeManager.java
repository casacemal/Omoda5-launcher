package com.chery.caradapter.carapi.interfaces.managers;

import android.car.media.CarAudioManager;
import com.chery.caradapter.carapi.interfaces.IVolumeListener;

/* loaded from: classes.dex */
public interface IVolumeManager {
    void destroy();

    int getAudioSetting(String str);

    int[] getEQBand(int r1);

    int getGroupMaxVolume(int r1);

    int getGroupMinVolume(int r1);

    boolean getGroupMute(int r1);

    int getGroupVolume(int r1);

    int getVolumeGroupIdForUsage(int r1);

    int getupOnVolumeMax(int r1);

    void registerCarAudioSettingCallback(CarAudioManager.CarAudioSettingCallback carAudioSettingCallback);

    void setAudioSetting(String str, int r2);

    void setGroupMute(int r1, boolean z, int r3);

    void setGroupVolume(int r1, int r2, int r3);

    void setListener(IVolumeListener iVolumeListener);

    void setSourceMute(int r1);

    void setupOnVolumeMax(int r1, int r2);

    void unregisterCarAudioSettingCallback(CarAudioManager.CarAudioSettingCallback carAudioSettingCallback);
}
