.class Lcom/chery/media/viewmodel/LocalMusicViewModel$2;
.super Ljava/lang/Object;
.source "LocalMusicViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/LocalMusicViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/LocalMusicViewModel;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->access$200(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaylistChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->access$100(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
