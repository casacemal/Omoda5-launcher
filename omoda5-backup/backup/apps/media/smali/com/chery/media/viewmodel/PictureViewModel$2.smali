.class Lcom/chery/media/viewmodel/PictureViewModel$2;
.super Ljava/lang/Object;
.source "PictureViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/PictureViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/PictureViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/PictureViewModel;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel$2;->this$0:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel$2;->this$0:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->access$200(Lcom/chery/media/viewmodel/PictureViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;

    .line 88
    iput-object p2, v0, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 89
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel$2;->this$0:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/PictureViewModel;->access$200(Lcom/chery/media/viewmodel/PictureViewModel;)Ljava/util/Map;

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
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/chery/media/viewmodel/PictureViewModel$2;->this$0:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->access$100(Lcom/chery/media/viewmodel/PictureViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;

    .line 80
    iput p2, v0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->playlistType:I

    .line 81
    iput-object p3, v0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->playlist:Ljava/util/List;

    .line 82
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel$2;->this$0:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/PictureViewModel;->access$100(Lcom/chery/media/viewmodel/PictureViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
