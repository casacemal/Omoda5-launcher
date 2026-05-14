.class public Lcom/chery/media/model/business/StableMediaPlayer;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;,
        Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;,
        Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;,
        Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;,
        Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;
    }
.end annotation


# static fields
.field private static final MEDIA_PLAYER_STATE_COMPELETED:I = 0x7

.field private static final MEDIA_PLAYER_STATE_ERROR:I = 0x9

.field private static final MEDIA_PLAYER_STATE_IDLE:I = 0x0

.field private static final MEDIA_PLAYER_STATE_INITIALIZED:I = 0x1

.field private static final MEDIA_PLAYER_STATE_PAUSED:I = 0x5

.field private static final MEDIA_PLAYER_STATE_PREPARED:I = 0x3

.field private static final MEDIA_PLAYER_STATE_PREPARING:I = 0x2

.field private static final MEDIA_PLAYER_STATE_STARTED:I = 0x4

.field private static final MEDIA_PLAYER_STATE_STOPPED:I = 0x6

.field private static final PLAYER_ACTION_ACTIVATE_PLAYER:I = 0x2

.field private static final PLAYER_ACTION_ADD_PLAYER:I = 0x0

.field private static final PLAYER_ACTION_DEACTIVATE_PLAYER:I = 0x3

.field private static final PLAYER_ACTION_PAUSE:I = 0x6

.field private static final PLAYER_ACTION_PLAY:I = 0x5

.field private static final PLAYER_ACTION_REMOVE_PLAYER:I = 0x1

.field private static final PLAYER_ACTION_SEEK_TO:I = 0x8

.field private static final PLAYER_ACTION_SET_MEDIA:I = 0x4

.field private static final PLAYER_ACTION_SET_MUTE:I = 0x9

.field private static final PLAYER_ACTION_SET_SPEED:I = 0xa

.field private static final PLAYER_ACTION_STOP:I = 0x7

.field public static final PLAYING_STATE_ERROR:I = 0x5

.field public static final PLAYING_STATE_PAUSED:I = 0x3

.field public static final PLAYING_STATE_PLAYEND:I = 0x4

.field public static final PLAYING_STATE_PLAYING:I = 0x2

.field public static final PLAYING_STATE_STOPPED:I = 0x1

.field public static final PLAYING_STATE_UNSET:I

.field private static sMediaPlayerStateStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMediaPlayerUndefinedActionString:Ljava/lang/String;

.field private static sPlayingStateStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlayingUndefinedStateString:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionLock:Ljava/util/concurrent/locks/Lock;

.field private mActionRunnable:Ljava/lang/Runnable;

.field private mActivatedKey:I

.field private mCallbackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mMediaPlayerInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekCompleteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderChanged:Z

