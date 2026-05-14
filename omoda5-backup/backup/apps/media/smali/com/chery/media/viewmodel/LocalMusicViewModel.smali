.class public Lcom/chery/media/viewmodel/LocalMusicViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "LocalMusicViewModel.java"


# instance fields
.field private currentPlaying:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

.field private duration:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private fastPlayStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isPlaying:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private localMusics:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private musicsListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;

.field private playMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private playModeListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;

.field private playingInfoListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

.field private playlist:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private position:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 34
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->localMusics:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPlaylist()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playlist:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getCurrentPlaying()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->currentPlaying:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->position:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getFastPlayStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->fastPlayStatus:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPlayMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playMode:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance p1, Lcom/chery/media/viewmodel/LocalMusicViewModel$1;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel$1;-><init>(Lcom/chery/media/viewmodel/LocalMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->musicsListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;

    .line 49
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->musicsListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->addMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V

    .line 51
    new-instance p1, Lcom/chery/media/viewmodel/LocalMusicViewModel$2;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel$2;-><init>(Lcom/chery/media/viewmodel/LocalMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    .line 62
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->addCurrentPlayingListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;)V

    .line 64
    new-instance p1, Lcom/chery/media/viewmodel/LocalMusicViewModel$3;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel$3;-><init>(Lcom/chery/media/viewmodel/LocalMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playingInfoListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

    .line 85
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playingInfoListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->addPlayingInfoListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;)V

    .line 87
    new-instance p1, Lcom/chery/media/viewmodel/LocalMusicViewModel$4;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel$4;-><init>(Lcom/chery/media/viewmodel/LocalMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playModeListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;

    .line 93
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playModeListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->addPlayModeListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->localMusics:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playlist:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->currentPlaying:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->position:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->fastPlayStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playMode:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public addMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V
    .locals 0

    .line 138
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->addMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V

    return-void
.end method

.method public addToLocal(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
    .locals 0

    .line 145
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->addToLocal(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    return-void
.end method

.method public addToLocal(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
    .locals 0
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

    .line 149
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->addToLocal(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    return-void
.end method

.method public changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 173
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    return-void
.end method

.method public changePlayMode(I)V
    .locals 0

    .line 213
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlayMode(I)V

    return-void
.end method

.method public changePlaylist(I)V
    .locals 0

    .line 165
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(I)V

    return-void
.end method

.method public changePlaylist(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(ILjava/util/List;)V

    return-void
.end method

.method public checkLocalState(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)I
    .locals 0

    .line 161
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->checkLocalState(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)I

    move-result p0

    return p0
.end method

.method public deleteLocal(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
    .locals 0

    .line 153
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteLocal(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V

    return-void
.end method

.method public deleteLocals(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
    .locals 0
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

    .line 157
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteLocals(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V

    return-void
.end method

.method public fastBackward()V
    .locals 0

    .line 201
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->fastBackward()V

    return-void
.end method

.method public fastForward()V
    .locals 0

    .line 205
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->fastForward()V

    return-void
.end method

.method public getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->currentPlaying:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getDuration()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getFastPlayStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->fastPlayStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getLocalMusics()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->localMusics:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPlayMode()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playMode:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPlaylist()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;>;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playlist:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPosition()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->position:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public isPlaying()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method protected onCleared()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 99
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->musicsListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->removeMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V

    .line 100
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->removeCurrentPlayingListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;)V

    .line 101
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playingInfoListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->removePlayingInfoListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;)V

    .line 102
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel;->playModeListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->removePlayModeListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 181
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 177
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    return-void
.end method

.method public playNext()V
    .locals 0

    .line 189
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->playNext()V

    return-void
.end method

.method public playPause()V
    .locals 0

    .line 185
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->playPause()V

    return-void
.end method

.method public playPrior()V
    .locals 0

    .line 193
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->playPrior()V

    return-void
.end method

.method public removeMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V
    .locals 0

    .line 141
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->removeMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 0

    .line 217
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->requestAudioFocus()Z

    move-result p0

    return p0
.end method

.method public seekTo(J)V
    .locals 0

    .line 197
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/LocalMusicBusiness;->seekTo(J)V

    return-void
.end method

.method public stopFastPlay()V
    .locals 0

    .line 209
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->stopFastPlay()V

    return-void
.end method
