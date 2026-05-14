.class public final Landroid/car/media/CarAudioManager;
.super Ljava/lang/Object;
.source "CarAudioManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/CarAudioManager$CarAudioSettingCallback;,
        Landroid/car/media/CarAudioManager$CarVolumeCallback;
    }
.end annotation


# static fields
.field public static final AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS:Ljava/lang/String; = "android.car.media.AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIOFOCUS_EXTRA_REQUEST_ZONE_ID:Ljava/lang/String; = "android.car.media.AUDIOFOCUS_EXTRA_REQUEST_ZONE_ID"

.field public static final CHANNEL_GAIN_MAX:I = 0x42

.field public static final CHANNEL_GAIN_MUTE:I = 0x0

.field public static final FLAG_CHANNEL_ALL:I = 0xf

.field public static final FLAG_CHANNEL_LF:I = 0x1

.field public static final FLAG_CHANNEL_LR:I = 0x4

.field public static final FLAG_CHANNEL_RF:I = 0x2

.field public static final FLAG_CHANNEL_RR:I = 0x8

.field public static final PRIMARY_AUDIO_ZONE:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mCarAudioSettingCallbackImpl:Landroid/car/media/ICarAudioSettingCallback;

.field private final mCarAudioSettingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/media/CarAudioManager$CarAudioSettingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

