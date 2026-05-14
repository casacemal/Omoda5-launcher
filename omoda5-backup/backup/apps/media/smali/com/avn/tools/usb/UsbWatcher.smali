.class public Lcom/avn/tools/usb/UsbWatcher;
.super Ljava/lang/Object;
.source "UsbWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;,
        Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;,
        Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;,
        Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;
    }
.end annotation


# static fields
.field public static final CATEGORY_ANDROID:I = 0x4

.field public static final CATEGORY_HUB:I = 0x5

.field public static final CATEGORY_IOS:I = 0x3

.field public static final CATEGORY_MASS_STORAGE:I = 0x1

.field public static final CATEGORY_NO_RESPOND:I = 0x6

.field public static final CATEGORY_TBOX:I = 0x8

.field public static final CATEGORY_UNKNOWN:I = 0x0

.field public static final CATEGORY_UNSUPPORTED:I = 0x7

.field public static final CONNECTION_STATE_INSERTED:I = 0x1

.field public static final CONNECTION_STATE_MOUNTED:I = 0x2

.field public static final CONNECTION_STATE_REMOVED:I = 0x0

.field public static final CONNECTION_STATE_UNMOUNTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_USB1:I = 0x1

.field public static final TYPE_USB2:I = 0x2

.field private static USB1_SYS_DEVICE_PATH:Ljava/lang/String;

.field private static USB2_SYS_DEVICE_PATH:Ljava/lang/String;

.field private static mInstance:Lcom/avn/tools/usb/UsbWatcher;


