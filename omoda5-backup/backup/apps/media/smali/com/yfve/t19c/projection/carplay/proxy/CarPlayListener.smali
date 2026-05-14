.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;
.super Ljava/lang/Object;
.source "CarPlayListener.java"


# static fields
.field public static final CP_CallSts_Active:I = 0x4

.field public static final CP_CallSts_Connecting:I = 0x3

.field public static final CP_CallSts_Disconnected:I = 0x0

.field public static final CP_CallSts_Disconnecting:I = 0x6

.field public static final CP_CallSts_Held:I = 0x5

.field public static final CP_CallSts_Ringing:I = 0x2

.field public static final CP_CallSts_Sending:I = 0x1

.field public static final NotifyType_CP_NotFront:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotiftIApAuthStatus(II)V
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

.method public onNotifyLauncherPop(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotifyVideoChange(Z)V
    .locals 0

    return-void
.end method

.method public onNotifyWifi(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotifyWirelessCPEnalbe(Z)V
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

.method public onUpdateNaviInfo(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateSiriSts(Z)V
    .locals 0

    return-void
.end method
