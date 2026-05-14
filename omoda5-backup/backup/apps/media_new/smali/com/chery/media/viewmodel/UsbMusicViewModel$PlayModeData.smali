.class public Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "UsbMusicViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/UsbMusicViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayModeData"
.end annotation


# instance fields
.field public playMode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;->playMode:I

    .line 68
    iput p2, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;->playMode:I

    return-void
.end method
