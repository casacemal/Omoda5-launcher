.class public Lcom/chery/media/viewmodel/UsbLiveData;
.super Ljava/lang/Object;
.source "UsbLiveData.java"


# instance fields
.field public usbName:Ljava/lang/String;

.field public usbType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/chery/media/viewmodel/UsbLiveData;->usbType:I

    .line 8
    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbLiveData;->usbName:Ljava/lang/String;

    return-void
.end method
