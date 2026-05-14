.class public Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "UsbMusicViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/UsbMusicViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentPlayingData"
.end annotation


# instance fields
.field public currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;


# direct methods
.method public constructor <init>(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    .line 36
    iput-object p2, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    return-void
.end method
