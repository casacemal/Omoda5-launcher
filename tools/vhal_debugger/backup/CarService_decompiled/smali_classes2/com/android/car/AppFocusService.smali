.class public Lcom/android/car/AppFocusService;
.super Landroid/car/IAppFocus$Stub;
.source "AppFocusService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/AppFocusService$DispatchHandler;,
        Lcom/android/car/AppFocusService$OwnershipClientInfo;,
        Lcom/android/car/AppFocusService$ClientInfo;,
        Lcom/android/car/AppFocusService$OwnershipClientHolder;,
        Lcom/android/car/AppFocusService$ClientHolder;,
        Lcom/android/car/AppFocusService$FocusOwnershipCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/car/IAppFocus$Stub;",
        "Lcom/android/car/CarServiceBase;",
        "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<",
        "Landroid/car/IAppFocusOwnershipCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_EVENT:Z = false


# instance fields
.field private final mActiveAppTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllBinderEventHandler:Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<",
            "Landroid/car/IAppFocusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

.field private final mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

.field private mDispatchHandler:Lcom/android/car/AppFocusService$DispatchHandler;

.field private final mFocusOwners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/AppFocusService$OwnershipClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusOwnershipCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/AppFocusService$FocusOwnershipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemActivityMonitoringService"    # Lcom/android/car/SystemActivityMonitoringService;

    .line 61
    invoke-direct {p0}, Landroid/car/IAppFocus$Stub;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mActiveAppTypes:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwnershipCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    sget-object v0, Lcom/android/car/-$$Lambda$AppFocusService$AiDDPZgEZaDV_-UI2aNW_sgF2_U;->INSTANCE:Lcom/android/car/-$$Lambda$AppFocusService$AiDDPZgEZaDV_-UI2aNW_sgF2_U;

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mAllBinderEventHandler:Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;

    .line 62
    iput-object p2, p0, Lcom/android/car/AppFocusService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 63
    new-instance v0, Lcom/android/car/AppFocusService$ClientHolder;

    iget-object v1, p0, Lcom/android/car/AppFocusService;->mAllBinderEventHandler:Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/AppFocusService$ClientHolder;-><init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;Lcom/android/car/AppFocusService$1;)V

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    .line 64
    new-instance v0, Lcom/android/car/AppFocusService$OwnershipClientHolder;

    invoke-direct {v0, p0, v2}, Lcom/android/car/AppFocusService$OwnershipClientHolder;-><init>(Lcom/android/car/AppFocusService;Lcom/android/car/AppFocusService$1;)V

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    .line 65
    return-void
.end method

