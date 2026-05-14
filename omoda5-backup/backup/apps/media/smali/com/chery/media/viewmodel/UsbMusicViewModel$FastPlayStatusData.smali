.class public Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "UsbMusicViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/UsbMusicViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastPlayStatusData"
.end annotation


# instance fields
.field public fastPlayStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;->fastPlayStatus:I

    .line 76
    iput p2, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;->fastPlayStatus:I

    return-void
.end method
