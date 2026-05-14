.class public interface abstract Lcom/chery/libvr/apps/setting/IVrSettingCallback;
.super Ljava/lang/Object;
.source "IVrSettingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/setting/IVrSettingCallback$Stub;,
        Lcom/chery/libvr/apps/setting/IVrSettingCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
