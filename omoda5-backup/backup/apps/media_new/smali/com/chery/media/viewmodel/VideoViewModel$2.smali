.class Lcom/chery/media/viewmodel/VideoViewModel$2;
.super Ljava/lang/Object;
.source "VideoViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/VideoViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/VideoViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/VideoViewModel;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel$2;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel$2;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$200(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;

    .line 149
    iput-object p2, v0, Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 150
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$2;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$200(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

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
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel$2;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$100(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;

    .line 141
    iput p2, v0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;->playlistType:I

    .line 142
    iput-object p3, v0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;->playlist:Ljava/util/List;

    .line 143
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$2;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$100(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
