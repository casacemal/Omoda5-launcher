.class public Lcom/chery/media/model/business/LocalMusicBusiness;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;,
        Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;,
        Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;,
        Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;,
        Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;,
        Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;,
        Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;,
        Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;,
        Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;,
        Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;,
        Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;
    }
.end annotation


# static fields
.field public static final FAST_PLAY_BACKWARD:I = -0x1

.field public static final FAST_PLAY_FORWARD:I = 0x1

.field public static final FAST_PLAY_NONE:I = 0x0

.field private static final FAST_PLAY_STEP:I = 0x1f40

.field private static final FAST_PLAY_STEP_FREQ:I = 0x3e8

.field public static final HANDLE_ADD_RESULT_ALREADY:I = 0x1

.field public static final HANDLE_ADD_RESULT_FAILED:I = -0x1

.field public static final HANDLE_ADD_RESULT_FULL:I = -0x2

.field public static final HANDLE_ADD_RESULT_SUCCESS:I = 0x0

.field public static final HANDLE_DELETE_RESULT_FAILED:I = -0x1

.field public static final HANDLE_DELETE_RESULT_NOT_EXIST:I = -0x2

.field public static final HANDLE_DELETE_RESULT_SUCCESS:I = 0x0

.field public static final PLAYLIST_ALL:I = 0x0

.field public static final PLAYLIST_CUSTOM:I = 0x1

.field public static final PLAY_MODE_RANDOM:I = 0x1

.field public static final PLAY_MODE_SEQ:I = 0x2

.field public static final PLAY_MODE_SINGLE:I = 0x0

.field private static final RESTORE_END:I = 0x2

.field private static final RESTORE_NONE:I = 0x0

.field private static final RESTORE_START:I = 0x1

.field public static final STATE_DOWNLOADED:I = 0x2

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_NOT_DOWNLOAD:I

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/LocalMusicBusiness;


# instance fields
.field private addExecutor:Ljava/util/concurrent/Executor;

.field private addRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocus:I

.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusSource:I

.field private audioManager:Landroid/media/AudioManager;

.field private canPlay:Z

.field private context:Landroid/content/Context;

.field private currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

.field private currentPlayingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;",
            ">;"
        }
    .end annotation
.end field

.field private deleteExecutor:Ljava/util/concurrent/Executor;

.field private deleteRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;",
            ">;"
        }
    .end annotation
.end field

.field private downloadMaxSize:J

.field private downloadTip:Lcom/chery/media/view/dialog/Dialog_SingleText;

.field private duration:J

.field private errorDialog:Lcom/chery/media/view/dialog/Dialog_SingleText;

.field public errorlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fastPlayRun:Ljava/lang/Runnable;

.field private fastPlayStatus:I

.field private handleAddResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;",
            ">;"
        }
    .end annotation
.end field

.field private handleDeleteResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isPlaying:Z

.field private localDir:Ljava/lang/String;

.field private localMusics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

.field private musicsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;",
            ">;"
        }
    .end annotation
.end field

.field private playMode:I

.field private playModeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private playOnCanPlay:Z

.field private playingInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private playlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private playlistType:I

.field private position:J

.field private randomPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

.field private restoreState:I

.field private runSaveMusicsInfo:Ljava/lang/Runnable;

.field private runSaveRestoreInfo:Ljava/lang/Runnable;

