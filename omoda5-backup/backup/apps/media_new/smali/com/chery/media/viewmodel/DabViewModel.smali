.class public Lcom/chery/media/viewmodel/DabViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "DabViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Lcom/chery/media/viewmodel/DabViewModel;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/viewmodel/DabViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V
    .locals 0

    .line 36
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    return-void
.end method

.method public addFavor(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    .line 52
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->addFavor(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method

.method public addReserve(Lcom/chery/media/model/business/DabProgramInfo;)V
    .locals 0

    .line 152
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->addReserve(Lcom/chery/media/model/business/DabProgramInfo;)V

    return-void
.end method

.method public cancelFavor(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    .line 56
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->cancelFavor(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method

.method public getALLList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getALLList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllEnsembleName()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getAllEnsembleName()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllPtyId()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getAllPtyId()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnnounceList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabAnnounceInfo;",
            ">;>;"
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getAnnounceList()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getCurPlayInfo()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getCurPlayList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;>;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getCurPlayList()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getCurTimeSeconds()J
    .locals 2

    .line 184
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getCurTimeSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDabListByEnsembleName(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->getDabListByEnsembleName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDabListByPty(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->getDabListByPty(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDabOption()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getDabOption()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDabProgramInfoList(IIIIII)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabProgramInfo;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/chery/media/model/business/DabBusiness;->getDabProgramInfoList(IIIIII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFavorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getFavorList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLastListPage()I
    .locals 0

    .line 48
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getLastListPage()I

    move-result p0

    return p0
.end method

.method public getPlayImage()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lsw/com/dabdrmradio/DabImage;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayImage()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getPlayLabel()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayLabel()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getPlayingState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getPtyName(I)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->getPtyName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScanState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getScanState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public isCurPlayingProgram(Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 0

    .line 164
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->isCurPlayingProgram(Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result p0

    return p0
.end method

.method public isFavor(Lcom/chery/media/model/business/DabInfo;)Z
    .locals 0

    .line 68
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result p0

    return p0
.end method

.method public isFirstTimeUsed()Z
    .locals 0

    .line 112
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->isFirstTimeUsed()Z

    move-result p0

    return p0
.end method

.method public isReservedExpired(Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 0

    .line 160
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->isReservedExpired(Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result p0

    return p0
.end method

.method public playChannel(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    .line 108
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method

.method public playNext()V
    .locals 0

    .line 176
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->playNext()V

    return-void
.end method

.method public playPause()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->playPause()V

    return-void
.end method

.method public playPrevious()V
    .locals 0

    .line 180
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->playPrevious()V

    return-void
.end method

.method public removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V
    .locals 0

    .line 40
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    return-void
.end method

.method public removeReserve(Lcom/chery/media/model/business/DabProgramInfo;)V
    .locals 0

    .line 156
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->removeReserve(Lcom/chery/media/model/business/DabProgramInfo;)V

    return-void
.end method

.method public requestAudioFocus()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->requestAudioFocus()Z

    return-void
.end method

.method public setAnnouncementTypeSwitch(IZ)V
    .locals 0

    .line 84
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/DabBusiness;->setAnnouncementTypeSwitch(IZ)V

    return-void
.end method

.method public setCurPlayType(ILjava/lang/String;)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/DabBusiness;->setCurPlayType(ILjava/lang/String;)V

    return-void
.end method

.method public setDabOption(Z)V
    .locals 0

    .line 168
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->setDabOption(Z)V

    return-void
.end method

.method public setFirstTimeUsedFalse()V
    .locals 0

    .line 116
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->setFirstTimeUsedFalse()V

    return-void
.end method

.method public setLastListPage(I)V
    .locals 0

    .line 44
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->setLastListPage(I)V

    return-void
.end method

.method public startScan()V
    .locals 0

    .line 76
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->startScan()V

    return-void
.end method

.method public stopScan()V
    .locals 0

    .line 80
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->stopScan()V

    return-void
.end method
