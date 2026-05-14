.class public Lcom/chery/media/UsbScannerManagerTool;
.super Ljava/lang/Object;
.source "UsbScannerManagerTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/UsbScannerManagerTool$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/UsbScannerManagerTool;


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isMounted:Z

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/UsbScannerManagerTool$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaService:Lcom/chery/media/IMediaService;

.field private mountPath:Ljava/lang/String;

.field private scanStatus:I

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/chery/media/UsbScannerManagerTool;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/UsbScannerManagerTool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/UsbScannerManagerTool;->listenerList:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/chery/media/UsbScannerManagerTool;->isMounted:Z

    const/16 v0, 0x20

    .line 50
    iput v0, p0, Lcom/chery/media/UsbScannerManagerTool;->scanStatus:I

    .line 53
    new-instance v0, Lcom/chery/media/UsbScannerManagerTool$1;

    invoke-direct {v0, p0}, Lcom/chery/media/UsbScannerManagerTool$1;-><init>(Lcom/chery/media/UsbScannerManagerTool;)V

    iput-object v0, p0, Lcom/chery/media/UsbScannerManagerTool;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/chery/media/UsbScannerManagerTool;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/UsbScannerManagerTool;)Lcom/chery/media/IMediaService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool;->mediaService:Lcom/chery/media/IMediaService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chery/media/UsbScannerManagerTool;Lcom/chery/media/IMediaService;)Lcom/chery/media/IMediaService;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool;->mediaService:Lcom/chery/media/IMediaService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/media/UsbScannerManagerTool;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/chery/media/UsbScannerManagerTool;->disconnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/UsbScannerManagerTool;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/chery/media/UsbScannerManagerTool;->connect()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/UsbScannerManagerTool;ZLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/chery/media/UsbScannerManagerTool;->setMounted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/UsbScannerManagerTool;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/chery/media/UsbScannerManagerTool;->setScanStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/UsbScannerManagerTool;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool;->listenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/UsbScannerManagerTool;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private connect()V
    .locals 4

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.model.service.UsbScannerManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/chery/media/UsbScannerManagerTool;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/media/UsbScannerManagerTool;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/chery/media/UsbScannerManagerTool;->mediaService:Lcom/chery/media/IMediaService;

    return-void
.end method

.method public static getInstance()Lcom/chery/media/UsbScannerManagerTool;
    .locals 1

    .line 23
    sget-object v0, Lcom/chery/media/UsbScannerManagerTool;->instance:Lcom/chery/media/UsbScannerManagerTool;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/chery/media/UsbScannerManagerTool;

    invoke-direct {v0}, Lcom/chery/media/UsbScannerManagerTool;-><init>()V

    sput-object v0, Lcom/chery/media/UsbScannerManagerTool;->instance:Lcom/chery/media/UsbScannerManagerTool;

    .line 26
    :cond_0
    sget-object v0, Lcom/chery/media/UsbScannerManagerTool;->instance:Lcom/chery/media/UsbScannerManagerTool;

    return-object v0
.end method

.method private setMounted(ZLjava/lang/String;)V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/chery/media/UsbScannerManagerTool;->isMounted:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 167
    :cond_0
    iput-boolean p1, p0, Lcom/chery/media/UsbScannerManagerTool;->isMounted:Z

    .line 168
    iput-object p2, p0, Lcom/chery/media/UsbScannerManagerTool;->mountPath:Ljava/lang/String;

    return-void
.end method

.method private setScanStatus(I)V
    .locals 1

    .line 180
    iget v0, p0, Lcom/chery/media/UsbScannerManagerTool;->scanStatus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 183
    :cond_0
    iput p1, p0, Lcom/chery/media/UsbScannerManagerTool;->scanStatus:I

    return-void
.end method


# virtual methods
.method public addListener(Lcom/chery/media/UsbScannerManagerTool$Listener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool;->listenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getMountPath()Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool;->mountPath:Ljava/lang/String;

    return-object p0
.end method

.method public getScanStatus()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/chery/media/UsbScannerManagerTool;->scanStatus:I

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 146
    sget-object v0, Lcom/chery/media/UsbScannerManagerTool;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool;->context:Landroid/content/Context;

    .line 148
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool;->handler:Landroid/os/Handler;

    .line 149
    invoke-direct {p0}, Lcom/chery/media/UsbScannerManagerTool;->connect()V

    return-void
.end method

.method public isMounted()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/chery/media/UsbScannerManagerTool;->isMounted:Z

    return p0
.end method

.method public removeListener(Lcom/chery/media/UsbScannerManagerTool$Listener;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool;->listenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
