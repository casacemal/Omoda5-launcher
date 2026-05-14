.class public Lcom/chery/media/model/service/EolMediaService;
.super Landroid/app/Service;
.source "EolMediaService.java"


# static fields
.field static final SRC_AM:B = 0x2t

.field static final SRC_BT_AUDIO:B = 0x5t

.field static final SRC_DAB:B = 0x1t

.field static final SRC_FM:B = 0x3t

.field static final SRC_IPOD:B = 0x7t

.field static final SRC_LOCAL_MUSIC:B = 0x6t

.field static final SRC_ONLINE_MUSIC:B = 0x8t

.field static final SRC_UNKNOWN:B = 0x0t

.field static final SRC_USB1_MUSIC:B = 0x4t

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private stub:Lcom/chery/eol/IEolMediaService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/chery/media/model/service/EolMediaService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/EolMediaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/chery/media/model/service/EolMediaService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/EolMediaService$1;-><init>(Lcom/chery/media/model/service/EolMediaService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/EolMediaService;->stub:Lcom/chery/eol/IEolMediaService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/chery/media/model/service/EolMediaService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/chery/media/model/service/EolMediaService;->stub:Lcom/chery/eol/IEolMediaService$Stub;

    return-object p0
.end method
