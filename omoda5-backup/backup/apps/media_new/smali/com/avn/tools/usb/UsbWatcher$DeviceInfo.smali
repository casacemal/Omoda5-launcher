.class Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;
.super Ljava/lang/Object;
.source "UsbWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avn/tools/usb/UsbWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInfo"
.end annotation


# instance fields
.field category:I

.field connectionState:I

.field devideId:I

.field mountedPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field productId:I

.field serialNumber:Ljava/lang/String;

.field sysDevPath:Ljava/lang/String;

.field uuid:Ljava/lang/String;

.field vendorId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->sysDevPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    .line 71
    iput v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    .line 72
    iput v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->devideId:I

    .line 73
    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->serialNumber:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->vendorId:I

    iput v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->productId:I

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->mountedPaths:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->uuid:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    .line 86
    iput v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    const/4 v1, -0x1

    .line 87
    iput v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->devideId:I

    const-string v1, ""

    .line 88
    iput-object v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->serialNumber:Ljava/lang/String;

    .line 89
    iput v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->vendorId:I

    .line 90
    iput v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->productId:I

    .line 91
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->mountedPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iput-object v1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method isInserted()Z
    .locals 0

    .line 79
    iget p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isMounted()Z
    .locals 1

    .line 82
    iget p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
