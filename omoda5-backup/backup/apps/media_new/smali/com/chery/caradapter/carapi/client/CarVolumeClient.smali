.class public Lcom/chery/caradapter/carapi/client/CarVolumeClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarVolumeClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IVolumeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;,
        Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;
    }
.end annotation


# static fields
.field private static final FLAGS:Ljava/lang/String; = "flags"

.field private static final GROUPID:Ljava/lang/String; = "groupId"

.field private static final MSG_GROUP_MUTE_CHANGED:I = 0x3

.field private static final MSG_GROUP_VOLUME_CHANGED:I = 0x1

.field private static final MSG_MASTER_MUTE_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final ZONEID:Ljava/lang/String; = "zoneId"

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarVolumeClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;

.field private proxyCarVolumeCallback:Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 34
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarVolumeClient;Lcom/chery/caradapter/carapi/client/CarVolumeClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->proxyCarVolumeCallback:Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarVolumeClient;III)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->onGroupVolumeChanged(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarVolumeClient;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->onMasterMuteChanged(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarVolumeClient;III)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->onGroupMuteChanged(III)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarVolumeClient;)Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;

    return-object p0
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarVolumeClient;
    .locals 2

    .line 96
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    if-nez v0, :cond_1

    .line 97
    const-class v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    .line 101
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 103
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    return-object v0
.end method

.method private onGroupMuteChanged(III)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;

    if-eqz p0, :cond_0

    .line 277
    invoke-interface {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;->onGroupMuteChanged(III)V

    :cond_0
    return-void
.end method

.method private onGroupVolumeChanged(III)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;

    if-eqz p0, :cond_0

    .line 265
    invoke-interface {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;->onGroupVolumeChanged(III)V

    :cond_0
    return-void
.end method

.method private onMasterMuteChanged(II)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;

    if-eqz p0, :cond_0

    .line 271
    invoke-interface {p0, p1, p2}, Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;->onMasterMuteChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->proxyCarVolumeCallback:Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;

    invoke-virtual {v0, p0}, Landroid/car/media/CarAudioManager;->unregisterCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V

    :cond_0
    return-void
.end method

.method public getAudioSetting(Ljava/lang/String;)I
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    new-instance v0, Landroid/media/AudioSetting;

    invoke-direct {v0, p1, v1, v1, v1}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->getAudioSetting(Landroid/media/AudioSetting;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getEQBand(I)[I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 241
    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getEQBand(I)[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGroupMaxVolume(I)I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGroupMinVolume(I)I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupMinVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGroupMute(I)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 215
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupMute(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroupVolume(I)I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVolumeGroupIdForUsage(I)I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getVolumeGroupIdForUsage(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getupOnVolumeMax(I)I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getOnVolumeMax(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 2

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->handlerThread:Landroid/os/HandlerThread;

    .line 109
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarVolumeClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;

    .line 112
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->proxyCarVolumeCallback:Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;

    invoke-virtual {v0, p0}, Landroid/car/media/CarAudioManager;->registerCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V

    return-void
.end method

.method public registerCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->registerCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setAudioSetting(Ljava/lang/String;I)V
    .locals 3

    .line 223
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    new-instance v0, Landroid/media/AudioSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->setAudioSetting(Landroid/media/AudioSetting;)V

    :cond_0
    return-void
.end method

.method public setGroupMute(IZI)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setGroupMute(IZI)V

    :cond_0
    return-void
.end method

.method public setGroupVolume(III)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setGroupVolume(III)V

    :cond_0
    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setSourceMute(I)V
    .locals 1

    .line 259
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/car/media/CarAudioManager;->setSourceMute(IZ)V

    return-void
.end method

.method public setupOnVolumeMax(II)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->setupOnVolumeMax(II)V

    :cond_0
    return-void
.end method

.method public unregisterCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->unregisterCarAudioSettingCallback(Landroid/car/media/CarAudioManager$CarAudioSettingCallback;)V

    return-void
.end method
