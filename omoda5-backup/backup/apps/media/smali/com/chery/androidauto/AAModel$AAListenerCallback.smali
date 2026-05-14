.class public interface abstract Lcom/chery/androidauto/AAModel$AAListenerCallback;
.super Ljava/lang/Object;
.source "AAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/androidauto/AAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AAListenerCallback"
.end annotation


# virtual methods
.method public abstract OnPrepareRemoteHfpDevice(Ljava/lang/String;)V
.end method

.method public abstract onAuthenticationResult(I)V
.end method

.method public abstract onNotification(Ljava/lang/String;)V
.end method

.method public abstract onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSetVideoFocus(I)V
.end method

.method public abstract onUpdateActivityState(I)V
.end method

.method public abstract onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
.end method

.method public abstract onUpdateVoiceSessionState(I)V
.end method
