.class public Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "UsbScannerViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/UsbScannerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbMountStatusData"
.end annotation


# instance fields
.field public mounted:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    .line 27
    iput-boolean p2, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;->mounted:Z

    return-void
.end method
