.class public interface abstract Lcom/chery/libvr/apps/setting/IVrSetting;
.super Ljava/lang/Object;
.source "IVrSetting.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/setting/IVrSetting$Stub;,
        Lcom/chery/libvr/apps/setting/IVrSetting$Default;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerVrSettingCallback(Lcom/chery/libvr/apps/setting/IVrSettingCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterVrSettingCallback(Lcom/chery/libvr/apps/setting/IVrSettingCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