.field private mSurfaceLock:Ljava/util/concurrent/locks/Lock;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    const-string v0, "UndefinedState"

    .line 46
    sput-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingUndefinedStateString:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    .line 152
    sput-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerUndefinedActionString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/chery/media/model/business/StableMediaPlayer;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 63
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSeekCompleteListeners:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    .line 235
    new-instance v0, Lcom/chery/media/model/business/StableMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/StableMediaPlayer$1;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;)V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private _activePlayer(I)V
    .locals 11

    .line 775
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "activePlayer, key:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 784
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v5, "recover media:%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v3, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v5, 0x4

    iget-object v6, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    invoke-direct {v3, p0, p1, v5, v6}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 786
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v5, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "recover position:%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-wide v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    const/4 v2, 0x2

    new-instance v3, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/16 v8, 0x8

    iget-wide v5, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v5, v3

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 790
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private _deactivePlayer(I)V
    .locals 7

    .line 794
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "deactivePlayer, key:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    if-ne p1, v0, :cond_2

    .line 797
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-eqz v0, :cond_1

    .line 799
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 800
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    .line 803
    iput-wide v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    .line 805
    :goto_0
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v5, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "ReactivatedPosition:%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->resetPlayer(I)V

    :cond_1
    const/4 p1, -0x1

    .line 811
    iput p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    :cond_2
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->getPlayerActionString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/StableMediaPlayer;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->updatePosition(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/model/business/StableMediaPlayer;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setDuration(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/media/model/business/StableMediaPlayer;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setPosition(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/chery/media/model/business/StableMediaPlayer;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/StableMediaPlayer;->setState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSeekCompleteListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/chery/media/model/business/StableMediaPlayer;III)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/StableMediaPlayer;->notifyVideoSize(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/chery/media/model/business/StableMediaPlayer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/StableMediaPlayer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->checkActionList()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/HashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/model/business/StableMediaPlayer;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->destroyPlayer(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/HashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    return-object p0
.end method

.method private checkActionList()V
    .locals 5

    .line 553
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->mergeActions()V

    const/4 v0, 0x0

    .line 556
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 557
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction begin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction(Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;)V

    .line 568
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 571
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 572
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 575
    :cond_2
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "front action of PlayerActionList not expected"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 580
    :cond_3
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    iget v3, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-eqz v1, :cond_5

    .line 581
    iget v1, v1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    iget v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 583
    :cond_4
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 587
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 588
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    .line 591
    :cond_6
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method private clearSurface(Landroid/view/Surface;)V
    .locals 11

    .line 1361
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "clearSurface"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1362
    invoke-static {p0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v9, 0x1

    .line 1364
    invoke-static {v8, v0, p0, v0, v9}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    const/16 v0, 0xd

    new-array v1, v0, [I

    .line 1366
    fill-array-data v1, :array_0

    new-array v10, v9, [Landroid/opengl/EGLConfig;

    new-array v6, v9, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, v10

    .line 1377
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 1379
    aget-object v0, v10, p0

    .line 1380
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-static {v8, v0, v1, v2, p0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    new-array v2, v9, [I

    const/16 v3, 0x3038

    aput v3, v2, p0

    .line 1385
    invoke-static {v8, v0, p1, v2, p0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    .line 1390
    invoke-static {v8, p0, p0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1391
    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 1392
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1393
    invoke-static {v8, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 1394
    invoke-static {v8, p0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 1395
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v8, p0, p1, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1396
    invoke-static {v8, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 1397
    invoke-static {v8}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createPlayer(I)V
    .locals 5

    .line 1211
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "createPlayer, key:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    .line 1215
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "MediaPlayerInfo of key:%d not exist"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1218
    :cond_0
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 1219
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "MediaPlayer already exist"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1223
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1225
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$6;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;I)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1244
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$7;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;I)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1259
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$8;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;I)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1284
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$9;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;I)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1301
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    return-void
.end method

.method private destroyPlayer(I)V
    .locals 6

    .line 1305
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "destroyPlayer, key:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1311
    :cond_0
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    .line 1312
    iget v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 1316
    :cond_1
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "key:%d, to stop media player"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 1320
    :cond_2
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "key:%d, to release media player"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    .line 1322
    iput-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1324
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1325
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-nez v2, :cond_3

    .line 1326
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->clearSurface(Landroid/view/Surface;)V

    .line 1327
    iput-boolean v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1331
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    return-void
.end method

.method private doAction(Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;)V
    .locals 3

    .line 686
    iget v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 715
    :pswitch_0
    iget v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    iget-object p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_setSpeed(IF)V

    goto :goto_0

    .line 712
    :pswitch_1
    iget v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    iget-object p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_setMute(IZ)V

    goto :goto_0

    .line 709
    :pswitch_2
    iget v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    iget-object v1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_seekTo(IJI)V

    goto :goto_0

    .line 706
    :pswitch_3
    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_stop(I)V

    goto :goto_0

    .line 703
    :pswitch_4
    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_pause(I)V

    goto :goto_0

    .line 700
    :pswitch_5
    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_play(I)V

    goto :goto_0

    .line 697
    :pswitch_6
    iget v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    iget-object p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_setMedia(ILjava/lang/String;)V

    goto :goto_0

    .line 718
    :pswitch_7
    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_deactivePlayer(I)V

    goto :goto_0

    .line 694
    :pswitch_8
    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_activatePlayer(I)V

    goto :goto_0

    .line 691
    :pswitch_9
    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_removePlayer(I)V

    goto :goto_0

    .line 688
    :pswitch_a
    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->doAction_addPlayer(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doAction_activatePlayer(I)V
    .locals 4

    .line 764
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "doAction_activatePlayer, key:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    if-ne p1, v0, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-direct {p0, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->_deactivePlayer(I)V

    .line 770
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->_activePlayer(I)V

    .line 771
    iput p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    return-void
.end method

.method private doAction_addPlayer(I)V
    .locals 4

    .line 726
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "addPlayer, key:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 730
    :cond_0
    new-instance v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    .line 731
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->createPlayer(I)V

    .line 734
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/chery/media/model/business/StableMediaPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$3;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    return-void
.end method

.method private doAction_deactivePlayer(I)V
    .locals 1

    .line 1165
    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    if-eq v0, p1, :cond_0

    return-void

    .line 1169
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->_deactivePlayer(I)V

    return-void
.end method

.method private doAction_pause(I)V
    .locals 4

    .line 978
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "do action pause, key:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-eqz v0, :cond_2

    .line 981
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 995
    :cond_1
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x5

    .line 996
    invoke-direct {p0, p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private doAction_play(I)V
    .locals 9

    .line 889
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "do action play, key:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-eqz v0, :cond_b

    .line 892
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 896
    :cond_0
    iget v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/16 v3, 0x9

    const-string v5, "key:%d, to setDisplay %s"

    const/4 v6, 0x2

    if-eq v2, v1, :cond_9

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v7, :cond_7

    const/4 v7, 0x5

    if-eq v2, v7, :cond_5

    const/4 v7, 0x6

    if-eq v2, v7, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 960
    :cond_1
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 961
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-eqz v2, :cond_2

    .line 962
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v6, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 964
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 967
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 968
    invoke-direct {p0, p1, v8}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto/16 :goto_0

    .line 943
    :cond_3
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 944
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-eqz v2, :cond_4

    .line 945
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 947
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 949
    :cond_4
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 951
    :try_start_0
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    invoke-direct {p0, p1, v6}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 953
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 954
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto/16 :goto_0

    .line 932
    :cond_5
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 933
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-eqz v2, :cond_6

    .line 934
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v6, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 936
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 938
    :cond_6
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 939
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 940
    invoke-direct {p0, p1, v8}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto/16 :goto_0

    .line 919
    :cond_7
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 920
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-eqz v2, :cond_8

    .line 921
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v6, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 923
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 925
    :cond_8
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 926
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 927
    invoke-direct {p0, p1, v8}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    .line 900
    :cond_9
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 901
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-eqz v2, :cond_a

    .line 902
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 904
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 906
    :cond_a
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 908
    :try_start_1
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 914
    invoke-direct {p0, p1, v6}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 910
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 911
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    :cond_b
    :goto_0
    return-void
.end method

.method private doAction_removePlayer(I)V
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "removePlayer, key:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->destroyPlayer(I)V

    .line 750
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/chery/media/model/business/StableMediaPlayer$4;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$4;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 759
    iput p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    :cond_1
    return-void
.end method

.method private doAction_seekTo(IJI)V
    .locals 8

    .line 1052
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "do action seekTo, key:%d, position:%d seekType:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1059
    :cond_0
    iget v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    if-eq p1, v2, :cond_1

    .line 1060
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array p1, v4, [Ljava/lang/Object;

    const-string p4, "do action seekTo, key not actived"

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iput-wide p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    return-void

    .line 1065
    :cond_1
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_2

    return-void

    .line 1069
    :cond_2
    iget v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/16 v3, 0x9

    const-string v7, "key:%d, to setDisplay %s"

    if-eq v2, v5, :cond_9

    if-eq v2, v1, :cond_8

    const/4 v1, 0x4

    if-eq v2, v1, :cond_7

    const/4 v1, 0x5

    if-eq v2, v1, :cond_6

    const/4 v1, 0x6

    if-eq v2, v1, :cond_4

    const/4 p0, 0x7

    if-eq v2, p0, :cond_3

    goto/16 :goto_0

    .line 1119
    :cond_3
    iget-object p0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2, p3, p4}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto/16 :goto_0

    .line 1102
    :cond_4
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1103
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-eqz p2, :cond_5

    .line 1104
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    iget-object p4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object p4, p3, v5

    invoke-static {v7, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1106
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 1108
    :cond_5
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1110
    :try_start_0
    iget-object p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    invoke-direct {p0, p1, v6}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1112
    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1113
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    .line 1099
    :cond_6
    iget-object p0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2, p3, p4}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 1096
    :cond_7
    iget-object p0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2, p3, p4}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 1093
    :cond_8
    iget-object p0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2, p3, p4}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 1073
    :cond_9
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1074
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-eqz p2, :cond_a

    .line 1075
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    iget-object p4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object p4, p3, v5

    invoke-static {v7, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1077
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 1079
    :cond_a
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1082
    :try_start_1
    iget-object p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1088
    invoke-direct {p0, p1, v6}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 1084
    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1085
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    :goto_0
    return-void
.end method

.method private doAction_setMedia(ILjava/lang/String;)V
    .locals 6

    .line 816
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v4, "do action setMedia, key:%d, media:%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 824
    :cond_0
    iput-object p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    const-wide/16 v4, -0x1

    .line 825
    iput-wide v4, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    .line 828
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/chery/media/model/business/StableMediaPlayer$5;

    invoke-direct {v4, p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$5;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    if-eq p1, v1, :cond_1

    .line 837
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "do action setMedia, key not actived"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 843
    :cond_1
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->resetPlayer(I)V

    .line 845
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_4

    const/4 v1, 0x0

    const/16 v3, 0x9

    .line 852
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 854
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 855
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_4

    .line 860
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 862
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 863
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    :goto_1
    if-eqz v1, :cond_3

    .line 867
    :try_start_2
    iget-object v5, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 869
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 870
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    .line 872
    :goto_2
    iget v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    if-eq v0, v3, :cond_3

    .line 873
    invoke-direct {p0, p1, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    .line 877
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 879
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 883
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;

    .line 884
    invoke-interface {v0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;->onMediaChanged(ILjava/lang/String;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method private doAction_setMute(IZ)V
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do action setMute, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-eqz p1, :cond_5

    .line 1132
    iget-object v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1136
    :cond_0
    iget v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1155
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMute(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;Z)V

    goto :goto_0

    .line 1150
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMute(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;Z)V

    goto :goto_0

    .line 1147
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMute(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;Z)V

    goto :goto_0

    .line 1144
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMute(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private doAction_setSpeed(IF)V
    .locals 3

    .line 1173
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do action setSpeed, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-eqz p1, :cond_7

    .line 1176
    iget-object v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    iget v0, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1201
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setSpeed(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;F)V

    goto :goto_0

    .line 1196
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setSpeed(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;F)V

    goto :goto_0

    .line 1193
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setSpeed(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;F)V

    goto :goto_0

    .line 1190
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setSpeed(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;F)V

    goto :goto_0

    .line 1187
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setSpeed(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;F)V

    goto :goto_0

    .line 1184
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->setSpeed(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;F)V

    :cond_7
    :goto_0
    return-void
.end method

.method private doAction_stop(I)V
    .locals 4

    .line 1012
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "do aciton stop, key:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-eqz v0, :cond_5

    .line 1015
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x3

    const/4 v3, 0x6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1041
    :cond_1
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1042
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    .line 1035
    :cond_2
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1036
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    .line 1031
    :cond_3
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1032
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    goto :goto_0

    .line 1027
    :cond_4
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1028
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static getMediaPlayerStateString(I)Ljava/lang/String;
    .locals 2

    .line 154
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Idle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Initialized"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Preparing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Prepared"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Started"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Paused"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Stopped"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Compeleted"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "End"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    const-string v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ltz p0, :cond_2

    .line 166
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerStateStrings:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 167
    :cond_2
    :goto_0
    sget-object p0, Lcom/chery/media/model/business/StableMediaPlayer;->sMediaPlayerUndefinedActionString:Ljava/lang/String;

    return-object p0
.end method

.method private static getPlayerActionString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UndefinedAction"

    goto :goto_0

    :pswitch_0
    const-string p0, "SetSpeed"

    goto :goto_0

    :pswitch_1
    const-string p0, "SetMute"

    goto :goto_0

    :pswitch_2
    const-string p0, "SeekTo"

    goto :goto_0

    :pswitch_3
    const-string p0, "Stop"

    goto :goto_0

    :pswitch_4
    const-string p0, "Pause"

    goto :goto_0

    :pswitch_5
    const-string p0, "Play"

    goto :goto_0

    :pswitch_6
    const-string p0, "SetMedia"

    goto :goto_0

    :pswitch_7
    const-string p0, "DeactivatePlayer"

    goto :goto_0

    :pswitch_8
    const-string p0, "ActivatePlayer"

    goto :goto_0

    :pswitch_9
    const-string p0, "RemovePlayer"

    goto :goto_0

    :pswitch_a
    const-string p0, "AddPlayer"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPlayingStateString(I)Ljava/lang/String;
    .locals 2

    .line 48
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    const-string v1, "Unset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    const-string v1, "Stopped"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    const-string v1, "Playing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    const-string v1, "Paused"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    const-string v1, "PlayEnd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    const-string v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ltz p0, :cond_2

    .line 56
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingStateStrings:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 57
    :cond_2
    :goto_0
    sget-object p0, Lcom/chery/media/model/business/StableMediaPlayer;->sPlayingUndefinedStateString:Ljava/lang/String;

    return-object p0
.end method

.method private mergeActions()V
    .locals 13

    .line 596
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    .line 600
    iget v3, v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    iget v2, v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 606
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 607
    iget-object v7, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    :goto_2
    if-ltz v7, :cond_2

    .line 608
    iget-object v8, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    .line 609
    iget v9, v8, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    if-ne v9, v2, :cond_5

    iget v9, v8, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    if-ne v9, v6, :cond_5

    move v7, v5

    .line 611
    :goto_3
    iget-object v9, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    if-ne v9, v8, :cond_3

    goto :goto_1

    .line 615
    :cond_3
    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    if-ne v10, v2, :cond_4

    .line 616
    iget-object v10, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v11, v4, [Ljava/lang/Object;

    iget v12, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    iget v12, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    invoke-static {v12}, Lcom/chery/media/model/business/StableMediaPlayer;->getPlayerActionString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    iget-object v9, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    aput-object v9, v11, v3

    const-string v9, "for REMOVE_PLAYER Remove Key:%s, Action:%s, Param:%s"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v9, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 628
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 629
    iget-object v7, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    :goto_5
    if-ltz v7, :cond_7

    .line 630
    iget-object v8, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    .line 631
    iget v9, v8, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    if-ne v9, v2, :cond_b

    iget v9, v8, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_b

    move v7, v5

    .line 633
    :goto_6
    iget-object v9, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    if-ne v9, v8, :cond_8

    goto :goto_4

    .line 637
    :cond_8
    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    if-ne v10, v2, :cond_a

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_9

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_9

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_9

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_9

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/16 v11, 0x9

    if-eq v10, v11, :cond_9

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_a

    .line 644
    :cond_9
    iget-object v10, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v11, v4, [Ljava/lang/Object;

    iget v12, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    iget v12, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    invoke-static {v12}, Lcom/chery/media/model/business/StableMediaPlayer;->getPlayerActionString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    iget-object v9, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    aput-object v9, v11, v3

    const-string v9, "for SET_MEDIA Remove Key:%s, Action:%s, Param:%s"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v9, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 656
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 657
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    :cond_e
    :goto_8
    if-ltz v2, :cond_d

    .line 658
    iget-object v7, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    .line 659
    iget v8, v7, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    if-ne v8, v1, :cond_12

    add-int/lit8 v8, v2, -0x1

    :goto_9
    if-ltz v8, :cond_11

    .line 662
    iget-object v9, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    .line 663
    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    iget v11, v7, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    if-ne v10, v11, :cond_10

    .line 665
    iget v2, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    iget v7, v7, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    if-ne v2, v7, :cond_f

    .line 666
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    iget v10, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    invoke-static {v10}, Lcom/chery/media/model/business/StableMediaPlayer;->getPlayerActionString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    iget-object v9, v9, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    aput-object v9, v7, v3

    const-string v9, "remove repeat Key:%s, Action:%s, Param:%s"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_f
    move v2, v8

    goto :goto_a

    :cond_10
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_11
    :goto_a
    if-gez v8, :cond_e

    goto :goto_7

    :cond_12
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 682
    :cond_13
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private notifyVideoSize(III)V
    .locals 5

    .line 1584
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1589
    :cond_0
    iput p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->width:I

    .line 1590
    iput p3, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->height:I

    .line 1591
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "key:%d, video size:%d*%d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;

    .line 1593
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;->onVideoSizeNotify(III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetPlayer(I)V
    .locals 5

    .line 1335
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "resetPlayer, key:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1341
    :cond_0
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    .line 1342
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "key:%d, to reset media player"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1345
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1346
    iget-boolean v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    if-nez v1, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 1348
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->clearSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 1352
    :cond_1
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1353
    iput-boolean v4, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 1355
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1356
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V

    :cond_3
    return-void
.end method

.method private setDuration(II)V
    .locals 6

    .line 1554
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-long v1, p2

    .line 1558
    iget-wide v3, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->duration:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    return-void

    .line 1561
    :cond_1
    iput-wide v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->duration:J

    .line 1562
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const-string p2, "key:%d, player duration:%d"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;

    .line 1564
    invoke-interface {p2, p1, v1, v2}, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;->onDurationChanged(IJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setMediaPlayerState(II)V
    .locals 5

    .line 1401
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1405
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    if-ne p2, v1, :cond_1

    return-void

    .line 1408
    :cond_1
    iput p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    .line 1409
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/chery/media/model/business/StableMediaPlayer;->getMediaPlayerStateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "key:%d, mMediaPlayerState:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1412
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->updateDuration(I)V

    .line 1413
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->updateVideoSize(I)V

    .line 1416
    :cond_2
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1417
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1418
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 1419
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mCheckPosition:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1422
    :cond_3
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mCheckPosition:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1424
    :goto_0
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    .line 1427
    :cond_4
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1428
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_5

    .line 1429
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mCheckPosition:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1432
    :cond_5
    iget-object v2, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mCheckPosition:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1434
    :goto_1
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1435
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->updatePosition(I)V

    .line 1438
    :goto_2
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    .line 1439
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$10;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer$10;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setMute(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1599
    iget-object p0, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 1602
    :cond_0
    iget-object p0, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method private setPosition(II)V
    .locals 5

    .line 1569
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-long v1, p2

    .line 1573
    iget-wide v3, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->position:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    return-void

    .line 1576
    :cond_1
    iput-wide v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->position:J

    .line 1578
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;

    .line 1579
    invoke-interface {p2, p1, v1, v2}, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;->onPositionChanged(IJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setSpeed(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;F)V
    .locals 0

    .line 1607
    iget-object p0, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    .line 1608
    invoke-virtual {p0, p2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 1609
    iget-object p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method private setState(IILjava/lang/String;)V
    .locals 4

    .line 1539
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1543
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->state:I

    if-ne p2, v1, :cond_1

    return-void

    .line 1546
    :cond_1
    iput p2, v0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->state:I

    .line 1547
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/chery/media/model/business/StableMediaPlayer;->getPlayingStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "key:%d, player state:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;

    .line 1549
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;->onStateChanged(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDuration(I)V
    .locals 3

    .line 1475
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1479
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 1484
    :cond_1
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 1485
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer$11;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private updatePosition(I)V
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1499
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 1504
    :cond_1
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1505
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer$12;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private updateVideoSize(I)V
    .locals 4

    .line 1515
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mMediaPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    if-nez v0, :cond_0

    return-void

    .line 1519
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 1524
    :cond_1
    iget-object v1, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 1525
    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 1526
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/chery/media/model/business/StableMediaPlayer$13;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/chery/media/model/business/StableMediaPlayer$13;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;III)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public activePlayer(I)V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 340
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 341
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 343
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 345
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public addCallbackListener(Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPlayer(I)V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 306
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 307
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 309
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 311
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public addSeekCompleteListener(Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSeekCompleteListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deactivePlayer(I)V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 357
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 358
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 360
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 362
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public getActivatedKey()I
    .locals 0

    .line 373
    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActivatedKey:I

    return p0
.end method

.method public getDuration(I)J
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 520
    :cond_0
    iget-wide p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->duration:J

    return-wide p0
.end method

.method public getHeight(I)I
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 544
    :cond_0
    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->height:I

    return p0
.end method

.method public getPosition(I)J
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 528
    :cond_0
    iget-wide p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->position:J

    return-wide p0
.end method

.method public getState(I)I
    .locals 0

    .line 508
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 512
    :cond_0
    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->state:I

    return p0
.end method

.method public getWidth(I)I
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 536
    :cond_0
    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->width:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 270
    new-instance v0, Lcom/chery/media/model/business/StableMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/StableMediaPlayer$2;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;)V

    .line 293
    invoke-virtual {v0}, Lcom/chery/media/model/business/StableMediaPlayer$2;->start()V

    return-void
.end method

.method public pause(I)V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 420
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 421
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v3, 0x6

    invoke-direct {v2, p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 423
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 425
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public play(I)V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 403
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 404
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v3, 0x5

    invoke-direct {v2, p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 406
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 408
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public removeCallbackListener(Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mCallbackListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayer(I)V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 324
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v3, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    invoke-direct {v3, p0, p1, v1}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 326
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 328
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public removeSeekCompleteListener(Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSeekCompleteListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJI)V

    return-void
.end method

.method public seekTo(IJI)V
    .locals 9

    .line 457
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 458
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 459
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v8, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/16 v5, 0x8

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 461
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 463
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_0
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setMedia(ILjava/lang/String;)V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 386
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 387
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 391
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_0
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setMute(IZ)V
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 475
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 476
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/16 v3, 0x9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 478
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 480
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 481
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_0
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setSpeed(IF)V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 492
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 493
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/16 v3, 0xa

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 495
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 497
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 501
    :cond_0
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceHolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 379
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 380
    iput-boolean p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceHolderChanged:Z

    .line 381
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public stop(I)V
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 437
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 438
    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mPlayerActions:Ljava/util/List;

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p1, v3}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 440
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v0, :cond_1

    .line 442
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 443
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mDelayedRunnables:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public uninit()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 298
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 301
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
