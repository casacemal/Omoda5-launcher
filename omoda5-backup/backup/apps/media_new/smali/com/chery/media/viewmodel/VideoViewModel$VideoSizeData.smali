.class public Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "VideoViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/VideoViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSizeData"
.end annotation


# instance fields
.field public videoSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    .line 72
    iput-object p2, p0, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;->videoSize:Landroid/util/Size;

    return-void
.end method
