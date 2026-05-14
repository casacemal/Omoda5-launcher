.class public Lcom/chery/media/viewmodel/UsbMusicViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "UsbMusicViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;,
        Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;,
        Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;,
        Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;,
        Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;,
        Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;,
        Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;
    }
.end annotation


# instance fields
.field private currentPlayingDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentUsb:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentUsbListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;

.field private fastPlayStatusDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playModeDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playModeListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;

.field private playingDurationDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playingInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

.field private playingPositionDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playingStateDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playlistDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 6

    .line 95
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentPlayingDatas:Ljava/util/Map;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingStateDatas:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingDurationDatas:Ljava/util/Map;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingPositionDatas:Ljava/util/Map;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeDatas:Ljava/util/Map;

    .line 87
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->fastPlayStatusDatas:Ljava/util/Map;

    .line 97
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentUsb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;

    .line 101
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlaylistType(I)I

    move-result v4

    .line 102
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlaylist(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;-><init>(IILjava/util/List;)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;

    .line 105
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;-><init>(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingStateDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;

    .line 108
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->isPlaying(I)Z

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;-><init>(IZ)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingDurationDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;

    .line 111
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getDuration(I)J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;-><init>(IJ)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingPositionDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;

    .line 114
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPosition(I)J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;-><init>(IJ)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;

    .line 117
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayMode(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;-><init>(II)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->fastPlayStatusDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;

    .line 120
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getFastPlayStatus(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;-><init>(II)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 123
    :cond_0
    new-instance p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$1;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel$1;-><init>(Lcom/chery/media/viewmodel/UsbMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentUsbListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;

    .line 129
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentUsbListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->addCurrentUsbListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;)V

    .line 131
    new-instance p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$2;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel$2;-><init>(Lcom/chery/media/viewmodel/UsbMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    .line 147
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->addPlaylistInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;)V

    .line 149
    new-instance p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;-><init>(Lcom/chery/media/viewmodel/UsbMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

    .line 178
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->addPlayingInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;)V

    .line 180
    new-instance p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$4;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel$4;-><init>(Lcom/chery/media/viewmodel/UsbMusicViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;

    .line 188
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->addPlayModeListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentPlayingDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingStateDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingDurationDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingPositionDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->fastPlayStatusDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeDatas:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 307
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    return-void
.end method

.method public changePlayMode(II)V
    .locals 0

    .line 345
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    return-void
.end method

.method public changePlaylist(IILjava/lang/String;)V
    .locals 0

    .line 303
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;)V

    return-void
.end method

.method public fastBackward(I)V
    .locals 0

    .line 335
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->fastBackward(I)V

    return-void
.end method

.method public fastForward(I)V
    .locals 0

    .line 338
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->fastForward(I)V

    return-void
.end method

.method public getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;

    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getFastPlayStatus(I)I
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->fastPlayStatusDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->fastPlayStatusDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;

    iget p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;->fastPlayStatus:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlayMode(I)I
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;

    iget p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;->playMode:I

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getPlayingDuration(I)J
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingDurationDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingDurationDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;

    iget-wide p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;->duration:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPlayingPosition(I)J
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingPositionDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingPositionDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;

    iget-wide p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;->position:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;

    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;->playlist:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlaylistType(I)I
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;

    iget p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;->playlistType:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying(I)Z
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingStateDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingStateDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;

    iget-boolean p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;->isPlaying:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 233
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observeFastPlayStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->fastPlayStatusDatas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 285
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observePlayModeDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;",
            ">;)V"
        }
    .end annotation

    .line 297
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeDatas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 298
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observePlayingDurationDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingDurationDatas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 259
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observePlayingPositionDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingPositionDatas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 272
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observePlayingStateDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;",
            ">;)V"
        }
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingStateDatas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 246
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observePlaylistDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistDatas:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 220
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 194
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->currentUsbListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->removeCurrentUsbListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;)V

    .line 195
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->removePlaylistInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;)V

    .line 196
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playingInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->removePlayingInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;)V

    .line 197
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playModeListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->removePlayModeListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;)V

    return-void
.end method

.method public pause(I)V
    .locals 0

    .line 315
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->pause(I)V

    return-void
.end method

.method public play(I)V
    .locals 0

    .line 311
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    return-void
.end method

.method public playNext(I)V
    .locals 0

    .line 323
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->playNext(I)V

    return-void
.end method

.method public playPause(I)V
    .locals 0

    .line 319
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->playPause(I)V

    return-void
.end method

.method public playPrior(I)V
    .locals 0

    .line 327
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->playPrior(I)V

    return-void
.end method

.method public requestAudioFocus(I)Z
    .locals 0

    .line 349
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    move-result p0

    return p0
.end method

.method public seekTo(IJ)V
    .locals 0

    .line 331
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->seekTo(IJ)V

    return-void
.end method

.method public stopFastPlay(I)V
    .locals 0

    .line 341
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->stopFastPlay(I)V

    return-void
.end method
