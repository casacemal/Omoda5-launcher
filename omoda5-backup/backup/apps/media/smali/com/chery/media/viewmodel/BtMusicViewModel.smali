.class public Lcom/chery/media/viewmodel/BtMusicViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "BtMusicViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final application:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-class v0, Lcom/chery/media/viewmodel/BtMusicViewModel;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/viewmodel/BtMusicViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 21
    sget-object v0, Lcom/chery/media/viewmodel/BtMusicViewModel;->TAG:Ljava/lang/String;

    const-string v1, "BtMusicViewModel init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput-object p1, p0, Lcom/chery/media/viewmodel/BtMusicViewModel;->application:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public getBtMusicInfo()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public getBtMusicPosition()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicPosition()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

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

    .line 32
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedDevice()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtDeviceName()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->getPlaybackState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public next()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 70
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->next()V

    goto :goto_0

    .line 72
    :cond_0
    sget-object p0, Lcom/chery/media/viewmodel/BtMusicViewModel;->TAG:Ljava/lang/String;

    const-string v0, "previous : audioFocus is not Btmusic"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 27
    sget-object v0, Lcom/chery/media/viewmodel/BtMusicViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onCleared"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    return-void
.end method

.method public playPause()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->playPause()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/BtMusicBusiness;->setPlayOnCanPlay(Z)V

    .line 56
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 62
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->previous()V

    goto :goto_0

    .line 64
    :cond_0
    sget-object p0, Lcom/chery/media/viewmodel/BtMusicViewModel;->TAG:Ljava/lang/String;

    const-string v0, "previous : audioFocus is not Btmusic"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestBtMusicAudioFocus()Z
    .locals 0

    .line 77
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    move-result p0

    return p0
.end method
