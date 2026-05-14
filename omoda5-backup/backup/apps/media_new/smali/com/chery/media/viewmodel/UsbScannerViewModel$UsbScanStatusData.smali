.class public Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;
.super Lcom/chery/media/viewmodel/UsbLiveData;
.source "UsbScannerViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/viewmodel/UsbScannerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbScanStatusData"
.end annotation


# instance fields
.field public status:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/chery/media/viewmodel/UsbLiveData;-><init>(I)V

    .line 36
    iput p2, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;->status:I

    return-void
.end method
