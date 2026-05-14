.class public interface abstract Landroid/car/media/ICarAudioSettingCallback;
.super Ljava/lang/Object;
.source "ICarAudioSettingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarAudioSettingCallback$Stub;,
        Landroid/car/media/ICarAudioSettingCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAudioSettingChanged(Landroid/media/AudioSetting;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
