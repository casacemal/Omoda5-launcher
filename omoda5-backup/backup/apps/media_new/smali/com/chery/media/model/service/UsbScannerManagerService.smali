.class public Lcom/chery/media/model/service/UsbScannerManagerService;
.super Landroid/app/Service;
.source "UsbScannerManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final USB_SCAN_COMPLETED:I = 0x23

.field public static final USB_SCAN_INCOMPLETE:I = 0x25

.field public static final USB_SCAN_IN_PROGRESS:I = 0x22

.field public static final USB_SCAN_NONE:I = 0x20

.field public static final USB_SCAN_STARTED:I = 0x21

.field public static final USB_SCAN_TIMEOUT:I = 0x24


# instance fields
.field private attachedDeviceId:I

.field private handler:Landroid/os/Handler;

.field private isMounted:Z

.field private mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/chery/media/IMediaServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mountPath:Ljava/lang/String;

.field private scanStatus:I

.field private stub:Lcom/chery/media/IMediaService$Stub;

.field private usbDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private usbScannerManager:Lcom/chery/media/util/DumpUsbScannerManager;

.field private usbWatcher:Lcom/avn/tools/usb/UsbWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-class v0, Lcom/chery/media/model/service/UsbScannerManagerService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->attachedDeviceId:I

    .line 52
    iput-boolean v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->isMounted:Z

    const/16 v0, 0x20

    .line 54
    iput v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->scanStatus:I

    .line 56
    new-instance v0, Lcom/chery/media/model/service/UsbScannerManagerService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UsbScannerManagerService$1;-><init>(Lcom/chery/media/model/service/UsbScannerManagerService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->stub:Lcom/chery/media/IMediaService$Stub;

    .line 82
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/service/UsbScannerManagerService;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->isMounted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/model/service/UsbScannerManagerService;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mountPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/model/service/UsbScannerManagerService;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->scanStatus:I

    return p0
.end method

.method static synthetic access$300(Lcom/chery/media/model/service/UsbScannerManagerService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/model/service/UsbScannerManagerService;)Lcom/chery/media/util/DumpUsbScannerManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbScannerManager:Lcom/chery/media/util/DumpUsbScannerManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/model/service/UsbScannerManagerService;ILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/service/UsbScannerManagerService;->setScanStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/model/service/UsbScannerManagerService;ZLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/service/UsbScannerManagerService;->setMounted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/chery/media/model/service/UsbScannerManagerService;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->attachedDeviceId:I

    return p0
.end method

.method static synthetic access$802(Lcom/chery/media/model/service/UsbScannerManagerService;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->attachedDeviceId:I

    return p1
.end method

.method private checkAttachedDevice()V
    .locals 5

    .line 245
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    const-string v1, "checkAttachedDevice"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "usb"

    .line 246
    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/UsbScannerManagerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 247
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbDeviceList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 250
    sget-object v2, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbDevice : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 251
    :goto_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 252
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 253
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    const-string v2, "find mass storage device"

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->attachedDeviceId:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkMountedDevice()V
    .locals 12

    .line 262
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    const-string v1, "checkMountedDevice"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "storage"

    .line 263
    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/UsbScannerManagerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 265
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 271
    :cond_0
    :try_start_0
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v5, "getVolumeList"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;

    .line 277
    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    check-cast v0, [Landroid/os/storage/StorageVolume;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_2

    .line 284
    sget-object p0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    const-string v0, "can not get storage volumes"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 287
    :cond_2
    sget-object v1, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StorageVolume size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 299
    :try_start_2
    const-class v5, Landroid/os/storage/StorageVolume;

    const-string v6, "getId"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 300
    const-class v6, Landroid/os/storage/StorageVolume;

    const-string v7, "getPath"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    new-array v7, v4, [Ljava/lang/Object;

    .line 306
    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    .line 307
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6

    .line 313
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_4

    .line 314
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    .line 315
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v8

    .line 316
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 323
    :cond_4
    :try_start_4
    const-class v7, Landroid/os/storage/StorageVolume;

    const-string v8, "isRemovable"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    .line 324
    :try_start_5
    const-class v8, Landroid/os/storage/StorageVolume;

    const-string v9, "getUuid"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    .line 325
    :try_start_6
    const-class v9, Landroid/os/storage/StorageVolume;

    const-string v10, "getState"

    new-array v11, v4, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_2

    :catch_3
    move-exception v9

    move-object v8, v3

    goto :goto_2

    :catch_4
    move-exception v9

    move-object v7, v3

    move-object v8, v7

    .line 327
    :goto_2
    invoke-virtual {v9}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v9, v3

    :goto_3
    :try_start_7
    new-array v10, v4, [Ljava/lang/Object;

    .line 330
    invoke-virtual {v7, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-array v10, v4, [Ljava/lang/Object;

    .line 331
    invoke-virtual {v8, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-array v10, v4, [Ljava/lang/Object;

    .line 332
    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_5

    .line 339
    :goto_4
    sget-object v9, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMounted id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v5, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkMounted isRemovable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v5, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkMounted mountedUuid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v5, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkMounted mountedState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget-object v5, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkMounted mountedPath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    const-string v0, "mounted"

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 348
    invoke-direct {p0, v0, v6}, Lcom/chery/media/model/service/UsbScannerManagerService;->setMounted(ZLjava/lang/String;)V

    goto :goto_5

    :catch_5
    move-exception p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return-void

    :catch_6
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return-void

    :catch_7
    move-exception p0

    .line 302
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_5
    :goto_5
    return-void
.end method

.method private emitMounted()V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 196
    iget-boolean v1, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->isMounted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/chery/media/IMediaServiceListener;

    iget-object v4, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mountPath:Ljava/lang/String;

    iget v5, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->attachedDeviceId:I

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-interface {v3, v4, v5}, Lcom/chery/media/IMediaServiceListener;->onUsbMounted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 208
    :try_start_1
    iget-object v1, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/chery/media/IMediaServiceListener;

    invoke-interface {v1}, Lcom/chery/media/IMediaServiceListener;->onUsbUnMounted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 211
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 214
    :cond_2
    :goto_3
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private emitScanStatusChanged()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/chery/media/IMediaServiceListener;

    iget v3, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->scanStatus:I

    invoke-interface {v2, v3}, Lcom/chery/media/IMediaServiceListener;->onUSbScanStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mediaServiceListenerRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private setMounted(ZLjava/lang/String;)V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->isMounted:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/chery/media/model/service/UsbScannerManagerService;->setScanStatus(ILjava/lang/String;)V

    .line 187
    :cond_1
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-boolean p1, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->isMounted:Z

    .line 189
    iput-object p2, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->mountPath:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->emitMounted()V

    return-void
.end method

.method private setScanStatus(ILjava/lang/String;)V
    .locals 2

    .line 218
    iget v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->scanStatus:I

    if-ne p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 223
    invoke-direct {p0, v0, p2}, Lcom/chery/media/model/service/UsbScannerManagerService;->setMounted(ZLjava/lang/String;)V

    .line 226
    :cond_1
    sget-object p2, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScanStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput p1, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->scanStatus:I

    .line 229
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->emitScanStatusChanged()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->stub:Lcom/chery/media/IMediaService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 86
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->handler:Landroid/os/Handler;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbScannerManager:Lcom/chery/media/util/DumpUsbScannerManager;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-direct {v0, p0}, Lcom/chery/media/util/DumpUsbScannerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbScannerManager:Lcom/chery/media/util/DumpUsbScannerManager;

    .line 95
    new-instance v1, Lcom/chery/media/model/service/UsbScannerManagerService$2;

    invoke-direct {v1, p0}, Lcom/chery/media/model/service/UsbScannerManagerService$2;-><init>(Lcom/chery/media/model/service/UsbScannerManagerService;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/util/DumpUsbScannerManager;->addServiceListener(Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;)V

    .line 108
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbScannerManager:Lcom/chery/media/util/DumpUsbScannerManager;

    new-instance v1, Lcom/chery/media/model/service/UsbScannerManagerService$3;

    invoke-direct {v1, p0}, Lcom/chery/media/model/service/UsbScannerManagerService$3;-><init>(Lcom/chery/media/model/service/UsbScannerManagerService;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/util/DumpUsbScannerManager;->addUsbScannerListener(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbScannerManager:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-virtual {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->connect()V

    .line 137
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->checkAttachedDevice()V

    .line 138
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachedDeviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->attachedDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lcom/chery/media/model/service/UsbScannerManagerService$4;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UsbScannerManagerService$4;-><init>(Lcom/chery/media/model/service/UsbScannerManagerService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbDeviceReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/chery/media/model/service/UsbScannerManagerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->checkMountedDevice()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 166
    sget-object v0, Lcom/chery/media/model/service/UsbScannerManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbScannerManager:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-virtual {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->disconnect()V

    .line 169
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService;->usbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/UsbScannerManagerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
