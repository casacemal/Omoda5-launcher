.class public Lcom/chery/media/viewmodel/RadioViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "RadioViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/chery/media/viewmodel/RadioViewModel;

    const-string v1, "TUNER"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/viewmodel/RadioViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public addCollection(IZ)V
    .locals 0

    .line 99
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/RadioBusiness;->addCollection(IZ)Ljava/lang/String;

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 103
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    return-void
.end method

.method public changeBand(I)V
    .locals 0

    .line 66
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->setConfigure(I)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->close()V

    return-void
.end method

.method public getArea()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentBand()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getCurrentBand()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentChannel()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getCurrentChannel()Landroidx/lifecycle/LiveData;

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

    .line 58
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getRadioList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;>;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioList()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getTunerState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getTunerState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public playPause()V
    .locals 1

    .line 83
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getCurrentState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    .line 84
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 87
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus()Z

    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    :goto_1
    return-void
.end method

.method public requestAudioFocus()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus()Z

    return-void
.end method

.method public scan(IZ)I
    .locals 0

    .line 24
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    .line 25
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus()Z

    .line 27
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/RadioBusiness;->scan(IZ)I

    move-result p0

    return p0
.end method

.method public seek(IZ)V
    .locals 0

    .line 31
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    .line 32
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus()Z

    .line 34
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    return-void
.end method

.method public tune(I)V
    .locals 0

    .line 70
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    .line 71
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    .line 72
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus()Z

    :cond_0
    return-void
.end method

.method public tuneByList(I)V
    .locals 0

    .line 76
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->tuneByList(I)V

    .line 77
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p0

    if-nez p0, :cond_0

    .line 78
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus()Z

    :cond_0
    return-void
.end method
