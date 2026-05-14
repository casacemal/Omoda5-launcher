.class public Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "PictureViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/PictureViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentPlayingData"
.end annotation


# instance fields
.field public currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;


# direct methods
.method public constructor <init>(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    .line 36
    iput-object p2, p0, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    return-void
.end method
