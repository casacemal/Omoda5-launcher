.class public Lcom/chery/media/viewmodel/MediaViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "MediaViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioSourceChangeListener:Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;

.field private currentAudioSource:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/chery/media/viewmodel/MediaViewModel;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/viewmodel/MediaViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->getCurrentAudioSource()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/MediaViewModel;->currentAudioSource:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance p1, Lcom/chery/media/viewmodel/MediaViewModel$1;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/MediaViewModel$1;-><init>(Lcom/chery/media/viewmodel/MediaViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/MediaViewModel;->audioSourceChangeListener:Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;

    .line 30
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/viewmodel/MediaViewModel;->audioSourceChangeListener:Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/MediaBusiness;->addAudioSourceChangeListener(Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/viewmodel/MediaViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/chery/media/viewmodel/MediaViewModel;->currentAudioSource:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/chery/media/viewmodel/MediaViewModel;->currentAudioSource:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method protected onCleared()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 36
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/viewmodel/MediaViewModel;->audioSourceChangeListener:Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/MediaBusiness;->removeAudioSourceChangeListener(Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;)V

    return-void
.end method
