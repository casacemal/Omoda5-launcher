.class public Lcom/chery/setting/BrightnessAIDLTool;
.super Ljava/lang/Object;
.source "BrightnessAIDLTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/setting/BrightnessAIDLTool;


# instance fields
.field private brightnessInterface:Lcom/chery/settings/IBrightnessInterface;

.field private brightnessListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;",
            ">;"
        }
    .end annotation
.end field

.field protected callback:Lcom/chery/settings/IBrightnessCallback$Stub;

.field private context:Landroid/content/Context;

.field private isInit:Z

.field serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/setting/BrightnessAIDLTool;

    const-string v1, "SET"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/setting/BrightnessAIDLTool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->isInit:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessListeners:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/chery/setting/BrightnessAIDLTool$1;

    invoke-direct {v0, p0}, Lcom/chery/setting/BrightnessAIDLTool$1;-><init>(Lcom/chery/setting/BrightnessAIDLTool;)V

    iput-object v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->serviceConnection:Landroid/content/ServiceConnection;

    .line 90
    new-instance v0, Lcom/chery/setting/BrightnessAIDLTool$2;

    invoke-direct {v0, p0}, Lcom/chery/setting/BrightnessAIDLTool$2;-><init>(Lcom/chery/setting/BrightnessAIDLTool;)V

    iput-object v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->callback:Lcom/chery/settings/IBrightnessCallback$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/chery/setting/BrightnessAIDLTool;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/setting/BrightnessAIDLTool;)Lcom/chery/settings/IBrightnessInterface;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessInterface:Lcom/chery/settings/IBrightnessInterface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chery/setting/BrightnessAIDLTool;Lcom/chery/settings/IBrightnessInterface;)Lcom/chery/settings/IBrightnessInterface;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessInterface:Lcom/chery/settings/IBrightnessInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/setting/BrightnessAIDLTool;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessListeners:Ljava/util/List;

    return-object p0
.end method

.method private bindService()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.chery.settings"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.chery.settings.model.service.BrightnessServer"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/chery/setting/BrightnessAIDLTool;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/chery/setting/BrightnessAIDLTool;
    .locals 1

    .line 29
    sget-object v0, Lcom/chery/setting/BrightnessAIDLTool;->instance:Lcom/chery/setting/BrightnessAIDLTool;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/chery/setting/BrightnessAIDLTool;

    invoke-direct {v0}, Lcom/chery/setting/BrightnessAIDLTool;-><init>()V

    sput-object v0, Lcom/chery/setting/BrightnessAIDLTool;->instance:Lcom/chery/setting/BrightnessAIDLTool;

    .line 32
    :cond_0
    sget-object v0, Lcom/chery/setting/BrightnessAIDLTool;->instance:Lcom/chery/setting/BrightnessAIDLTool;

    return-object v0
.end method


# virtual methods
.method public addBrightnessListener(Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBrightness()I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessInterface:Lcom/chery/settings/IBrightnessInterface;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->isInit:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/chery/setting/BrightnessAIDLTool;->bindService()V

    :cond_0
    return v1

    .line 122
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/chery/settings/IBrightnessInterface;->getBrightness()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/chery/setting/BrightnessAIDLTool;->context:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/chery/setting/BrightnessAIDLTool;->bindService()V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/chery/setting/BrightnessAIDLTool;->isInit:Z

    return-void
.end method

.method public removeBrightnessListener(Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBrightness(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/chery/setting/BrightnessAIDLTool;->brightnessInterface:Lcom/chery/settings/IBrightnessInterface;

    if-nez v0, :cond_1

    .line 102
    iget-boolean p1, p0, Lcom/chery/setting/BrightnessAIDLTool;->isInit:Z

    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/chery/setting/BrightnessAIDLTool;->bindService()V

    :cond_0
    return-void

    .line 108
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/chery/settings/IBrightnessInterface;->setBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
