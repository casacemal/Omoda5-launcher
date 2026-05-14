.class public Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "VideoViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/VideoViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentPlayingData"
.end annotation


# instance fields
.field public currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;


# direct methods
.method public constructor <init>(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    .line 40
    iput-object p2, p0, Lcom/chery/media/viewmodel/VideoViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    return-void
.end method
