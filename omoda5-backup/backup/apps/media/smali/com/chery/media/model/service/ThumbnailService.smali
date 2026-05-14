.class public Lcom/chery/media/model/service/ThumbnailService;
.super Landroid/app/Service;
.source "ThumbnailService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private stub:Lcom/chery/media/IThumbnailServiceAidlInterface$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/media/model/service/ThumbnailService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/ThumbnailService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/chery/media/model/service/ThumbnailService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/ThumbnailService$1;-><init>(Lcom/chery/media/model/service/ThumbnailService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/ThumbnailService;->stub:Lcom/chery/media/IThumbnailServiceAidlInterface$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/chery/media/model/service/ThumbnailService;->stub:Lcom/chery/media/IThumbnailServiceAidlInterface$Stub;

    return-object p0
.end method
