.class public Lcom/chery/media/viewmodel/VideoViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "VideoViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;,
        Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;,
        Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;,
        Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;,
        Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;,
        Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;
    }
.end annotation


# instance fields
.field private brightnessData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private brightnessListener:Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;

.field private currentPlayingDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;",
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

.field private currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

.field private playingDurationDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playingInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

.field private playingPositionDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;",
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
            "Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;",
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
            "Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

.field private speedLimitListener:Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;

.field private speedLimitSetting:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private speedLimitView:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private videoSizeDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;",
            ">;>;"
        }
    .end annotation
.end field

.field private volumeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volumeListener:Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 6

    .line 98
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistDatas:Ljava/util/Map;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentPlayingDatas:Ljava/util/Map;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingStateDatas:Ljava/util/Map;

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingDurationDatas:Ljava/util/Map;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingPositionDatas:Ljava/util/Map;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->videoSizeDatas:Ljava/util/Map;

    .line 100
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;

    .line 104
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlaylistType(I)I

    move-result v4

    .line 105
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlaylist(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;-><init>(IILjava/util/List;)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;

    .line 108
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;-><init>(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingStateDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;

    .line 111
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayingState(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;-><init>(II)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingDurationDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;

    .line 114
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/VideoBusiness;->getDuration(I)J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;-><init>(IJ)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingPositionDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;

    .line 117
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPosition(I)J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;-><init>(IJ)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->videoSizeDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;

    .line 120
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/VideoBusiness;->getVideoSize(I)Landroid/util/Size;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;-><init>(ILandroid/util/Size;)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 123
    :cond_0
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getVolume()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->volumeData:Landroidx/lifecycle/MutableLiveData;

    .line 124
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getBrightness()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->brightnessData:Landroidx/lifecycle/MutableLiveData;

    .line 126
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getSpeedLimitSetting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitSetting:Landroidx/lifecycle/MutableLiveData;

    .line 127
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getSpeedLimitView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitView:Landroidx/lifecycle/MutableLiveData;

    .line 129
    new-instance p1, Lcom/chery/media/viewmodel/VideoViewModel$1;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/VideoViewModel$1;-><init>(Lcom/chery/media/viewmodel/VideoViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

    .line 135
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/VideoBusiness;->addCurrentUsbListener(Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;)V

    .line 137
    new-instance p1, Lcom/chery/media/viewmodel/VideoViewModel$2;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/VideoViewModel$2;-><init>(Lcom/chery/media/viewmodel/VideoViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    .line 153
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/VideoBusiness;->addPlaylistInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;)V

    .line 155
    new-instance p1, Lcom/chery/media/viewmodel/VideoViewModel$3;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/VideoViewModel$3;-><init>(Lcom/chery/media/viewmodel/VideoViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

    .line 184
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/VideoBusiness;->addPlayingInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;)V

    .line 186
    new-instance p1, Lcom/chery/media/viewmodel/VideoViewModel$4;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/VideoViewModel$4;-><init>(Lcom/chery/media/viewmodel/VideoViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->volumeListener:Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;

    .line 192
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->volumeListener:Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/VideoBusiness;->addVolumeListener(Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;)V

    .line 194
    new-instance p1, Lcom/chery/media/viewmodel/VideoViewModel$5;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/VideoViewModel$5;-><init>(Lcom/chery/media/viewmodel/VideoViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->brightnessListener:Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;

    .line 200
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->brightnessListener:Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/VideoBusiness;->addBrightnessListener(Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;)V

    .line 202
    new-instance p1, Lcom/chery/media/viewmodel/VideoViewModel$6;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/VideoViewModel$6;-><init>(Lcom/chery/media/viewmodel/VideoViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitListener:Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;

    .line 218
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitListener:Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/VideoBusiness;->addSpeedLimitListener(Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitView:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentPlayingDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingStateDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingDurationDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingPositionDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->videoSizeDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->volumeData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->brightnessData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitSetting:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public changeBrightness(I)V
    .locals 0

    .line 397
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->changeBrightness(I)V

    return-void
.end method

.method public changeBrightnessBy(I)V
    .locals 0

    .line 401
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->changeBrightnessBy(I)V

    return-void
.end method

.method public changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 0

    .line 327
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    return-void
.end method

.method public changePlaylist(IILjava/lang/String;)V
    .locals 0

    .line 323
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;)V

    return-void
.end method

.method public changeVolume(I)V
    .locals 0

    .line 381
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->changeVolume(I)V

    return-void
.end method

.method public fastBackward(I)V
    .locals 0

    .line 359
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->fastBackward(I)V

    return-void
.end method

.method public fastForward(I)V
    .locals 0

    .line 362
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->fastForward(I)V

    return-void
.end method

.method public freeze(I)V
    .locals 0

    .line 339
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->freeze(I)V

    return-void
.end method

.method public getBrightness()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->brightnessData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getBrightnessMax()I
    .locals 0

    .line 393
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMax()I

    move-result p0

    return p0
.end method

.method public getBrightnessMin()I
    .locals 0

    .line 389
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMin()I

    move-result p0

    return p0
.end method

.method public getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;

    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

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

    .line 233
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPlayingDuration(I)J
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingDurationDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingDurationDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;

    iget-wide p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;->duration:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPlayingPosition(I)J
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingPositionDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingPositionDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;

    iget-wide p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;->position:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPlayingState(I)I
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingStateDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingStateDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;

    iget p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;->playingState:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;

    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;->playlist:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpeedLimitSetting()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitSetting:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getSpeedLimitView()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitView:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getVideoSize(I)Landroid/util/Size;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->videoSizeDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->videoSizeDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;

    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;->videoSize:Landroid/util/Size;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolume()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->volumeData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getVolumeMax()I
    .locals 0

    .line 377
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getVolumeMax()I

    move-result p0

    return p0
.end method

.method public getVolumeMin()I
    .locals 0

    .line 373
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getVolumeMin()I

    move-result p0

    return p0
.end method

.method public observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentPlayingDatas:Ljava/util/Map;

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

    .line 258
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
            "Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;",
            ">;)V"
        }
    .end annotation

    .line 283
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingDurationDatas:Ljava/util/Map;

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

    .line 284
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
            "Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;",
            ">;)V"
        }
    .end annotation

    .line 296
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingPositionDatas:Ljava/util/Map;

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

    .line 297
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
            "Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;",
            ">;)V"
        }
    .end annotation

    .line 270
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingStateDatas:Ljava/util/Map;

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

    .line 271
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
            "Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;",
            ">;)V"
        }
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistDatas:Ljava/util/Map;

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

    .line 245
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observeVideoSizeDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;",
            ">;)V"
        }
    .end annotation

    .line 309
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->videoSizeDatas:Ljava/util/Map;

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

    .line 310
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 224
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->removeCurrentUsbListener(Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;)V

    .line 225
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->removePlaylistInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;)V

    .line 226
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->playingInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->removePlayingInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;)V

    .line 227
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->volumeListener:Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->removeVolumeListener(Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;)V

    .line 228
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/VideoViewModel;->brightnessListener:Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->removeBrightnessListener(Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;)V

    .line 229
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel;->speedLimitListener:Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/VideoBusiness;->removeSpeedLimitListener(Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;)V

    return-void
.end method

.method public pause(I)V
    .locals 0

    .line 335
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->pause(I)V

    return-void
.end method

.method public play(I)V
    .locals 0

    .line 331
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    return-void
.end method

.method public playNext(I)V
    .locals 0

    .line 351
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->playNext(I)V

    return-void
.end method

.method public playPause(I)V
    .locals 0

    .line 343
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->playPause(I)V

    return-void
.end method

.method public playPrior(I)V
    .locals 0

    .line 347
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->playPrior(I)V

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 0

    .line 413
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->requestAudioFocus()Z

    move-result p0

    return p0
.end method

.method public seekTo(IJ)V
    .locals 0

    .line 355
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness;->seekTo(IJ)V

    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 319
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setUiEnablePlay(Z)V
    .locals 0

    .line 315
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setUiEnablePlay(Z)V

    return-void
.end method

.method public stopFastPlay(I)V
    .locals 0

    .line 365
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->stopFastPlay(I)V

    return-void
.end method
