.class public Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "UsbMusicViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/UsbMusicViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayingPositionData"
.end annotation


# instance fields
.field public position:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;->position:J

    .line 60
    iput-wide p2, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;->position:J

    return-void
.end method
