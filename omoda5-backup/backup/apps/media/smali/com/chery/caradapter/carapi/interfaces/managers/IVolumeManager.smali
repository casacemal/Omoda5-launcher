.class public interface abstract Lcom/chery/caradapter/carapi/interfaces/managers/IVolumeManager;
.super Ljava/lang/Object;
.source "IVolumeManager.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAudioSetting(Ljava/lang/String;)I
.end method

.method public abstract getEQBand(I)[I
.end method

.method public abstract getGroupMaxVolume(I)I
.end method

.method public abstract getGroupMinVolume(I)I
.end method

.method public abstract getGroupMute(I)Z
.end method

.method public abstract getGroupVolume(I)I
.end method

.method public abstract getVolumeGroupIdForUsage(I)I
.end method

.method public abstract getupOnVolumeMax(I)I
.end method

.method public abstract registerCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V
.end method

.method public abstract setAudioSetting(Ljava/lang/String;I)V
.end method

.method public abstract setGroupMute(IZI)V
.end method

.method public abstract setGroupVolume(III)V
.end method

.method public abstract setListener(Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;)V
.end method

.method public abstract setSourceMute(I)V
.end method

.method public abstract setupOnVolumeMax(II)V
.end method

.method public abstract unregisterCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V
.end method
