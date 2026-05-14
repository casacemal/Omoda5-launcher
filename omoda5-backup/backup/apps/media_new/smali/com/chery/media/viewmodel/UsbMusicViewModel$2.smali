.class Lcom/chery/media/viewmodel/UsbMusicViewModel$2;
.super Ljava/lang/Object;
.source "UsbMusicViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/UsbMusicViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/UsbMusicViewModel;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$200(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;

    .line 143
    iput-object p2, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 144
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$200(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaylistChanged(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$100(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;

    .line 135
    iput p2, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;->playlistType:I

    .line 136
    iput-object p3, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlaylistData;->playlist:Ljava/util/List;

    .line 137
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$2;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$100(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
