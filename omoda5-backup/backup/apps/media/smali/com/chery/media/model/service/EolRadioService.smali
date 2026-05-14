.class public Lcom/chery/media/model/service/EolRadioService;
.super Landroid/app/Service;
.source "EolRadioService.java"


# static fields
.field private static final ACTION_setTunerFavorite:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final AM:B

.field private final FM:B

.field private final mHandler:Landroid/os/Handler;

.field private stub:Lcom/chery/eol/IEolRadioService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/chery/media/model/service/EolRadioService;

    const-string v1, "TUNER"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/EolRadioService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-byte v0, p0, Lcom/chery/media/model/service/EolRadioService;->FM:B

    const/4 v0, 0x2

    .line 24
    iput-byte v0, p0, Lcom/chery/media/model/service/EolRadioService;->AM:B

    .line 26
    new-instance v0, Lcom/chery/media/model/service/EolRadioService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/EolRadioService$1;-><init>(Lcom/chery/media/model/service/EolRadioService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/EolRadioService;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/chery/media/model/service/EolRadioService$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/EolRadioService$2;-><init>(Lcom/chery/media/model/service/EolRadioService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/EolRadioService;->stub:Lcom/chery/eol/IEolRadioService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/chery/media/model/service/EolRadioService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/model/service/EolRadioService;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/media/model/service/EolRadioService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/chery/media/model/service/EolRadioService;->stub:Lcom/chery/eol/IEolRadioService$Stub;

    return-object p0
.end method
