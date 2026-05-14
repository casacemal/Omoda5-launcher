.class public Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "VideoViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/VideoViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayingDurationData"
.end annotation


# instance fields
.field public duration:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;->duration:J

    .line 56
    iput-wide p2, p0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;->duration:J

    return-void
.end method
