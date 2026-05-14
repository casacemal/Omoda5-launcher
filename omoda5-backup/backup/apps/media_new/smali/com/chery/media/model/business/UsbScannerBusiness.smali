.class public Lcom/chery/media/model/business/UsbScannerBusiness;
.super Ljava/lang/Object;
.source "UsbScannerBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;,
        Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/UsbScannerBusiness;


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private final rootFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

.field private usbDeviceInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final usbDeviceInfosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final usbMusicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usbPicturesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usbSortedMusicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usbSortedPicturesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usbSortedVideosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usbThreadDelayRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usbThreadHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final usbThreadLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field private final usbThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;",
            ">;"
        }
    .end annotation
.end field

.field private final usbVideosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/chery/media/model/business/UsbScannerBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbMusicsMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbVideosMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbPicturesMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedMusicsMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedVideosMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedPicturesMap:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->rootFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreads:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadHandlers:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadDelayRunnables:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadLocks:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfoListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/UsbScannerBusiness;IZLjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbScannerBusiness;->setUsbMountStatus(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedPicturesMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/chery/media/model/business/UsbScannerBusiness;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->removeFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreads:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadLocks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadDelayRunnables:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbScannerBusiness;->updateScanInfo(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/chery/media/model/business/UsbScannerBusiness;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbScannerBusiness;->addFolderFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbMusicsMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbVideosMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbPicturesMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/chery/media/model/business/UsbScannerBusiness;->updateMediaFiles(ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/Runnable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbScannerBusiness;->addUpdateThreadRunnable(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/UsbScannerBusiness;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedMusicsMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedVideosMap:Ljava/util/Map;

    return-object p0
.end method

.method private addFolder(Ljava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;
    .locals 9

    .line 515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->rootFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    const-string v2, "/"

    .line 519
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 520
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    .line 521
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 525
    :cond_1
    iget-object v6, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 526
    iget-object v8, v7, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_3
    move-object v7, v1

    :goto_1
    if-nez v7, :cond_4

    .line 532
    new-instance v7, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;-><init>(Ljava/lang/String;)V

    .line 533
    iget-object v5, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    new-instance v5, Lcom/chery/media/model/business/UsbScannerBusiness$6;

    invoke-direct {v5, p0}, Lcom/chery/media/model/business/UsbScannerBusiness$6;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness;)V

    invoke-static {v0, v5}, Lcom/chery/media/util/Utils;->sortByCustom(Ljava/util/List;Lcom/chery/media/util/Utils$SortField;)V

    :cond_4
    move-object v0, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private addFolderFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    .line 462
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 463
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "addFolderFiles start, musicInfos size:%s, videoInfos size:%s, pictureInfos size:%s"

    .line 462
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 466
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->dir:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget-object v3, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->dir:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->addFolder(Ljava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->musicInfos:Ljava/util/List;

    goto :goto_1

    .line 480
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 481
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 482
    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->dir:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->dir:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 489
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 490
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->addFolder(Ljava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 492
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->videoInfos:Ljava/util/List;

    goto :goto_3

    .line 496
    :cond_7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 497
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 498
    iget-object v0, p3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->dir:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_8

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    iget-object v1, p3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->dir:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_8
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 505
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 506
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/chery/media/model/business/UsbScannerBusiness;->addFolder(Ljava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 508
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p3, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->pictureInfos:Ljava/util/List;

    goto :goto_5

    .line 511
    :cond_b
    sget-object p0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const-string p1, "addFolderFiles finished"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addUpdateThreadRunnable(ILjava/lang/Runnable;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreads:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreads:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 234
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add update thread for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness;I)V

    .line 236
    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreads:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v0}, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->start()V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadLocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 240
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadDelayRunnables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadLocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;
    .locals 1

    .line 68
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->instance:Lcom/chery/media/model/business/UsbScannerBusiness;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->instance:Lcom/chery/media/model/business/UsbScannerBusiness;

    .line 71
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->instance:Lcom/chery/media/model/business/UsbScannerBusiness;

    return-object v0
.end method

.method private removeFolder(Ljava/lang/String;)V
    .locals 7

    .line 547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->rootFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    const-string v0, "/"

    .line 552
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 553
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v4, p1, v1

    .line 554
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 558
    :cond_1
    iget-object v3, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 559
    iget-object v6, v5, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_4

    return-void

    :cond_4
    move-object v3, p0

    move-object p0, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 571
    iget-object p1, v3, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private setUsbMountStatus(IZLjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    const/16 v0, 0x20

    .line 389
    invoke-direct {p0, p1, p3, v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->updateScanInfo(ILjava/lang/String;I)V

    .line 390
    invoke-static {p1}, Lcom/chery/media/model/business/ThumbnailCache;->getThumbnailCache(I)Lcom/chery/media/model/business/ThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/ThumbnailCache;->clear()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    .line 397
    iget-boolean v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    if-ne p2, v1, :cond_2

    return-void

    .line 400
    :cond_2
    iput-boolean p2, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    .line 401
    iput-object p3, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    .line 402
    sget-object p3, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "setUsbMountStatus : %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    .line 405
    invoke-interface {p3, p1, p2}, Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;->onMountStatusChanged(IZ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateMediaFiles(ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    .line 254
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaFiles:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mountPath:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " scanStatus:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, v1, Lcom/chery/media/model/business/UsbScannerBusiness;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v15, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v15, v9

    const/4 v13, 0x0

    const-string v14, "_data like ?"

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 258
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    const-string v12, "duration"

    const-string v13, "_size"

    const-string v14, "_data"

    if-eqz v11, :cond_1

    .line 259
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 260
    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "title"

    .line 261
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "artist"

    .line 262
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v9, "album"

    .line 263
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 264
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 265
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 267
    new-instance v13, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {v13, v11}, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;-><init>(Ljava/lang/String;)V

    .line 268
    iput-object v14, v13, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    .line 269
    iput-object v15, v13, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    .line 270
    iput-object v9, v13, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->album:Ljava/lang/String;

    .line 271
    iput v12, v13, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->duration:I

    .line 272
    iput-wide v0, v13, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->size:J

    .line 273
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v13}, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v9, v12

    const-string v1, "refresh music %s"

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-interface {v4, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, p0

    .line 280
    iget-object v0, v1, Lcom/chery/media/model/business/UsbScannerBusiness;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v2, v9

    const/16 v22, 0x0

    const-string v20, "_data like ?"

    move-object/from16 v21, v2

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 282
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const-string v9, "height"

    const-string v11, "width"

    const-string v15, "mime_type"

    const-string v4, "_display_name"

    if-eqz v2, :cond_3

    .line 283
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 285
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v18, v13

    move-object/from16 v17, v14

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 287
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 289
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 290
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 292
    new-instance v10, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    invoke-direct {v10, v2}, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;-><init>(Ljava/lang/String;)V

    .line 293
    iput-object v4, v10, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->name:Ljava/lang/String;

    .line 294
    iput-wide v13, v10, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->size:J

    .line 295
    iput-object v5, v10, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->mimeType:Ljava/lang/String;

    .line 296
    iput v15, v10, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->duration:I

    .line 297
    iput v11, v10, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->width:I

    .line 298
    iput v9, v10, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->height:I

    .line 299
    sget-object v4, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const-string v5, "refresh video %s"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-interface {v6, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object/from16 v18, v13

    move-object/from16 v17, v14

    :goto_2
    move/from16 v5, p1

    move/from16 v10, p3

    move-object/from16 v4, p4

    move-object/from16 v14, v17

    move-object/from16 v13, v18

    goto/16 :goto_1

    :cond_3
    move-object/from16 v18, v13

    move-object/from16 v17, v14

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    iget-object v0, v1, Lcom/chery/media/model/business/UsbScannerBusiness;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/16 v24, 0x0

    const-string v22, "_data like ?"

    move-object/from16 v23, v2

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 308
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, v17

    .line 309
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 311
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v10, v18

    .line 312
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 313
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v2

    .line 314
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 315
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v18, v4

    const-string v4, "bmp"

    .line 317
    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "png"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "jpeg"

    .line 318
    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "gif"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 319
    :cond_4
    new-instance v4, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-direct {v4, v5}, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;-><init>(Ljava/lang/String;)V

    .line 320
    iput-object v7, v4, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->name:Ljava/lang/String;

    .line 321
    iput-wide v12, v4, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->size:J

    .line 322
    iput-object v14, v4, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->mimeType:Ljava/lang/String;

    .line 323
    iput v2, v4, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->width:I

    .line 324
    iput v3, v4, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->height:I

    .line 325
    sget-object v2, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v7, v12

    const-string v3, "refresh picture %s"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-interface {v8, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v10, v18

    move-object/from16 v18, v4

    :cond_6
    :goto_4
    move-object/from16 v3, p2

    move-object/from16 v4, v18

    move-object/from16 v18, v10

    goto/16 :goto_3

    .line 331
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 333
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 334
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "refreshMediaFiles, musics:%s videos:%s pictures:%s"

    .line 333
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    new-instance v0, Lcom/chery/media/model/business/UsbScannerBusiness$2;

    invoke-direct {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness$2;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness;)V

    invoke-static {v5, v0}, Lcom/chery/media/util/Utils;->sortByCustom(Ljava/util/List;Lcom/chery/media/util/Utils$SortField;)V

    .line 345
    new-instance v0, Lcom/chery/media/model/business/UsbScannerBusiness$3;

    invoke-direct {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness$3;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness;)V

    invoke-static {v7, v0}, Lcom/chery/media/util/Utils;->sortByCustom(Ljava/util/List;Lcom/chery/media/util/Utils$SortField;)V

    .line 351
    new-instance v0, Lcom/chery/media/model/business/UsbScannerBusiness$4;

    invoke-direct {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness$4;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness;)V

    invoke-static {v9, v0}, Lcom/chery/media/util/Utils;->sortByCustom(Ljava/util/List;Lcom/chery/media/util/Utils$SortField;)V

    .line 358
    iget-object v11, v1, Lcom/chery/media/model/business/UsbScannerBusiness;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/chery/media/model/business/UsbScannerBusiness$5;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/chery/media/model/business/UsbScannerBusiness$5;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;I)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateScanInfo(ILjava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x21

    if-eq p3, v1, :cond_0

    const/16 v1, 0x22

    if-eq p3, v1, :cond_0

    const/16 v1, 0x23

    if-ne p3, v1, :cond_1

    .line 413
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/chery/media/model/business/UsbScannerBusiness;->setUsbMountStatus(IZLjava/lang/String;)V

    .line 416
    :cond_1
    iget-object p2, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 419
    :cond_2
    iget-object p2, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    .line 420
    iput p3, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->scanStatus:I

    .line 421
    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedMusicsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    .line 422
    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedVideosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->videosCount:I

    .line 423
    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedPicturesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->picturesCount:I

    .line 424
    sget-object v1, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "updateScanInfo : %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    .line 427
    invoke-interface {p2, p1, p3}, Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;->onScanInfoUpdate(II)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 576
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    iget-boolean p1, p1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    if-nez p1, :cond_1

    return-object v0

    .line 582
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->rootFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    const-string p1, "/"

    .line 583
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 584
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    aget-object v2, p1, v1

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 589
    :cond_2
    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 590
    iget-object v4, v3, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_5

    return-object v0

    :cond_5
    move-object p0, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object p0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getMusics(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedMusicsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedMusicsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 442
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPictures(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedPicturesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedPicturesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 456
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    return-object p0

    .line 435
    :cond_0
    new-instance p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;-><init>(I)V

    return-object p0
.end method

.method public getVideos(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedVideosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedVideosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 449
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/chery/media/model/business/UsbScannerBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->context:Landroid/content/Context;

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    invoke-direct {v2, p1}, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbMusicsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedMusicsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbVideosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedVideosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbPicturesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbSortedPicturesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreads:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadDelayRunnables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbThreadLocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->getInstance()Lcom/chery/media/UsbScannerManagerTool;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/chery/media/UsbScannerManagerTool;->init(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->getInstance()Lcom/chery/media/UsbScannerManagerTool;

    move-result-object p1

    new-instance v0, Lcom/chery/media/model/business/UsbScannerBusiness$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/UsbScannerBusiness$1;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/UsbScannerManagerTool;->addListener(Lcom/chery/media/UsbScannerManagerTool$Listener;)V

    return-void
.end method

.method public removeUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness;->usbDeviceInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
