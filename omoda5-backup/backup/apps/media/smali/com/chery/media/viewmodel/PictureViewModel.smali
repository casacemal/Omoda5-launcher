.class public Lcom/chery/media/viewmodel/PictureViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "PictureViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;,
        Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;
    }
.end annotation


# instance fields
.field private currentPlayingDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;",
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

.field private currentUsbListener:Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;

.field private playlistDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;",
            ">;>;"
        }
    .end annotation
.end field

.field private playlistInfoListener:Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;

.field private speedLimitListener:Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;

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


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 6

    .line 52
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistDatas:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentPlayingDatas:Ljava/util/Map;

    .line 54
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/PictureBusiness;->getCurrentUsb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/PictureBusiness;->getSpeedLimitSetting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitSetting:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/PictureBusiness;->getSpeedLimitView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitView:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;

    .line 61
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlaylistType(I)I

    move-result v4

    .line 62
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlaylist(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;-><init>(IILjava/util/List;)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;

    .line 65
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/chery/media/model/business/PictureBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;-><init>(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Lcom/chery/media/viewmodel/PictureViewModel$1;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/PictureViewModel$1;-><init>(Lcom/chery/media/viewmodel/PictureViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentUsbListener:Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;

    .line 74
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentUsbListener:Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/PictureBusiness;->addCurrentUsbListener(Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;)V

    .line 76
    new-instance p1, Lcom/chery/media/viewmodel/PictureViewModel$2;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/PictureViewModel$2;-><init>(Lcom/chery/media/viewmodel/PictureViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistInfoListener:Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;

    .line 92
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistInfoListener:Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/PictureBusiness;->addPlaylistInfoListener(Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;)V

    .line 94
    new-instance p1, Lcom/chery/media/viewmodel/PictureViewModel$3;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/PictureViewModel$3;-><init>(Lcom/chery/media/viewmodel/PictureViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitListener:Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;

    .line 110
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitListener:Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/PictureBusiness;->addSpeedLimitListener(Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/viewmodel/PictureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/viewmodel/PictureViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/viewmodel/PictureViewModel;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentPlayingDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/viewmodel/PictureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitSetting:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/viewmodel/PictureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitView:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public changeCurrentPlaying(II)V
    .locals 0

    .line 163
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/PictureBusiness;->changeCurrentPlaying(II)V

    return-void
.end method

.method public changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 0

    .line 159
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/PictureBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    return-void
.end method

.method public changeCurrentUsb(I)V
    .locals 0

    .line 151
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->changeCurrentUsb(I)V

    return-void
.end method

.method public changeNext(I)V
    .locals 0

    .line 171
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->changeNext(I)V

    return-void
.end method

.method public changePlaylist(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/model/business/PictureBusiness;->changePlaylist(IILjava/util/List;)V

    return-void
.end method

.method public changePrior(I)V
    .locals 0

    .line 167
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->changePrior(I)V

    return-void
.end method

.method public getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentPlayingDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;

    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

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

    .line 121
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentUsb:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistDatas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;

    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->playlist:Ljava/util/List;

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

    .line 175
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitSetting:Landroidx/lifecycle/MutableLiveData;

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

    .line 179
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->speedLimitView:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentPlayingDatas:Ljava/util/Map;

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

    .line 146
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
            "Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistDatas:Ljava/util/Map;

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

    .line 133
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 115
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 116
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/viewmodel/PictureViewModel;->currentUsbListener:Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/PictureBusiness;->removeCurrentUsbListener(Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;)V

    .line 117
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel;->playlistInfoListener:Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/PictureBusiness;->removePlaylistInfoListener(Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;)V

    return-void
.end method