.method static synthetic access$1600(Lcom/android/car/AppFocusService;Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AppFocusService;
    .param p1, "x1"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/car/AppFocusService;->dispatchAppFocusOwnershipLoss(Landroid/car/IAppFocusOwnershipCallback;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/AppFocusService;Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AppFocusService;
    .param p1, "x1"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/car/AppFocusService;->dispatchAppFocusOwnershipGrant(Landroid/car/IAppFocusOwnershipCallback;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/car/AppFocusService;Landroid/car/IAppFocusListener;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AppFocusService;
    .param p1, "x1"    # Landroid/car/IAppFocusListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/AppFocusService;->dispatchAppFocusChange(Landroid/car/IAppFocusListener;IZ)V

    return-void
.end method

.method private dispatchAppFocusChange(Landroid/car/IAppFocusListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/car/IAppFocusListener;
    .param p2, "appType"    # I
    .param p3, "active"    # Z

    .line 335
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/car/IAppFocusListener;->onAppFocusChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 338
    :goto_0
    return-void
.end method

.method private dispatchAppFocusOwnershipGrant(Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "appType"    # I

    .line 328
    :try_start_0
    invoke-interface {p1, p2}, Landroid/car/IAppFocusOwnershipCallback;->onAppFocusOwnershipGranted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 331
    :goto_0
    return-void
.end method

.method private dispatchAppFocusOwnershipLoss(Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "appType"    # I

    .line 321
    :try_start_0
    invoke-interface {p1, p2}, Landroid/car/IAppFocusOwnershipCallback;->onAppFocusOwnershipLost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 324
    :goto_0
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .locals 0
    .param p0, "bInterface"    # Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 55
    return-void
.end method

.method private static toIntArray(Ljava/util/Set;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 486
    .local p0, "intSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 487
    .local v0, "intArr":[I
    const/4 v1, 0x0

    .line 488
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 489
    .local v3, "value":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 490
    .end local v3    # "value":Ljava/lang/Integer;
    move v1, v4

    goto :goto_0

    .line 491
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method private updateFocusOwner(ILcom/android/car/AppFocusService$OwnershipClientInfo;)V
    .locals 1
    .param p1, "appType"    # I
    .param p2, "owner"    # Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 308
    new-instance v0, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;-><init>(Lcom/android/car/AppFocusService;ILcom/android/car/AppFocusService$OwnershipClientInfo;)V

    invoke-static {v0}, Lcom/android/car/CarServiceUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method


# virtual methods
.method public abandonAppFocus(Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 8
    .param p1, "callback"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "appType"    # I

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    .line 175
    invoke-virtual {v0, p1}, Lcom/android/car/AppFocusService$OwnershipClientHolder;->getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    move-result-object v0

    check-cast v0, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 176
    .local v0, "info":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    if-nez v0, :cond_0

    .line 178
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/car/AppFocusService;->mActiveAppTypes:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    monitor-exit p0

    return-void

    .line 184
    :cond_1
    invoke-static {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$600(Lcom/android/car/AppFocusService$OwnershipClientInfo;)Ljava/util/Set;

    move-result-object v1

    .line 185
    .local v1, "currentlyOwnedAppTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    monitor-exit p0

    return-void

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 190
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mActiveAppTypes:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$800(Lcom/android/car/AppFocusService$OwnershipClientInfo;Ljava/lang/Integer;)Z

    .line 196
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mFocusOwnershipCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/AppFocusService$FocusOwnershipCallback;

    .line 197
    .local v3, "ownershipCallback":Lcom/android/car/AppFocusService$FocusOwnershipCallback;
    invoke-static {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$1300(Lcom/android/car/AppFocusService$OwnershipClientInfo;)I

    move-result v4

    invoke-static {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$1400(Lcom/android/car/AppFocusService$OwnershipClientInfo;)I

    move-result v5

    invoke-interface {v3, p2, v4, v5}, Lcom/android/car/AppFocusService$FocusOwnershipCallback;->onFocusAbandoned(III)V

    .line 198
    .end local v3    # "ownershipCallback":Lcom/android/car/AppFocusService$FocusOwnershipCallback;
    goto :goto_0

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-virtual {v2}, Lcom/android/car/AppFocusService$ClientHolder;->getInterfaces()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 201
    .local v3, "client":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/IAppFocusListener;>;"
    move-object v4, v3

    check-cast v4, Lcom/android/car/AppFocusService$ClientInfo;

    .line 202
    .local v4, "clientInfo":Lcom/android/car/AppFocusService$ClientInfo;
    invoke-static {v4}, Lcom/android/car/AppFocusService$ClientInfo;->access$500(Lcom/android/car/AppFocusService$ClientInfo;)Ljava/util/Set;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    iget-object v5, p0, Lcom/android/car/AppFocusService;->mDispatchHandler:Lcom/android/car/AppFocusService$DispatchHandler;

    iget-object v6, v4, Lcom/android/car/AppFocusService$ClientInfo;->binderInterface:Landroid/os/IInterface;

    check-cast v6, Landroid/car/IAppFocusListener;

    const/4 v7, 0x0

    invoke-static {v5, v6, p2, v7}, Lcom/android/car/AppFocusService$DispatchHandler;->access$1200(Lcom/android/car/AppFocusService$DispatchHandler;Landroid/car/IAppFocusListener;IZ)V

    .line 206
    .end local v3    # "client":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/IAppFocusListener;>;"
    .end local v4    # "clientInfo":Lcom/android/car/AppFocusService$ClientInfo;
    :cond_4
    goto :goto_1

    .line 208
    .end local v0    # "info":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    .end local v1    # "currentlyOwnedAppTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    monitor-exit p0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 248
    const-string v0, "**AppFocusService**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveAppTypes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/AppFocusService;->mActiveAppTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientHolder;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 253
    .local v1, "client":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/IAppFocusOwnershipCallback;>;"
    move-object v2, v1

    check-cast v2, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 254
    .local v2, "clientInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    invoke-virtual {v2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .end local v1    # "client":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/IAppFocusOwnershipCallback;>;"
    .end local v2    # "clientInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    goto :goto_0

    .line 256
    :cond_0
    monitor-exit p0

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveAppTypes()[I
    .locals 1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mActiveAppTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/car/AppFocusService;->toIntArray(Ljava/util/Set;)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 3

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/car/AppFocusService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 215
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 216
    new-instance v0, Lcom/android/car/AppFocusService$DispatchHandler;

    iget-object v1, p0, Lcom/android/car/AppFocusService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/car/AppFocusService$DispatchHandler;-><init>(Lcom/android/car/AppFocusService;Landroid/os/Looper;Lcom/android/car/AppFocusService$1;)V

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mDispatchHandler:Lcom/android/car/AppFocusService$DispatchHandler;

    .line 217
    monitor-exit p0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFocusOwner(III)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "appType"    # I

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 266
    .local v0, "clientInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getPid()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 268
    .end local v0    # "clientInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    :cond_1
    monitor-exit p0

    .line 269
    return v1

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOwningFocus(Landroid/car/IAppFocusOwnershipCallback;I)Z
    .locals 3
    .param p1, "callback"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "appType"    # I

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/car/AppFocusService$OwnershipClientHolder;->getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    move-result-object v0

    check-cast v0, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 107
    .local v0, "info":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 110
    :cond_0
    invoke-static {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$600(Lcom/android/car/AppFocusService$OwnershipClientInfo;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 111
    .end local v0    # "info":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$updateFocusOwner$1$AppFocusService(ILcom/android/car/AppFocusService$OwnershipClientInfo;)V
    .locals 4
    .param p1, "appType"    # I
    .param p2, "owner"    # Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwnershipCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/AppFocusService$FocusOwnershipCallback;

    .line 314
    .local v1, "callback":Lcom/android/car/AppFocusService$FocusOwnershipCallback;
    invoke-virtual {p2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getUid()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getPid()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/car/AppFocusService$FocusOwnershipCallback;->onFocusAcquired(III)V

    .line 315
    .end local v1    # "callback":Lcom/android/car/AppFocusService$FocusOwnershipCallback;
    goto :goto_0

    .line 316
    :cond_0
    return-void

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBinderDeath(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "Landroid/car/IAppFocusOwnershipCallback;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/IAppFocusOwnershipCallback;>;"
    move-object v0, p1

    check-cast v0, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 241
    .local v0, "info":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    invoke-static {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$600(Lcom/android/car/AppFocusService$OwnershipClientInfo;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 242
    .local v2, "appType":Ljava/lang/Integer;
    iget-object v3, p1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v3, Landroid/car/IAppFocusOwnershipCallback;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/car/AppFocusService;->abandonAppFocus(Landroid/car/IAppFocusOwnershipCallback;I)V

    .line 243
    .end local v2    # "appType":Ljava/lang/Integer;
    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method public registerContextOwnerChangedCallback(Lcom/android/car/AppFocusService$FocusOwnershipCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/car/AppFocusService$FocusOwnershipCallback;

    .line 287
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwnershipCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 292
    .local v0, "owners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/car/AppFocusService$OwnershipClientInfo;>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/car/AppFocusService$OwnershipClientInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 296
    .local v3, "clientInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getPid()I

    move-result v6

    invoke-interface {p1, v4, v5, v6}, Lcom/android/car/AppFocusService$FocusOwnershipCallback;->onFocusAcquired(III)V

    .line 297
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/car/AppFocusService$OwnershipClientInfo;>;"
    .end local v3    # "clientInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    goto :goto_0

    .line 298
    :cond_0
    return-void

    .line 292
    .end local v0    # "owners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/car/AppFocusService$OwnershipClientInfo;>;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerFocusListener(Landroid/car/IAppFocusListener;I)V
    .locals 9
    .param p1, "listener"    # Landroid/car/IAppFocusListener;
    .param p2, "appType"    # I

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-virtual {v0, p1}, Lcom/android/car/AppFocusService$ClientHolder;->getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    move-result-object v0

    check-cast v0, Lcom/android/car/AppFocusService$ClientInfo;

    .line 71
    .local v0, "info":Lcom/android/car/AppFocusService$ClientInfo;
    if-nez v0, :cond_0

    .line 72
    new-instance v8, Lcom/android/car/AppFocusService$ClientInfo;

    iget-object v2, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/car/AppFocusService$ClientInfo;-><init>(Lcom/android/car/AppFocusService$ClientHolder;Landroid/car/IAppFocusListener;IIILcom/android/car/AppFocusService$1;)V

    move-object v0, v8

    .line 74
    iget-object v1, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-virtual {v1, v0}, Lcom/android/car/AppFocusService$ClientHolder;->addBinderInterface(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/AppFocusService$ClientInfo;->access$300(Lcom/android/car/AppFocusService$ClientInfo;Ljava/lang/Integer;)Z

    .line 78
    .end local v0    # "info":Lcom/android/car/AppFocusService$ClientInfo;
    :goto_0
    monitor-exit p0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mHandlerThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "CAR.APP_FOCUS"

    const-string v2, "Timeout while waiting for handler thread to join."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/AppFocusService;->mDispatchHandler:Lcom/android/car/AppFocusService$DispatchHandler;

    .line 230
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-virtual {v0}, Lcom/android/car/AppFocusService$ClientHolder;->clear()V

    .line 231
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientHolder;->clear()V

    .line 232
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mActiveAppTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 234
    monitor-exit p0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestAppFocus(Landroid/car/IAppFocusOwnershipCallback;I)I
    .locals 8
    .param p1, "callback"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "appType"    # I

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    .line 118
    invoke-virtual {v0, p1}, Lcom/android/car/AppFocusService$OwnershipClientHolder;->getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    move-result-object v0

    check-cast v0, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 119
    .local v0, "info":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    if-nez v0, :cond_0

    .line 120
    new-instance v7, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    iget-object v2, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/car/AppFocusService$OwnershipClientInfo;-><init>(Lcom/android/car/AppFocusService$OwnershipClientHolder;Landroid/car/IAppFocusOwnershipCallback;IILcom/android/car/AppFocusService$1;)V

    move-object v0, v7

    .line 122
    iget-object v1, p0, Lcom/android/car/AppFocusService;->mAllOwnershipClients:Lcom/android/car/AppFocusService$OwnershipClientHolder;

    invoke-virtual {v1, v0}, Lcom/android/car/AppFocusService$OwnershipClientHolder;->addBinderInterface(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$600(Lcom/android/car/AppFocusService$OwnershipClientInfo;)Ljava/util/Set;

    move-result-object v1

    .line 125
    .local v1, "alreadyOwnedAppTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mFocusOwners:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 127
    .local v2, "ownerInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    .line 128
    iget-object v3, p0, Lcom/android/car/AppFocusService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 129
    invoke-virtual {v2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getPid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getUid()I

    move-result v5

    .line 128
    invoke-virtual {v3, v4, v5}, Lcom/android/car/SystemActivityMonitoringService;->isInForeground(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/car/AppFocusService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 131
    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getPid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getUid()I

    move-result v5

    .line 130
    invoke-virtual {v3, v4, v5}, Lcom/android/car/SystemActivityMonitoringService;->isInForeground(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    const-string v3, "CAR.APP_FOCUS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Focus request failed for non-foreground app(pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ").Foreground app (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") owns it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 138
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$800(Lcom/android/car/AppFocusService$OwnershipClientInfo;Ljava/lang/Integer;)Z

    .line 139
    iget-object v3, p0, Lcom/android/car/AppFocusService;->mDispatchHandler:Lcom/android/car/AppFocusService$DispatchHandler;

    iget-object v4, v2, Lcom/android/car/AppFocusService$OwnershipClientInfo;->binderInterface:Landroid/os/IInterface;

    check-cast v4, Landroid/car/IAppFocusOwnershipCallback;

    invoke-static {v3, v4, p2}, Lcom/android/car/AppFocusService$DispatchHandler;->access$900(Lcom/android/car/AppFocusService$DispatchHandler;Landroid/car/IAppFocusOwnershipCallback;I)V

    .line 146
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/android/car/AppFocusService;->updateFocusOwner(ILcom/android/car/AppFocusService$OwnershipClientInfo;)V

    .line 148
    .end local v2    # "ownerInfo":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->access$1000(Lcom/android/car/AppFocusService$OwnershipClientInfo;Ljava/lang/Integer;)Z

    .line 149
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mDispatchHandler:Lcom/android/car/AppFocusService$DispatchHandler;

    iget-object v3, v0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->binderInterface:Landroid/os/IInterface;

    check-cast v3, Landroid/car/IAppFocusOwnershipCallback;

    invoke-static {v2, v3, p2}, Lcom/android/car/AppFocusService$DispatchHandler;->access$1100(Lcom/android/car/AppFocusService$DispatchHandler;Landroid/car/IAppFocusOwnershipCallback;I)V

    .line 151
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mActiveAppTypes:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 157
    iget-object v2, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-virtual {v2}, Lcom/android/car/AppFocusService$ClientHolder;->getInterfaces()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 158
    .local v4, "client":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/IAppFocusListener;>;"
    move-object v5, v4

    check-cast v5, Lcom/android/car/AppFocusService$ClientInfo;

    .line 161
    .local v5, "clientInfo":Lcom/android/car/AppFocusService$ClientInfo;
    invoke-static {v5}, Lcom/android/car/AppFocusService$ClientInfo;->access$500(Lcom/android/car/AppFocusService$ClientInfo;)Ljava/util/Set;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 162
    iget-object v6, p0, Lcom/android/car/AppFocusService;->mDispatchHandler:Lcom/android/car/AppFocusService$DispatchHandler;

    iget-object v7, v5, Lcom/android/car/AppFocusService$ClientInfo;->binderInterface:Landroid/os/IInterface;

    check-cast v7, Landroid/car/IAppFocusListener;

    invoke-static {v6, v7, p2, v3}, Lcom/android/car/AppFocusService$DispatchHandler;->access$1200(Lcom/android/car/AppFocusService$DispatchHandler;Landroid/car/IAppFocusListener;IZ)V

    .line 165
    .end local v4    # "client":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/IAppFocusListener;>;"
    .end local v5    # "clientInfo":Lcom/android/car/AppFocusService$ClientInfo;
    :cond_4
    goto :goto_0

    .line 167
    .end local v0    # "info":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    .end local v1    # "alreadyOwnedAppTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    monitor-exit p0

    .line 168
    return v3

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterContextOwnerChangedCallback(Lcom/android/car/AppFocusService$FocusOwnershipCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/car/AppFocusService$FocusOwnershipCallback;

    .line 304
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mFocusOwnershipCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method public unregisterFocusListener(Landroid/car/IAppFocusListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/car/IAppFocusListener;
    .param p2, "appType"    # I

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-virtual {v0, p1}, Lcom/android/car/AppFocusService$ClientHolder;->getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    move-result-object v0

    check-cast v0, Lcom/android/car/AppFocusService$ClientInfo;

    .line 85
    .local v0, "info":Lcom/android/car/AppFocusService$ClientInfo;
    if-nez v0, :cond_0

    .line 86
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/AppFocusService$ClientInfo;->access$400(Lcom/android/car/AppFocusService$ClientInfo;Ljava/lang/Integer;)Z

    .line 89
    invoke-static {v0}, Lcom/android/car/AppFocusService$ClientInfo;->access$500(Lcom/android/car/AppFocusService$ClientInfo;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/car/AppFocusService;->mAllChangeClients:Lcom/android/car/AppFocusService$ClientHolder;

    invoke-virtual {v1, p1}, Lcom/android/car/AppFocusService$ClientHolder;->removeBinder(Landroid/os/IInterface;)V

    .line 92
    .end local v0    # "info":Lcom/android/car/AppFocusService$ClientInfo;
    :cond_1
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
