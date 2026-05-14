.class public interface abstract Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;
.super Ljava/lang/Object;
.source "CarplayModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/carplay/CarplayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarplayListenerCallback"
.end annotation


# virtual methods
.method public abstract onNotification(Ljava/lang/String;)V
.end method

.method public abstract onNotifyCPReadyToAuth(Ljava/lang/String;I)V
.end method

.method public abstract onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onNotifyDisableBt(Ljava/lang/String;)V
.end method

.method public abstract onNotifyLauncherPop(ILjava/lang/String;)V
.end method

.method public abstract onNotifyVideoChange(Z)V
.end method

.method public abstract onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSetVideoFocus(Z)V
.end method

.method public abstract onUSBIAP2DeviceStsChanged(ZLjava/lang/String;)V
.end method

.method public abstract onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onUpdateClientSts(Z)V
.end method

.method public abstract onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
.end method

.method public abstract onUpdateSiriSts(Z)V
.end method
