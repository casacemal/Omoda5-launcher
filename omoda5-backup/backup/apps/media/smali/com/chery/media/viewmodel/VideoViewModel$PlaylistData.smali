.class public Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "VideoViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/VideoViewModel;
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
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
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
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;->playlistType:I

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;->playlist:Ljava/util/List;

    .line 31
    iput p2, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;->playlistType:I

    .line 32
    iput-object p3, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlaylistData;->playlist:Ljava/util/List;

    return-void
.end method
