.class public Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "VideoViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/VideoViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayingStateData"
.end annotation


# instance fields
.field public playingState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    .line 48
    iput p2, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;->playingState:I

    return-void
.end method
