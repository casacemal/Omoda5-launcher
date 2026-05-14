.class public Lcom/chery/media/model/business/BtMusicBusiness;
.super Ljava/lang/Object;
.source "BtMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/chery/media/model/business/BtMusicBusiness;


# instance fields
.field private cycle:I

.field private lastPlaybackState:I

.field private mAudioFocus:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtA2dpDeviceLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtA2dpStateLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBtAvrcptateLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mBtMusicInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBtMusicPosition:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDelayState:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLossState:Z

.field private final mPlaybackState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSentPause:Z

.field mSessionListener:Lcom/chery/media/BtAudioManager$MediaSessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-class v0, Lcom/chery/media/model/business/BtMusicBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->instance:Lcom/chery/media/model/business/BtMusicBusiness;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtMusicInfo:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtMusicPosition:Landroidx/lifecycle/MutableLiveData;

    .line 51
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mPlaybackState:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Lcom/chery/media/livedata/BtA2dpStateLiveData;

    invoke-static {}, Lcom/chery/media/app/MediaApplication;->getApplication()Lcom/chery/media/app/MediaApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/chery/media/livedata/BtA2dpStateLiveData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtA2dpStateLiveData:Landroidx/lifecycle/LiveData;

    .line 53
    new-instance v0, Lcom/chery/media/livedata/BtAvrcptateLiveData;

    invoke-static {}, Lcom/chery/media/app/MediaApplication;->getApplication()Lcom/chery/media/app/MediaApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/chery/media/livedata/BtAvrcptateLiveData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtAvrcptateLiveData:Landroidx/lifecycle/LiveData;

    .line 54
    new-instance v0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;

    invoke-static {}, Lcom/chery/media/app/MediaApplication;->getApplication()Lcom/chery/media/app/MediaApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtA2dpDeviceLiveData:Landroidx/lifecycle/LiveData;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mHandler:Landroid/os/Handler;

    .line 61
    iput v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioFocus:I

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->lastPlaybackState:I

    .line 219
    iput-boolean v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSentPause:Z

    .line 220
    iput-boolean v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mLossState:Z

    .line 221
    iput-boolean v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mDelayState:Z

    .line 292
    iput v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->cycle:I

    .line 346
    new-instance v0, Lcom/chery/media/model/business/BtMusicBusiness$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/BtMusicBusiness$2;-><init>(Lcom/chery/media/model/business/BtMusicBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSessionListener:Lcom/chery/media/BtAudioManager$MediaSessionListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/BtMusicBusiness;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->cycle:I

    return p0
.end method

.method static synthetic access$102(Lcom/chery/media/model/business/BtMusicBusiness;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->cycle:I

    return p1
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/BtMusicBusiness;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/BtMusicBusiness;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->updateCanPlay()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/BtMusicBusiness;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->lastPlaybackState:I

    return p0
.end method

.method static synthetic access$402(Lcom/chery/media/model/business/BtMusicBusiness;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->lastPlaybackState:I

    return p1
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mPlaybackState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtMusicPosition:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtMusicInfo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static getInstance()Lcom/chery/media/model/business/BtMusicBusiness;
    .locals 2

    .line 65
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->instance:Lcom/chery/media/model/business/BtMusicBusiness;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/chery/media/model/business/BtMusicBusiness;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/chery/media/model/business/BtMusicBusiness;->instance:Lcom/chery/media/model/business/BtMusicBusiness;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-direct {v1}, Lcom/chery/media/model/business/BtMusicBusiness;-><init>()V

    sput-object v1, Lcom/chery/media/model/business/BtMusicBusiness;->instance:Lcom/chery/media/model/business/BtMusicBusiness;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->instance:Lcom/chery/media/model/business/BtMusicBusiness;

    return-object v0
.end method

.method private handleA2dpState(Ljava/lang/Boolean;)V
    .locals 0

    .line 287
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->startOrStopA2dpRender()V

    :cond_0
    return-void
.end method

.method private handleAvrcpState(Ljava/lang/Boolean;)V
    .locals 3

    .line 295
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 296
    iput v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->cycle:I

    .line 298
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAvrcpState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   cycle   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chery/media/model/business/BtMusicBusiness;->cycle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/chery/media/model/business/BtMusicBusiness$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/BtMusicBusiness$1;-><init>(Lcom/chery/media/model/business/BtMusicBusiness;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static synthetic lambda$FzopPw6NqoAG9DfwtF3QOy2zdXA(Lcom/chery/media/model/business/BtMusicBusiness;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/BtMusicBusiness;->handleAvrcpState(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$JKb8YVYx2p7ih-WnDEwowwsnscc(Lcom/chery/media/model/business/BtMusicBusiness;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/BtMusicBusiness;->handleA2dpState(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$f7Q34qGTFHw9mlDhPnpoDMI1Pnw(Lcom/chery/media/model/business/BtMusicBusiness;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/BtMusicBusiness;->onAudioFocusChange(I)V

    return-void
.end method

.method private onAudioFocusChange(I)V
    .locals 3

    .line 223
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioFocus:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    iget-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSentPause:Z

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 229
    iput-boolean v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSentPause:Z

    goto :goto_0

    .line 230
    :cond_1
    iget-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mDelayState:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mLossState:Z

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 233
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mDelayState:Z

    goto :goto_1

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mLossState:Z

    if-eqz p1, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    .line 248
    :cond_4
    sget-object p1, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loss state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mLossState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mDelayState:Z

    if-eqz p1, :cond_5

    .line 251
    sget-object p1, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delay state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mDelayState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_5
    iput-boolean v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSentPause:Z

    goto :goto_1

    .line 238
    :cond_6
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSentPause:Z

    if-eqz p1, :cond_7

    .line 240
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    .line 257
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->startOrStopA2dpRender()V

    return-void
.end method

.method private startOrStopA2dpRender()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result v0

    .line 262
    sget-object v1, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOrStopA2dpRender: currentSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 264
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "currentSource is  QDLINK"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->startA2dpRender()V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->stopA2dpRender()V

    :goto_0
    return-void
.end method

.method private unVehicleMute()V
    .locals 2

    .line 141
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result p0

    .line 142
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "unVehicleMute"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setGroupMute(IZI)V

    :cond_0
    return-void
.end method

.method private updateCanPlay()V
    .locals 5

    .line 328
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/BtAudioManager;->isCanController()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 329
    :goto_0
    sget-object v3, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "update CanPlay :%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBtDeviceName()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtA2dpDeviceLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public getBtMusicInfo()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtMusicInfo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getBtMusicPosition()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtMusicPosition:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getBtMusicState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtA2dpStateLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public getPlaybackState()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mPlaybackState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 76
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/BtAudioManager;->init(Landroid/content/Context;)Lcom/chery/media/BtAudioManager;

    .line 86
    iget-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtA2dpStateLiveData:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$JKb8YVYx2p7ih-WnDEwowwsnscc;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$JKb8YVYx2p7ih-WnDEwowwsnscc;-><init>(Lcom/chery/media/model/business/BtMusicBusiness;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 87
    iget-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mBtAvrcptateLiveData:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$FzopPw6NqoAG9DfwtF3QOy2zdXA;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$FzopPw6NqoAG9DfwtF3QOy2zdXA;-><init>(Lcom/chery/media/model/business/BtMusicBusiness;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 89
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSessionListener:Lcom/chery/media/BtAudioManager$MediaSessionListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/BtAudioManager;->initMediaSession(Lcom/chery/media/BtAudioManager$MediaSessionListener;)V

    .line 92
    iget-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result p1

    .line 93
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getLastSource()I

    move-result v0

    .line 94
    sget-object v1, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recover source: last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    :cond_0
    if-ne v0, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    .line 103
    :cond_2
    :goto_0
    new-instance p1, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$eik-7dwygOuUkrNatPiker8_EM0;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$eik-7dwygOuUkrNatPiker8_EM0;-><init>(Lcom/chery/media/model/business/BtMusicBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    return-void
.end method

.method public isFocus()Z
    .locals 2

    .line 318
    iget p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioFocus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mPlaybackState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mPlaybackState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$init$1$BtMusicBusiness(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$mfVA-m_rPbmiQHUTNghvE6XylRI;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$mfVA-m_rPbmiQHUTNghvE6XylRI;-><init>(Lcom/chery/media/model/business/BtMusicBusiness;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$0$BtMusicBusiness(I)V
    .locals 4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_2

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getLastSource()I

    move-result v0

    .line 110
    sget-object v1, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recover source: last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x5

    if-ne v0, p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    :cond_2
    return-void
.end method

.method public next()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->unVehicleMute()V

    .line 156
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "next"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->next()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 181
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "pause"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->unVehicleMute()V

    .line 176
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "play"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->play()V

    return-void
.end method

.method public playPause()V
    .locals 2

    .line 165
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "playPause"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->unVehicleMute()V

    .line 150
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "previous"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->previous()V

    return-void
.end method

.method public requestBtMusicAudioFocus()Z
    .locals 5

    .line 188
    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 189
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "bt audio has already focus"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 192
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v2, "request BtMusicAudioFocus start"

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x5

    const-string v3, "key_car_source_type"

    .line 194
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    .line 196
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 199
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 200
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v2, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$f7Q34qGTFHw9mlDhPnpoDMI1Pnw;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/-$$Lambda$BtMusicBusiness$f7Q34qGTFHw9mlDhPnpoDMI1Pnw;-><init>(Lcom/chery/media/model/business/BtMusicBusiness;)V

    iget-object v3, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mHandler:Landroid/os/Handler;

    .line 201
    invoke-virtual {v0, v2, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 205
    sget-object v2, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request BtMusicAudioFocus end, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_2

    .line 207
    iput v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mAudioFocus:I

    .line 208
    iget-boolean v0, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mLossState:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->updateCanPlay()V

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->startOrStopA2dpRender()V

    return v1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 214
    iput-boolean v1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mDelayState:Z

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setPlayOnCanPlay(Z)V
    .locals 3

    .line 337
    sget-object v0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayOnCanPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mLossState:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/chery/media/model/business/BtMusicBusiness;->mSentPause:Z

    :cond_0
    return-void
.end method

.method public startA2dpRender()V
    .locals 1

    .line 276
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "startA2dpRender"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->startA2dpRender()V

    return-void
.end method

.method public stopA2dpRender()V
    .locals 1

    .line 281
    sget-object p0, Lcom/chery/media/model/business/BtMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "stopA2dpRender"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->stopA2dpRender()V

    return-void
.end method
