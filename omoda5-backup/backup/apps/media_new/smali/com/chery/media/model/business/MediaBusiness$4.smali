.class Lcom/chery/media/model/business/MediaBusiness$4;
.super Ljava/lang/Object;
.source "MediaBusiness.java"

# interfaces
.implements Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/MediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/MediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/MediaBusiness;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$4;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotifyCPReadyToAuth(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onNotifyDisableBt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotifyLauncherPop(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotifyVideoChange(Z)V
    .locals 0

    return-void
.end method

.method public onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetVideoFocus(Z)V
    .locals 0

    return-void
.end method

.method public onUSBIAP2DeviceStsChanged(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onUpdateClientSts(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    return-void
.end method

.method public onUpdateSiriSts(Z)V
    .locals 0

    return-void
.end method