# instance fields
.field private mAndroidVendorIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mDeviceInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbInsertReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbMountReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/avn/tools/usb/UsbWatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/soc/soc:usb3@31120000/31220000.dwc3/xhci-hcd.1.auto/usb3/3-1/"

    .line 57
    sput-object v0, Lcom/avn/tools/usb/UsbWatcher;->USB1_SYS_DEVICE_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/soc/soc:usb3@31260000/31260000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1.1/"

    .line 58
    sput-object v0, Lcom/avn/tools/usb/UsbWatcher;->USB2_SYS_DEVICE_PATH:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/avn/tools/usb/UsbWatcher;

    invoke-direct {v0}, Lcom/avn/tools/usb/UsbWatcher;-><init>()V

    sput-object v0, Lcom/avn/tools/usb/UsbWatcher;->mInstance:Lcom/avn/tools/usb/UsbWatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;

    invoke-direct {v0, p0}, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;-><init>(Lcom/avn/tools/usb/UsbWatcher;)V

    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbInsertReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;

    .line 101
    new-instance v0, Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;

    invoke-direct {v0, p0}, Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;-><init>(Lcom/avn/tools/usb/UsbWatcher;)V

    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbMountReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbDeviceMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbDeviceMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/avn/tools/usb/UsbWatcher;ILandroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/avn/tools/usb/UsbWatcher;->checkCategory(ILandroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/avn/tools/usb/UsbWatcher;Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/avn/tools/usb/UsbWatcher;->getSerialNumber(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/avn/tools/usb/UsbWatcher;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/avn/tools/usb/UsbWatcher;->emitUsbInserted(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/avn/tools/usb/UsbWatcher;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/avn/tools/usb/UsbWatcher;->emitUsbRemoved(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/avn/tools/usb/UsbWatcher;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/avn/tools/usb/UsbWatcher;->checkMounted(Z)V

    return-void
.end method

.method private checkCategory(ILandroid/hardware/usb/UsbDevice;)V
    .locals 4

    .line 393
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCategory VID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCategory PID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 396
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 398
    sget-object v1, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCategory :: getInterface(i) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0, p2}, Lcom/avn/tools/usb/UsbWatcher;->findUsbHubByInterface(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    sget-object p2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "----Find Hub existing----"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const/4 p1, 0x5

    iput p1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    return-void

    .line 407
    :cond_1
    invoke-direct {p0, p2}, Lcom/avn/tools/usb/UsbWatcher;->findAndroidDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    sget-object p2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "----Find Android existing----"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const/4 p1, 0x4

    iput p1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    return-void

    .line 413
    :cond_2
    invoke-direct {p0, p2}, Lcom/avn/tools/usb/UsbWatcher;->findIOSDeviceByVIDPID(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    sget-object p2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "----Find IOS existing----"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const/4 p1, 0x3

    iput p1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    return-void

    .line 419
    :cond_3
    invoke-direct {p0, p2}, Lcom/avn/tools/usb/UsbWatcher;->findTBoxByVID(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 420
    sget-object p2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "----Find T-Box existing----"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const/16 p1, 0x8

    iput p1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    return-void

    .line 425
    :cond_4
    invoke-direct {p0, p2}, Lcom/avn/tools/usb/UsbWatcher;->findMassStorageByInterface(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    sget-object p2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "----Find Mass Storage existing----"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const/4 p1, 0x1

    iput p1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    return-void

    .line 431
    :cond_5
    invoke-direct {p0, p2}, Lcom/avn/tools/usb/UsbWatcher;->findUnsupportedDeviceByPID(Landroid/hardware/usb/UsbDevice;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 432
    sget-object p2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "----Find unsupported device existing----"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const/4 p1, 0x7

    iput p1, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    :cond_6
    return-void
.end method

.method private checkMounted(Z)V
    .locals 12

    .line 649
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMounted emit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 653
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 654
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 657
    :cond_0
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v4, "getVolumeList"

    new-array v5, v3, [Ljava/lang/Class;

    .line 658
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    .line 659
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    check-cast v0, [Landroid/os/storage/StorageVolume;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 661
    :goto_0
    sget-object v1, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StorageVolume size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 671
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getId"

    new-array v6, v3, [Ljava/lang/Class;

    .line 672
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 673
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "getPath"

    new-array v7, v3, [Ljava/lang/Class;

    .line 674
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    .line 675
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 677
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_2

    .line 678
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    .line 679
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v7

    .line 680
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v7, "isRemovable"

    new-array v8, v3, [Ljava/lang/Class;

    .line 683
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "getUuid"

    new-array v9, v3, [Ljava/lang/Class;

    .line 684
    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v9, "getState"

    new-array v10, v3, [Ljava/lang/Class;

    .line 685
    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v9, v3, [Ljava/lang/Object;

    .line 686
    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-array v9, v3, [Ljava/lang/Object;

    .line 687
    invoke-virtual {v8, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    .line 688
    invoke-virtual {v4, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v4, v7

    move-object v7, v8

    .line 691
    :goto_2
    sget-object v8, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkMounted id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    sget-object v8, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkMounted isRemovable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v8, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkMounted mountedUuid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    sget-object v8, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkMounted mountedState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    sget-object v8, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkMounted mountedPath:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    const-string v4, "mounted"

    .line 698
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "public:8,17"

    .line 700
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    move v1, v8

    goto :goto_3

    :cond_3
    const-string v1, "public:8,1"

    .line 703
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 709
    :goto_3
    sget-object v5, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v9, "%s mounted!"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iget-object v10, v10, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v10, v8, v3

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v5, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    invoke-virtual {v5}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->isInserted()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    .line 711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    invoke-virtual {v5}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->isMounted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 712
    iget-object v5, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iget-object v5, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->mountedPaths:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    iget-object v5, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iput-object v7, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->uuid:Ljava/lang/String;

    .line 714
    iget-object v5, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iput v4, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    if-eqz p1, :cond_1

    .line 716
    iget-object v4, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iget-object v4, v4, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->mountedPaths:Ljava/util/List;

    invoke-direct {p0, v1, v4}, Lcom/avn/tools/usb/UsbWatcher;->emitUsbMounted(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 724
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private emitUsbInserted(I)V
    .locals 5

    .line 729
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitUsbInserted usbtype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iget-object v2, v2, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->instance()Lcom/avn/tools/usb/UsbWatcher;

    move-result-object v0

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 732
    sget-object v2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionStateListener count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 734
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;

    if-nez p0, :cond_0

    .line 736
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 739
    :cond_0
    invoke-interface {p0, p1}, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;->onInserted(I)V

    goto :goto_0

    .line 742
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private emitUsbMounted(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 762
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitUsbMounted usbtype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iget-object v2, v2, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitUsbMounted mountPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->instance()Lcom/avn/tools/usb/UsbWatcher;

    move-result-object v0

    monitor-enter v0

    .line 765
    :try_start_0
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 766
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;

    if-nez v1, :cond_0

    .line 769
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 772
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 773
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    invoke-interface {v1, p1, v2}, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;->onMounted(ILjava/util/List;)V

    goto :goto_0

    .line 777
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private emitUsbRemoved(I)V
    .locals 4

    .line 746
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitUsbRemoved usbtype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iget-object v2, v2, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->instance()Lcom/avn/tools/usb/UsbWatcher;

    move-result-object v0

    monitor-enter v0

    .line 748
    :try_start_0
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 749
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;

    if-nez v1, :cond_0

    .line 752
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 755
    :cond_0
    invoke-interface {v1, p1}, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;->onRemoved(I)V

    goto :goto_0

    .line 758
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private findAndroidDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    .line 452
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x18d1

    if-ne v0, v2, :cond_0

    return v1

    .line 455
    :cond_0
    invoke-direct {p0, p1}, Lcom/avn/tools/usb/UsbWatcher;->findAndroidDeviceByInterface(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/avn/tools/usb/UsbWatcher;->findAndroidDeviceByVID(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findAndroidDeviceByInterface(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 468
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 470
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    .line 471
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    .line 472
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 474
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findAndroidDeviceByInterface : true"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_1
    sget-object p1, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "findAndroidDeviceByInterface : false"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private findAndroidDeviceByVID(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x18d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const v1, 0x8087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0xbb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x4e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x22b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x12d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x502

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0xfce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x489

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x413c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x955

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x91e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x4dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x19d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x482

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x10a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x5c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2257

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x4da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x930

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1f53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0xb05

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x471

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0xf1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2420

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1219

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1bbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x17ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const v1, 0xe040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x24e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1d4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0xe79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1662

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x4c5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x25e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2314

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x54c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1949

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1ebf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2237

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2340

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x16d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x19a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x22d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2717

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x19d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2836

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x201e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x109b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0xe8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1d45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x3fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1f3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2a47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2ae5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x271d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2b0e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2a45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2a70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x29a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x1782

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const v1, 0x9bb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2970

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x5e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    const/16 v1, 0x2b4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mAndroidVendorIDs:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 568
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findAndroidDeviceByVID : true"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 571
    :cond_1
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findAndroidDeviceByVID : false"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private findIOSDeviceByVIDPID(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 583
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    const/16 v0, 0x5ac

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    const p1, 0xff00

    and-int/2addr p0, p1

    const/16 p1, 0x1200

    if-ne p0, p1, :cond_0

    .line 585
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findIOSDeviceByVIDPID : true"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 588
    :cond_0
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findIOSDeviceByVIDPID : false"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private findMassStorageByInterface(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 602
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 604
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 606
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findMassStorageByInterface : true"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    sget-object p1, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "findMassStorageByInterface : false"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private findTBoxByVID(Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    .line 593
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    const/16 p1, 0x525

    if-ne p0, p1, :cond_0

    .line 594
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findTBoxByVID : true"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 597
    :cond_0
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findTBoxByVID : false"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private findUnsupportedDeviceByPID(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    .line 623
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 624
    new-instance v1, Lcom/avn/tools/usb/UsbWatcher$1VPID;

    const/16 v2, 0xb95

    const/16 v3, 0x1790

    invoke-direct {v1, p0, v2, v3}, Lcom/avn/tools/usb/UsbWatcher$1VPID;-><init>(Lcom/avn/tools/usb/UsbWatcher;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v1, Lcom/avn/tools/usb/UsbWatcher$1VPID;

    const/16 v2, 0x46d

    const/16 v3, 0x8c9

    invoke-direct {v1, p0, v2, v3}, Lcom/avn/tools/usb/UsbWatcher$1VPID;-><init>(Lcom/avn/tools/usb/UsbWatcher;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance v1, Lcom/avn/tools/usb/UsbWatcher$1VPID;

    const/16 v2, 0x45e

    const/16 v3, 0x719

    invoke-direct {v1, p0, v2, v3}, Lcom/avn/tools/usb/UsbWatcher$1VPID;-><init>(Lcom/avn/tools/usb/UsbWatcher;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v1, Lcom/avn/tools/usb/UsbWatcher$1VPID;

    const/16 v3, 0x84

    invoke-direct {v1, p0, v2, v3}, Lcom/avn/tools/usb/UsbWatcher$1VPID;-><init>(Lcom/avn/tools/usb/UsbWatcher;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v1, Lcom/avn/tools/usb/UsbWatcher$1VPID;

    const/16 v2, 0x1a0a

    const/16 v3, 0x201

    invoke-direct {v1, p0, v2, v3}, Lcom/avn/tools/usb/UsbWatcher$1VPID;-><init>(Lcom/avn/tools/usb/UsbWatcher;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v1, Lcom/avn/tools/usb/UsbWatcher$1VPID;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-direct {v1, p0, v2, p1}, Lcom/avn/tools/usb/UsbWatcher$1VPID;-><init>(Lcom/avn/tools/usb/UsbWatcher;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 631
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findUnsupportedDeviceByPID : true"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 634
    :cond_0
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findUnsupportedDeviceByPID : false"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private findUsbHubByInterface(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 439
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 441
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 443
    sget-object p0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string p1, "findUsbHubByInterface : true"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_1
    sget-object p1, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v0, "findUsbHubByInterface : false"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getDeviceNum(I)I
    .locals 2

    .line 368
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->sysDevPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "devnum"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 373
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 375
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 382
    :try_start_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return p1

    :catch_1
    move-exception p0

    .line 387
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return p1
.end method

.method private getSerialNumber(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 639
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz p0, :cond_0

    .line 640
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static instance()Lcom/avn/tools/usb/UsbWatcher;
    .locals 1

    .line 111
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->mInstance:Lcom/avn/tools/usb/UsbWatcher;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbInsertReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.MEDIA_PREMOUNT"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbMountReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbInsertReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbMountReceiver:Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addConnectionListener(Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;)V
    .locals 3

    .line 115
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->instance()Lcom/avn/tools/usb/UsbWatcher;

    move-result-object v0

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;

    if-ne p1, v2, :cond_0

    .line 118
    monitor-exit v0

    return-void

    .line 121
    :cond_1
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCategory(I)I
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 221
    :cond_0
    iget p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    return p0
.end method

.method public getConnectionState(I)I
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 197
    :cond_0
    iget p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    return p0
.end method

.method public getMountedPaths(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    if-nez p0, :cond_0

    .line 235
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->mountedPaths:Ljava/util/List;

    return-object p0
.end method

.method public getPid(I)I
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 213
    :cond_0
    iget p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->productId:I

    return p0
.end method

.method public getSerialNumber(I)Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getUid(I)Ljava/lang/String;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVid(I)I
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_0
    iget p0, p0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->vendorId:I

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 9

    .line 138
    sget-object v0, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object p1, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    .line 141
    invoke-direct {p0}, Lcom/avn/tools/usb/UsbWatcher;->registerReceiver()V

    .line 143
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const-string v3, "usb1"

    invoke-direct {v2, v3}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    sget-object v1, Lcom/avn/tools/usb/UsbWatcher;->USB1_SYS_DEVICE_PATH:Ljava/lang/String;

    iput-object v1, p1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->sysDevPath:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    const-string v4, "usb2"

    invoke-direct {v3, v4}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    sget-object v2, Lcom/avn/tools/usb/UsbWatcher;->USB2_SYS_DEVICE_PATH:Ljava/lang/String;

    iput-object v2, p1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->sysDevPath:Ljava/lang/String;

    .line 149
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 150
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 151
    sget-object v2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbDeviceList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 153
    sget-object v4, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsbDevice : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 157
    sget-object v4, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "device id: %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_2

    .line 162
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    if-ne v4, v0, :cond_3

    move v4, v1

    .line 168
    :goto_2
    sget-object v5, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "device usbType: %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v5, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    .line 170
    invoke-virtual {v5}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->isInserted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    sget-object v6, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "%s inserted!"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v6, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbDeviceMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iput v0, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    .line 174
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    iput v6, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->devideId:I

    .line 175
    invoke-direct {p0, v4, v2}, Lcom/avn/tools/usb/UsbWatcher;->checkCategory(ILandroid/hardware/usb/UsbDevice;)V

    .line 176
    sget-object v4, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v7, v6, v3

    iget v7, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "%s category: %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, v2}, Lcom/avn/tools/usb/UsbWatcher;->getSerialNumber(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->serialNumber:Ljava/lang/String;

    .line 178
    sget-object v2, Lcom/avn/tools/usb/UsbWatcher;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v6, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v6, v4, v3

    iget-object v3, v5, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->serialNumber:Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v3, "%s serialNumber: %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    return-void

    .line 182
    :cond_4
    invoke-direct {p0, v3}, Lcom/avn/tools/usb/UsbWatcher;->checkMounted(Z)V

    return-void
.end method

.method public removeConnectionListener(Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->instance()Lcom/avn/tools/usb/UsbWatcher;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 128
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;

    if-ne p1, v1, :cond_0

    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 134
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public uninit()V
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/avn/tools/usb/UsbWatcher;->unRegisterReceiver()V

    .line 187
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mDeviceInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mUsbDeviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/avn/tools/usb/UsbWatcher;->mContext:Landroid/content/Context;

    return-void
.end method