.field private final mCarVolumeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/media/CarAudioManager$CarVolumeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/car/media/ICarAudio;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance p2, Landroid/car/media/CarAudioManager$1;

    invoke-direct {p2, p0}, Landroid/car/media/CarAudioManager$1;-><init>(Landroid/car/media/CarAudioManager;)V

    iput-object p2, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

    .line 126
    new-instance p2, Landroid/car/media/CarAudioManager$2;

    invoke-direct {p2, p0}, Landroid/car/media/CarAudioManager$2;-><init>(Landroid/car/media/CarAudioManager;)V

    iput-object p2, p0, Landroid/car/media/CarAudioManager;->mCarAudioSettingCallbackImpl:Landroid/car/media/ICarAudioSettingCallback;

    .line 731
    invoke-static {p1}, Landroid/car/media/ICarAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudio;

    move-result-object p1

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    .line 732
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    .line 733
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mCarAudioSettingCallbacks:Ljava/util/List;

    .line 736
    :try_start_0
    iget-object p1, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    iget-object p2, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

    invoke-interface {p2}, Landroid/car/media/ICarVolumeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/car/media/ICarAudio;->registerVolumeCallback(Landroid/os/IBinder;)V

    .line 737
    iget-object p1, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarAudioSettingCallbackImpl:Landroid/car/media/ICarAudioSettingCallback;

    invoke-interface {p0}, Landroid/car/media/ICarAudioSettingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/car/media/ICarAudio;->registerAudioSettingCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CAR.L"

    const-string p2, "registerVolumeCallback failed"

    .line 739
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/car/media/CarAudioManager;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/media/CarAudioManager;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarAudioSettingCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearZoneIdForUid(I)Z
    .locals 0

    .line 655
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->clearZoneIdForUid(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 657
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 499
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2, p3}, Landroid/car/media/ICarAudio;->createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 501
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAudioSetting(Landroid/media/AudioSetting;)I
    .locals 0

    .line 889
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->getAudioSetting(Landroid/media/AudioSetting;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 891
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAudioZoneIds()[I
    .locals 0

    .line 605
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0}, Landroid/car/media/ICarAudio;->getAudioZoneIds()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 607
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getEQBand(I)[I
    .locals 0

    .line 897
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->getEQBand(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 899
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getExternalSources()[Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 469
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0}, Landroid/car/media/ICarAudio;->getExternalSources()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 471
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getGroupMaxVolume(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(II)I

    move-result p0

    return p0
.end method

.method public getGroupMaxVolume(II)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 205
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getGroupMaxVolume(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getGroupMinVolume(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getGroupMinVolume(II)I

    move-result p0

    return p0
.end method

.method public getGroupMinVolume(II)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 235
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getGroupMinVolume(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getGroupMute(I)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getGroupMute(II)Z

    move-result p0

    return p0
.end method

.method public getGroupMute(II)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 335
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getGroupMute(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getGroupVolume(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getGroupVolume(II)I

    move-result p0

    return p0
.end method

.method public getGroupVolume(II)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 268
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getGroupVolume(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getOnVolumeMax(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 861
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getOnVolumeMax(II)I

    move-result p0

    return p0
.end method

.method public getOnVolumeMax(II)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 873
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getOnVolumeMax(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 875
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getOnVolumeMin(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getOnVolumeMin(II)I

    move-result p0

    return p0
.end method

.method public getOnVolumeMin(II)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 848
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getOnVolumeMin(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 850
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getUsagesForVolumeGroupId(I)[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getUsagesForVolumeGroupId(II)[I

    move-result-object p0

    return-object p0
.end method

.method public getUsagesForVolumeGroupId(II)[I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 710
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getUsagesForVolumeGroupId(II)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 712
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getVolumeGroupCount()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->getVolumeGroupCount(I)I

    move-result p0

    return p0
.end method

.method public getVolumeGroupCount(I)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 548
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->getVolumeGroupCount(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 550
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getVolumeGroupIdForUsage(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getVolumeGroupIdForUsage(II)I

    move-result p0

    return p0
.end method

.method public getVolumeGroupIdForUsage(II)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 578
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->getVolumeGroupIdForUsage(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 580
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getZoneIdForDisplay(Landroid/view/Display;)I
    .locals 1

    .line 671
    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    .line 672
    instance-of v0, p1, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_0

    .line 673
    check-cast p1, Landroid/view/DisplayAddress$Physical;

    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result p1

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getZoneIdForDisplayPortId(B)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getZoneIdForDisplayPortId(B)I
    .locals 0

    .line 692
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->getZoneIdForDisplayPortId(B)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 694
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getZoneIdForUid(I)I
    .locals 0

    .line 622
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->getZoneIdForUid(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 624
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isDynamicRoutingEnabled()Z
    .locals 0

    .line 142
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0}, Landroid/car/media/ICarAudio;->isDynamicRoutingEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 2

    .line 719
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    if-eqz v0, :cond_0

    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v1}, Landroid/car/media/ICarVolumeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/car/media/ICarAudio;->unregisterVolumeCallback(Landroid/os/IBinder;)V

    .line 722
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarAudioSettingCallbackImpl:Landroid/car/media/ICarAudioSettingCallback;

    invoke-interface {p0}, Landroid/car/media/ICarAudioSettingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/car/media/ICarAudio;->unregisterAudioSettingCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 724
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public registerCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V
    .locals 0

    .line 764
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarAudioSettingCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V
    .locals 0

    .line 748
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 519
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 521
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setAudioSetting(Landroid/media/AudioSetting;)V
    .locals 0

    .line 881
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->setAudioSetting(Landroid/media/AudioSetting;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 883
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setBalanceTowardRight(F)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 447
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->setBalanceTowardRight(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 449
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setFadeTowardFront(F)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 428
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->setFadeTowardFront(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setGroupChannelGain(III)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setGroupChannelGain(IIII)V

    return-void
.end method

.method public setGroupChannelGain(IIII)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 409
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/car/media/ICarAudio;->setGroupChannelGain(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 411
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setGroupMute(IIZI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 300
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/car/media/ICarAudio;->setGroupMute(IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 302
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setGroupMute(IZI)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setGroupMute(IIZI)V

    return-void
.end method

.method public setGroupVolume(III)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setGroupVolume(IIII)V

    return-void
.end method

.method public setGroupVolume(IIII)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 175
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/car/media/ICarAudio;->setGroupVolume(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setNaviDucking(Z)V
    .locals 0

    .line 913
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->setNaviDucking(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 915
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setPresetEQForSmart(I)V
    .locals 0

    .line 905
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->setPresetEQForSmart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 907
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setSourceMute(IIZ)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 372
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2, p3}, Landroid/car/media/ICarAudio;->setSourceMute(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 374
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setSourceMute(IZ)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0, p1, p2}, Landroid/car/media/CarAudioManager;->setSourceMute(IIZ)V

    return-void
.end method

.method public setZoneIdForUid(II)Z
    .locals 0

    .line 639
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2}, Landroid/car/media/ICarAudio;->setZoneIdForUid(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 641
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setupOnVolumeMax(II)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, v0, p1, p2}, Landroid/car/media/CarAudioManager;->setupOnVolumeMax(III)V

    return-void
.end method

.method public setupOnVolumeMax(III)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 796
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2, p3}, Landroid/car/media/ICarAudio;->setupOnVolumeMax(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 798
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setupOnVolumeMin(II)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0, v0, p1, p2}, Landroid/car/media/CarAudioManager;->setupOnVolumeMin(III)V

    return-void
.end method

.method public setupOnVolumeMin(III)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 823
    :try_start_0
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p0, p1, p2, p3}, Landroid/car/media/ICarAudio;->setupOnVolumeMin(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 825
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unregisterCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V
    .locals 0

    .line 772
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarAudioSettingCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V
    .locals 0

    .line 756
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
