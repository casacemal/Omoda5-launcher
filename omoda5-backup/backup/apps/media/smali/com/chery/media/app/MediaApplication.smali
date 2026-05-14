.class public Lcom/chery/media/app/MediaApplication;
.super Landroid/app/Application;
.source "MediaApplication.java"


# static fields
.field private static application:Lcom/chery/media/app/MediaApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApplication()Lcom/chery/media/app/MediaApplication;
    .locals 1

    .line 32
    sget-object v0, Lcom/chery/media/app/MediaApplication;->application:Lcom/chery/media/app/MediaApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    sput-object p0, Lcom/chery/media/app/MediaApplication;->application:Lcom/chery/media/app/MediaApplication;

    .line 22
    invoke-static {}, Lcom/chery/media/app/MediaApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/app/MediaApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/chery/media/util/CarAdapterUse;->init(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/chery/media/app/MediaApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/chery/media/model/service/MediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/chery/media/app/MediaApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/chery/media/model/service/ThumbnailService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/chery/media/app/MediaApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/chery/media/model/service/UtilsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/chery/media/app/MediaApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
