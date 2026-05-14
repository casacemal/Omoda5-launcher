.class public Lcom/chery/media/model/service/MediaService;
.super Landroidx/lifecycle/LifecycleService;
.source "MediaService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/chery/media/model/service/MediaService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/MediaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/chery/media/model/service/MediaService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroidx/lifecycle/LifecycleService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 39
    invoke-static {}, Lcom/chery/media/util/PowerWakeLockUse;->getInstance()Lcom/chery/media/util/PowerWakeLockUse;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/util/PowerWakeLockUse;->init(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailClient;->getInstance()Lcom/chery/media/model/business/ThumbnailClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/ThumbnailClient;->init(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/chery/media/model/business/UtilsClient;->getInstance()Lcom/chery/media/model/business/UtilsClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UtilsClient;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/MediaBusiness;->init(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UsbScannerBusiness;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/RadioBusiness;->init(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->init(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->init(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/BtMusicBusiness;->init(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/VideoBusiness;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/chery/media/model/business/PictureBusiness;->getInstance()Lcom/chery/media/model/business/PictureBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/PictureBusiness;->init(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/chery/media/model/business/HardKeyBusiness;->getInstance()Lcom/chery/media/model/business/HardKeyBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/HardKeyBusiness;->init(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/DabBusiness;->init(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/service/MediaService$1;

    invoke-direct {v1, p0}, Lcom/chery/media/model/service/MediaService$1;-><init>(Lcom/chery/media/model/service/MediaService;)V

    invoke-virtual {v0, p0, v1}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->initVr(Landroid/content/Context;Lcom/chery/libvr/bean/InitListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    return-void
.end method
