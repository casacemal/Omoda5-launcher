.class public Lcom/chery/media/TunerAIDLTool;
.super Ljava/lang/Object;
.source "TunerAIDLTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/TunerAIDLTool$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/TunerAIDLTool;


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/TunerAIDLTool$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private m_area:I

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private tunerService:Lcom/chery/media/ITunerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-class v0, Lcom/chery/media/TunerAIDLTool;

    const-string v1, "TUNER"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/TunerAIDLTool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/chery/media/TunerAIDLTool;->m_area:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/TunerAIDLTool;->listenerList:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/chery/media/TunerAIDLTool$1;

    invoke-direct {v0, p0}, Lcom/chery/media/TunerAIDLTool$1;-><init>(Lcom/chery/media/TunerAIDLTool;)V

    iput-object v0, p0, Lcom/chery/media/TunerAIDLTool;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/chery/media/TunerAIDLTool;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/TunerAIDLTool;)Lcom/chery/media/ITunerInterface;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->tunerService:Lcom/chery/media/ITunerInterface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chery/media/TunerAIDLTool;Lcom/chery/media/ITunerInterface;)Lcom/chery/media/ITunerInterface;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/chery/media/TunerAIDLTool;->tunerService:Lcom/chery/media/ITunerInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/media/TunerAIDLTool;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/chery/media/TunerAIDLTool;->setRegion(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/TunerAIDLTool;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->listenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/TunerAIDLTool;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/TunerAIDLTool;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/chery/media/TunerAIDLTool;->connService()V

    return-void
.end method

.method private connService()V
    .locals 4

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.model.service.RadioAIDLService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/chery/media/TunerAIDLTool;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/chery/media/TunerAIDLTool;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/TunerAIDLTool;->instance:Lcom/chery/media/TunerAIDLTool;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/chery/media/TunerAIDLTool;

    invoke-direct {v0}, Lcom/chery/media/TunerAIDLTool;-><init>()V

    sput-object v0, Lcom/chery/media/TunerAIDLTool;->instance:Lcom/chery/media/TunerAIDLTool;

    .line 29
    :cond_0
    sget-object v0, Lcom/chery/media/TunerAIDLTool;->instance:Lcom/chery/media/TunerAIDLTool;

    return-object v0
.end method

.method private setRegion(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/chery/media/TunerAIDLTool;->m_area:I

    return-void
.end method


# virtual methods
.method public addListener(Lcom/chery/media/TunerAIDLTool$Listener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/chery/media/TunerAIDLTool;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->listenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getArea()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/chery/media/TunerAIDLTool;->m_area:I

    return p0
.end method

.method public getBand()I
    .locals 0

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->tunerService:Lcom/chery/media/ITunerInterface;

    invoke-interface {p0}, Lcom/chery/media/ITunerInterface;->getBand()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/chery/media/TunerAIDLTool;->context:Landroid/content/Context;

    .line 105
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/TunerAIDLTool;->handler:Landroid/os/Handler;

    .line 106
    invoke-direct {p0}, Lcom/chery/media/TunerAIDLTool;->connService()V

    return-void
.end method

.method public removeListener(Lcom/chery/media/TunerAIDLTool$Listener;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->listenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scanbackward()V
    .locals 0

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->tunerService:Lcom/chery/media/ITunerInterface;

    invoke-interface {p0}, Lcom/chery/media/ITunerInterface;->scanbackward()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public scanforward()V
    .locals 0

    .line 155
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->tunerService:Lcom/chery/media/ITunerInterface;

    invoke-interface {p0}, Lcom/chery/media/ITunerInterface;->scanforward()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAera(I)V
    .locals 0

    .line 117
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->tunerService:Lcom/chery/media/ITunerInterface;

    invoke-interface {p0, p1}, Lcom/chery/media/ITunerInterface;->setAera(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBand(I)V
    .locals 0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool;->tunerService:Lcom/chery/media/ITunerInterface;

    invoke-interface {p0, p1}, Lcom/chery/media/ITunerInterface;->setBand(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