.field private runShowNoSpace:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/chery/media/model/business/LocalMusicBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlistType:I

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->errorlist:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    const/16 v1, 0xc

    .line 85
    iput v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusSource:I

    const/4 v1, -0x1

    .line 88
    iput v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocus:I

    .line 90
    iput-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    .line 91
    iput-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    .line 93
    iput-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying:Z

    const-wide/16 v1, 0x0

    .line 94
    iput-wide v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->duration:J

    .line 95
    iput-wide v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->position:J

    .line 113
    new-instance v1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    invoke-direct {v1}, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    .line 118
    iput v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreState:I

    .line 121
    iput v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    const/4 v0, 0x2

    .line 123
    iput v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    .line 125
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$1;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->runShowNoSpace:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicsListeners:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlayingListeners:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playModeListeners:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleAddResponses:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleDeleteResponses:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->addRequests:Ljava/util/List;

    .line 223
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->addExecutor:Ljava/util/concurrent/Executor;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteRequests:Ljava/util/List;

    .line 234
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteExecutor:Ljava/util/concurrent/Executor;

    const-wide/32 v0, 0x40000000

    .line 238
    iput-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadMaxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/chery/media/model/business/LocalMusicBusiness;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->setDuration(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/media/model/business/LocalMusicBusiness;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    return p0
.end method

.method static synthetic access$1200(Lcom/chery/media/model/business/LocalMusicBusiness;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->setPosition(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/model/business/LocalMusicBusiness;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveRestoreInfo(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/chery/media/model/business/LocalMusicBusiness;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setAudioFocus(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->readMusicsInfo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->readRestoreInfo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->restorePlayingInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->updateCanPlay()V

    return-void
.end method

.method static synthetic access$2100(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/media/AudioManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/chery/media/model/business/LocalMusicBusiness;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusSource:I

    return p0
.end method

.method static synthetic access$2300(Lcom/chery/media/model/business/LocalMusicBusiness;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadMaxSize:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/chery/media/model/business/LocalMusicBusiness;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadMaxSize:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/chery/media/model/business/LocalMusicBusiness;)J
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusicsSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->runShowNoSpace:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleAddResponses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusicPath(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadTip:Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadTip:Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-object p1
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/LocalMusicBusiness;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setPlayingState(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveMusicsInfo()V

    return-void
.end method

.method static synthetic access$3200(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicsListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/chery/media/model/business/LocalMusicBusiness;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlistType:I

    return p0
.end method

.method static synthetic access$3400(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->addRequests:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleDeleteResponses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlayingListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/LocalMusicBusiness;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/chery/media/model/business/LocalMusicBusiness;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->position:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/chery/media/model/business/LocalMusicBusiness;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setFastPlayStatus(I)V

    return-void
.end method

.method static synthetic access$4202(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayRun:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/chery/media/model/business/LocalMusicBusiness;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->duration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/LocalMusicBusiness;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    return p0
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getNextMusic()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->errorDialog:Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-object p0
.end method

.method static synthetic access$702(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->errorDialog:Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-object p1
.end method

.method static synthetic access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private canPlayByAudioFocus(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private checkCanPlay()Z
    .locals 3

    .line 1119
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "checkCanPlay"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocus:I

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlayByAudioFocus(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1122
    sget-object p0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "checkCanPlay no audio focus"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1126
    :cond_0
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->getCurrentPowerMode()I

    move-result p0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x13

    if-eq p0, v1, :cond_1

    .line 1130
    sget-object v1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "checkCanPlay power(%d) not run"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1134
    :cond_1
    sget-object p0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "checkCanPlay true"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;
    .locals 1

    .line 241
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->instance:Lcom/chery/media/model/business/LocalMusicBusiness;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->instance:Lcom/chery/media/model/business/LocalMusicBusiness;

    .line 244
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->instance:Lcom/chery/media/model/business/LocalMusicBusiness;

    return-object v0
.end method

.method private getLocalMusicDir()Ljava/lang/String;
    .locals 1

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "local/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalMusicPath(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)Ljava/lang/String;
    .locals 6

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    .line 483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const/16 v4, 0x64

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v5, 0x2

    aput-object v0, v1, v5

    const/4 v0, 0x3

    iget-object v5, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    .line 484
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v1, v0

    const-string p1, "%08x-%03d-%s-%s"

    .line 482
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusicDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalMusicsSize()J
    .locals 7

    .line 634
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 635
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 636
    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-wide v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->size:J

    add-long/2addr v1, v3

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 640
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusicDir()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/chery/media/util/Utils;->getFolderSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 641
    sget-object p0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "recordSize:%s, folderSize:%s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getNextMusic()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;
    .locals 3

    .line 1226
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1236
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1237
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    goto :goto_1

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1231
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getPriorMusic()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;
    .locals 3

    .line 1267
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_2

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1278
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 1280
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    goto :goto_3

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1271
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 1273
    :goto_1
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method private isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 980
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v1, v0

    .line 983
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 984
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method private readMusicsInfo()V
    .locals 7

    .line 865
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "readMusicsInfo"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "local_musics.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chery/media/util/Utils;->readFromFile(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "com.chery.media.localmusic.size"

    if-eqz v0, :cond_5

    .line 868
    array-length v2, v0

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 873
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 876
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/chery/media/model/business/LocalMusicBusiness$11;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$11;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    invoke-virtual {v3}, Lcom/chery/media/model/business/LocalMusicBusiness$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 879
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 883
    :goto_0
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMusicsInfo localMusics size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 886
    :goto_1
    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 887
    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 888
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 893
    :cond_1
    sget-object v3, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    aput-object v4, v5, v0

    const-string v4, "local music %s not exist, remove it"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v6

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 900
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveMusicsInfo()V

    .line 903
    :cond_3
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 904
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;

    .line 905
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;->onMusicsChanged(Ljava/util/List;)V

    goto :goto_2

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusicsSize()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void

    .line 869
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private readRestoreInfo()V
    .locals 4

    .line 1478
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "readRestoreInfo"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->context:Landroid/content/Context;

    const-string v1, "local_music_restore_info.txt"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1481
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1484
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1485
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readRestoreInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/LocalMusicBusiness$15;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$15;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/LocalMusicBusiness$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1491
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private restorePlayingInfo()V
    .locals 7

    .line 1497
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "restorePlayingInfo"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1499
    iput v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreState:I

    .line 1501
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->playMode:I

    invoke-direct {p0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setPlayMode(I)V

    .line 1503
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->playingMusic:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1505
    sget-object v1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v2, "playingMusic null"

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iput-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    goto :goto_1

    .line 1509
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 1510
    iget-object v3, v2, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-object v4, v4, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->playingMusic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1511
    invoke-direct {p0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    goto :goto_0

    .line 1516
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getCurrentPlaying()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 1519
    sget-object v5, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v6, "restore music failed, try to set first"

    invoke-static {v5, v6}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 1522
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 1523
    iget-object v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iput-wide v2, v5, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->position:J

    :cond_3
    if-eqz v1, :cond_6

    .line 1528
    iget-object v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v4, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    .line 1529
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-wide v5, v1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->position:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_4

    .line 1530
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-wide v2, v2, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->position:J

    invoke-virtual {v1, v4, v2, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    .line 1532
    :cond_4
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-boolean v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->isPlaying:Z

    if-eqz v1, :cond_6

    .line 1533
    iget-boolean v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    if-eqz v1, :cond_5

    .line 1534
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto :goto_2

    .line 1537
    :cond_5
    iput-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    :cond_6
    :goto_2
    const/4 v0, 0x2

    .line 1542
    iput v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreState:I

    .line 1545
    invoke-direct {p0, v4}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveRestoreInfo(Z)V

    return-void
.end method

.method private saveMusicsInfo()V
    .locals 4

    .line 843
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "saveMusicsInfo"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->runSaveMusicsInfo:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 847
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    :cond_0
    new-instance v1, Lcom/chery/media/model/business/LocalMusicBusiness$10;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness$10;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->runSaveMusicsInfo:Ljava/lang/Runnable;

    .line 861
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveRestoreInfo(Z)V
    .locals 5

    .line 1433
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "saveRestoreInfo force:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1436
    iget p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreState:I

    if-ne p1, v1, :cond_0

    .line 1437
    sget-object p0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "restore start, ignore!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getCurrentPlaying()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object p1

    .line 1443
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->playingMusic:Ljava/lang/String;

    .line 1445
    iget-boolean p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    if-eqz p1, :cond_2

    .line 1446
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying:Z

    iput-boolean v0, p1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->isPlaying:Z

    goto :goto_1

    .line 1449
    :cond_2
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    iput-boolean v0, p1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->isPlaying:Z

    .line 1451
    :goto_1
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->position:J

    iput-wide v0, p1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->position:J

    .line 1453
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    iput v0, p1, Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;->playMode:I

    .line 1457
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1458
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1460
    :cond_3
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->restoreInfo:Lcom/chery/media/model/business/LocalMusicBusiness$RestoreInfo;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1461
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$14;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$14;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1474
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAudioFocus(I)V
    .locals 4

    .line 1090
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1093
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setAudioFocus focus:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iput p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocus:I

    .line 1096
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->updateCanPlay()V

    return-void
.end method

.method private setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    sget-object p0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "info is same"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1003
    :cond_1
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set current playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 1005
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    .line 1006
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlayingListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    .line 1007
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;->onCurrentPlayingChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    goto :goto_1

    .line 1010
    :cond_3
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveRestoreInfo(Z)V

    return-void
.end method

.method private setDuration(J)V
    .locals 4

    .line 1060
    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->duration:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1063
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setDuration duration:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iput-wide p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->duration:J

    .line 1065
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

    .line 1066
    invoke-interface {v0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;->onDurationChanged(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setFastPlayStatus(I)V
    .locals 4

    .line 1384
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1387
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setFastPlayStatus %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iput p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    if-nez p1, :cond_1

    .line 1392
    invoke-direct {p0, v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveRestoreInfo(Z)V

    .line 1395
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

    .line 1396
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;->onFastPlayStatusChanged(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setPlayMode(I)V
    .locals 4

    .line 1409
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1412
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setPlayMode %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iput p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    .line 1414
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;

    .line 1415
    invoke-interface {v1, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;->onPlayModeChanged(I)V

    goto :goto_0

    .line 1418
    :cond_1
    invoke-direct {p0, v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveRestoreInfo(Z)V

    return-void
.end method

.method private setPlayingState(Z)V
    .locals 4

    .line 1043
    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1046
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setPlayingState playingState:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iput-boolean p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying:Z

    .line 1048
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

    .line 1049
    invoke-interface {v1, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;->onPlayingStateChanged(Z)V

    goto :goto_0

    .line 1052
    :cond_1
    invoke-direct {p0, v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveRestoreInfo(Z)V

    return-void
.end method

.method private setPosition(J)V
    .locals 2

    .line 1075
    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->position:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1079
    :cond_0
    iput-wide p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->position:J

    .line 1080
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

    .line 1081
    invoke-interface {v0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;->onPositionChanged(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCanPlay()V
    .locals 5

    .line 1100
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->checkCanPlay()Z

    move-result v0

    .line 1101
    iget-boolean v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 1104
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "updateCanPlay canPlay:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iput-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    if-eqz v0, :cond_1

    .line 1107
    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    if-eqz v0, :cond_2

    .line 1108
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto :goto_0

    .line 1112
    :cond_1
    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying:Z

    iput-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    .line 1113
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->stopFastPlay()V

    .line 1114
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->pause()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addCurrentPlayingListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlayingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlayingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addHandleAddResponse(Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleAddResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleAddResponses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addHandleDeleteResponse(Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleDeleteResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleDeleteResponses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicsListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlayModeListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlayingInfoListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addToLocal(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
    .locals 1

    .line 493
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$8;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$8;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-virtual {p0, v0, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->addToLocal(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    return-void
.end method

.method public addToLocal(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;",
            "Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;",
            ")V"
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToLocal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 503
    :cond_0
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    .line 504
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 505
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->addRequests:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 507
    new-instance p1, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    invoke-direct {p1, p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;)V

    .line 508
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->addExecutor:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p0, p2}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public changeCurrentPlaying(I)V
    .locals 3

    .line 1036
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to changeCurrentPlaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    :cond_0
    return-void
.end method

.method public changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 3

    .line 1014
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to changeCurrentPlaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1020
    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeCurrentPlaying(Ljava/lang/String;)V
    .locals 3

    .line 1026
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to changeCurrentPlaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 1028
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    :cond_1
    return-void
.end method

.method public changePlayMode(I)V
    .locals 4

    .line 1422
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "changePlayMode %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1427
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setPlayMode(I)V

    return-void
.end method

.method public changePlaylist(I)V
    .locals 4

    .line 921
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "changePlaylist playlistType:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public changePlaylist(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 932
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "changePlaylist playlistType:%d playlist size:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlistType:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    sget-object p0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "playlist no change!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 939
    :cond_0
    iput p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlistType:I

    .line 940
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 941
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 942
    invoke-static {p2}, Lcom/chery/media/util/Utils;->generateRandomList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->randomPlaylist:Ljava/util/List;

    .line 943
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->errorlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 944
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlayingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    .line 945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;->onPlaylistChanged(ILjava/util/List;)V

    goto :goto_0

    .line 948
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-eqz p1, :cond_5

    .line 949
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 950
    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    goto :goto_3

    .line 953
    :cond_2
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v3

    .line 955
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 956
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 957
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v5, v5, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 958
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_2
    if-nez v4, :cond_5

    .line 964
    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 970
    :cond_5
    :goto_3
    invoke-direct {p0, v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->saveRestoreInfo(Z)V

    return-void
.end method

.method public checkLocalMusicInfo(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 830
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 831
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 832
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    .line 833
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public checkLocalState(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)I
    .locals 6

    .line 799
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 801
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 802
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 803
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    iget-object v2, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    .line 804
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 810
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 811
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->addRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    .line 812
    iget-object v2, v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->usbMusicInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 813
    iget-object v4, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    iget-object v4, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 819
    :cond_4
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public checkLocalState(Ljava/lang/String;)I
    .locals 4

    .line 770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 776
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 777
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 778
    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    return p0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 785
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->addRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    .line 786
    iget-object v2, v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->usbMusicInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 787
    invoke-direct {p0, v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusicPath(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    .line 793
    :cond_5
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1
.end method

.method public deleteLocal(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
    .locals 1

    .line 646
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$9;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$9;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    invoke-virtual {p0, v0, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteLocals(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V

    return-void
.end method

.method public deleteLocals(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;",
            "Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;",
            ")V"
        }
    .end annotation

    .line 650
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteLocals "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V

    .line 657
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 658
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteRequests:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 660
    new-instance p1, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    invoke-direct {p1, p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;)V

    .line 661
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteExecutor:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p0, p2}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public fastBackward()V
    .locals 5

    .line 1296
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "fastBackward"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1305
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1307
    :cond_2
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$12;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$12;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayRun:Ljava/lang/Runnable;

    .line 1326
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1327
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setFastPlayStatus(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public fastForward()V
    .locals 5

    .line 1331
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "fastForward"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1340
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1342
    :cond_2
    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$13;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$13;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayRun:Ljava/lang/Runnable;

    .line 1366
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1367
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->setFastPlayStatus(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentPlaying()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;
    .locals 0

    .line 992
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 1071
    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->duration:J

    return-wide v0
.end method

.method public getFastPlayStatus()I
    .locals 0

    .line 1401
    iget p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    return p0
.end method

.method public getLocalMusics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->localMusics:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPlayMode()I
    .locals 0

    .line 1405
    iget p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playMode:I

    return p0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPlaylistType()I
    .locals 0

    .line 917
    iget p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlistType:I

    return p0
.end method

.method public getPosition()J
    .locals 2

    .line 1086
    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->position:J

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 248
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->context:Landroid/content/Context;

    .line 250
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    .line 252
    new-instance p1, Lcom/chery/media/model/business/StableMediaPlayer;

    const-string v0, "localMusic"

    invoke-direct {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    .line 253
    invoke-virtual {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->init()V

    .line 254
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->addPlayer(I)V

    .line 255
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->activePlayer(I)V

    .line 256
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$2;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->addCallbackListener(Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;)V

    .line 352
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$3;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$3;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->addSeekCompleteListener(Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;)V

    .line 364
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioManager:Landroid/media/AudioManager;

    .line 366
    new-instance p1, Lcom/chery/media/model/business/LocalMusicBusiness$4;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$4;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 380
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 381
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusSource:I

    const-string v1, "key_car_source_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 383
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 384
    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 387
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->checkCanPlay()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    .line 389
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result p1

    .line 390
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getLastSource()I

    move-result v0

    .line 392
    sget-object v1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusSource:I

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    if-ne v0, v1, :cond_1

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->requestAudioFocus()Z

    .line 397
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$5;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$5;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    new-instance p1, Lcom/chery/media/model/business/LocalMusicBusiness$6;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$6;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    .line 453
    sget-object p1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RomSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRomSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRomSize()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-wide v0, 0x80000000L

    .line 455
    iput-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadMaxSize:J

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x20000000

    .line 458
    iput-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadMaxSize:J

    .line 460
    :goto_0
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-wide v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->downloadMaxSize:J

    const-string v2, "com.chery.media.localmusic.max_size"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 461
    new-instance p1, Lcom/chery/media/model/business/LocalMusicBusiness$7;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$7;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addConfigListener(Lcom/chery/caradapter/carapi/interfaces/IConfigListener;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 0

    .line 1056
    iget-boolean p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying:Z

    return p0
.end method

.method public pause()V
    .locals 2

    .line 1184
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->pause(I)V

    return-void
.end method

.method public play()V
    .locals 5

    .line 1153
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "play canPlay:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-nez v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    sget-object p0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v0, "playlist is empty!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1160
    :cond_0
    invoke-virtual {p0, v4}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(I)V

    .line 1163
    :cond_1
    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlay:Z

    if-eqz v0, :cond_4

    .line 1164
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result v0

    .line 1165
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1166
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setGroupMute(IZI)V

    .line 1169
    :cond_2
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/chery/media/model/business/StableMediaPlayer;->getState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1170
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-wide v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->position:J

    invoke-virtual {v0, v4, v1, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    .line 1173
    :cond_3
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, v4}, Lcom/chery/media/model/business/StableMediaPlayer;->play(I)V

    goto :goto_0

    .line 1176
    :cond_4
    iput-boolean v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    .line 1177
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocus:I

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->canPlayByAudioFocus(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1178
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->requestAudioFocus()Z

    :cond_5
    :goto_0
    return-void
.end method

.method public playNext()V
    .locals 4

    .line 1206
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "playNext"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1211
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getNextMusic()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1213
    sget-object v1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextMusic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    .line 1215
    invoke-virtual {p0, v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->seekTo(J)V

    goto :goto_0

    .line 1218
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 1220
    :goto_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    :cond_2
    return-void
.end method

.method public playPause()V
    .locals 2

    .line 1190
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "playPause"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->pause()V

    goto :goto_0

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    :goto_0
    return-void
.end method

.method public playPrior()V
    .locals 4

    .line 1247
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "playPrior"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPriorMusic()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    .line 1253
    sget-object v1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priorMusic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 1255
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    .line 1256
    invoke-virtual {p0, v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->seekTo(J)V

    goto :goto_0

    .line 1259
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 1261
    :goto_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    :cond_2
    return-void
.end method

.method public removeCurrentPlayingListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->currentPlayingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeHandleAddResponse(Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleAddResponses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeHandleDeleteResponse(Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handleDeleteResponses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicsListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayModeListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayingInfoListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 6

    .line 1143
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 1144
    sget-object v1, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "requestAudioFocus ret:%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_0

    .line 1146
    invoke-direct {p0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->setAudioFocus(I)V

    return v2

    :cond_0
    return v5
.end method

.method public seekTo(J)V
    .locals 4

    .line 1290
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "seek %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, v3, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    return-void
.end method

.method public setPlayOnCanPlay(Z)V
    .locals 3

    .line 1201
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayOnCanPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iput-boolean p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->playOnCanPlay:Z

    return-void
.end method

.method public stopFastPlay()V
    .locals 2

    .line 1371
    sget-object v0, Lcom/chery/media/model/business/LocalMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "stopFastPlay"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayStatus:I

    if-nez v0, :cond_0

    return-void

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1377
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1378
    iput-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness;->fastPlayRun:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x0

    .line 1380
    invoke-direct {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->setFastPlayStatus(I)V

    return-void
.end method
