.class public Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "PictureViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/PictureViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistData"
.end annotation


# instance fields
.field public playlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public playlistType:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->playlistType:I

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->playlist:Ljava/util/List;

    .line 27
    iput p2, p0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->playlistType:I

    .line 28
    iput-object p3, p0, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->playlist:Ljava/util/List;

    return-void
.end method
