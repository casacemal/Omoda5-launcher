.class public Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "UsbMusicViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/UsbMusicViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayingStateData"
.end annotation


# instance fields
.field public isPlaying:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;->isPlaying:Z

    .line 44
    iput-boolean p2, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;->isPlaying:Z

    return-void
.end method
