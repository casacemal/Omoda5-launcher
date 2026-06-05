.class public Lcom/android/car/garagemode/GarageModeService;
.super Ljava/lang/Object;
.source "GarageModeService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final LOG:Lcom/android/car/garagemode/Logger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/car/garagemode/Controller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/android/car/garagemode/Logger;

    const-string v1, "Service"

    invoke-direct {v0, v1}, Lcom/android/car/garagemode/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/garagemode/GarageModeService;->LOG:Lcom/android/car/garagemode/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/garagemode/GarageModeService;-><init>(Landroid/content/Context;Lcom/android/car/garagemode/Controller;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/car/garagemode/Controller;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/car/garagemode/Controller;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/car/garagemode/GarageModeService;->mContext:Landroid/content/Context;

    .line 45
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/android/car/garagemode/Controller;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/car/garagemode/Controller;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    .line 47
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 71
    iget-object v0, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v0}, Lcom/android/car/garagemode/Controller;->isGarageModeActive()Z

    move-result v0

    .line 72
    .local v0, "isActive":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GarageModeInProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v1}, Lcom/android/car/garagemode/Controller;->pendingGarageModeJobs()Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, " jobs:"

    if-eqz v0, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GarageMode is currently waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GarageMode was last waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    :goto_0
    const/4 v2, 0x1

    .line 81
    .local v2, "jobNumber":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v4, "job":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    nop

    .end local v4    # "job":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    return-void
.end method

.method public forceStartGarageMode()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Controller;->initiateGarageMode(Ljava/util/concurrent/CompletableFuture;)V

    .line 99
    return-void
.end method

.method public init()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v0}, Lcom/android/car/garagemode/Controller;->init()V

    .line 55
    return-void
.end method

.method public isGarageModeActive()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v0}, Lcom/android/car/garagemode/Controller;->isGarageModeActive()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v0}, Lcom/android/car/garagemode/Controller;->release()V

    .line 63
    return-void
.end method

.method public stopAndResetGarageMode()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/car/garagemode/GarageModeService;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v0}, Lcom/android/car/garagemode/Controller;->resetGarageMode()V

    .line 106
    return-void
.end method
