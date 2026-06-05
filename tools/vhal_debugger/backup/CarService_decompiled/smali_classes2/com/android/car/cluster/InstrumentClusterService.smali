.class public Lcom/android/car/cluster/InstrumentClusterService;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/AppFocusService$FocusOwnershipCallback;
.implements Lcom/android/car/CarInputService$KeyEventListener;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;,
        Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;,
        Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    }
.end annotation


# static fields
.field private static final NO_OWNER:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

.field private static final TAG:Ljava/lang/String; = "CAR.CLUSTER"


# instance fields
.field private final mAppFocusService:Lcom/android/car/AppFocusService;

.field private final mCarInputService:Lcom/android/car/CarInputService;

.field private final mClusterManagerService:Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeferredRebinder:Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

.field private mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSync"
        }
    .end annotation
.end field

.field private mRendererBound:Z

.field private mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSync"
        }
    .end annotation
.end field

.field private final mRendererServiceConnection:Landroid/content/ServiceConnection;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;-><init>(II)V

    sput-object v0, Lcom/android/car/cluster/InstrumentClusterService;->NO_OWNER:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/AppFocusService;Lcom/android/car/CarInputService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appFocusService"    # Lcom/android/car/AppFocusService;
    .param p3, "carInputService"    # Lcom/android/car/CarInputService;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;-><init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mClusterManagerService:Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/car/cluster/InstrumentClusterService;->NO_OWNER:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    .line 87
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$1;

    invoke-direct {v0, p0}, Lcom/android/car/cluster/InstrumentClusterService$1;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererServiceConnection:Landroid/content/ServiceConnection;

    .line 125
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/car/cluster/InstrumentClusterService;->mAppFocusService:Lcom/android/car/AppFocusService;

    .line 127
    iput-object p3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mCarInputService:Lcom/android/car/CarInputService;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/cluster/InstrumentClusterService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 58
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/car/cluster/InstrumentClusterService;Landroid/car/cluster/renderer/IInstrumentCluster;)Landroid/car/cluster/renderer/IInstrumentCluster;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 58
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/car/cluster/InstrumentClusterService;)Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 58
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    return-object v0
.end method

.method static synthetic access$400(Landroid/car/cluster/renderer/IInstrumentCluster;Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;)V
    .locals 0
    .param p0, "x0"    # Landroid/car/cluster/renderer/IInstrumentCluster;
    .param p1, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 58
    invoke-static {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->notifyNavContextOwnerChanged(Landroid/car/cluster/renderer/IInstrumentCluster;Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/cluster/InstrumentClusterService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 58
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/cluster/InstrumentClusterService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 58
    iget-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/car/cluster/InstrumentClusterService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/car/cluster/InstrumentClusterService;)Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 58
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mDeferredRebinder:Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;)Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    .line 58
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mDeferredRebinder:Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/car/cluster/InstrumentClusterService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 58
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->bindInstrumentClusterRendererService()Z

    move-result v0

    return v0
.end method

.method private bindInstrumentClusterRendererService()Z
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "rendererService":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CAR.CLUSTER"

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "Instrument cluster renderer was not configured"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x0

    return v1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindInstrumentClusterRendererService, component: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    iget-object v2, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererServiceConnection:Landroid/content/ServiceConnection;

    const/16 v4, 0x41

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method private changeNavContextOwner(IIIZ)V
    .locals 6
    .param p1, "appType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "acquire"    # Z

    .line 177
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 178
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    invoke-direct {v0, p2, p3}, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;-><init>(II)V

    .line 183
    .local v0, "requester":Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    if-eqz p4, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/car/cluster/InstrumentClusterService;->NO_OWNER:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 184
    .local v1, "newOwner":Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    :goto_0
    iget-object v2, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    if-eqz p4, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 185
    :cond_2
    :goto_1
    if-nez p4, :cond_4

    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 186
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 189
    :cond_3
    const-string v3, "CAR.CLUSTER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid nav context owner change (acquiring: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "), current owner: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "], requester: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v2

    return-void

    .line 195
    :cond_4
    iput-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 196
    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 197
    .local v3, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v3, :cond_5

    .line 200
    invoke-static {v3, v1}, Lcom/android/car/cluster/InstrumentClusterService;->notifyNavContextOwnerChanged(Landroid/car/cluster/renderer/IInstrumentCluster;Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;)V

    .line 202
    :cond_5
    return-void

    .line 197
    .end local v3    # "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getInstrumentClusterRendererService()Landroid/car/cluster/renderer/IInstrumentCluster;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 267
    .local v1, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    monitor-exit v0

    .line 268
    return-object v1

    .line 267
    .end local v1    # "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static notifyNavContextOwnerChanged(Landroid/car/cluster/renderer/IInstrumentCluster;Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;)V
    .locals 3
    .param p0, "service"    # Landroid/car/cluster/renderer/IInstrumentCluster;
    .param p1, "owner"    # Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 207
    :try_start_0
    iget v0, p1, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    iget v1, p1, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    invoke-interface {p0, v0, v1}, Landroid/car/cluster/renderer/IInstrumentCluster;->setNavigationContextOwner(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.CLUSTER"

    const-string v2, "Failed to call setNavigationContextOwner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bound with renderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderer service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public getManagerService()Landroid/car/cluster/IInstrumentClusterManagerService$Stub;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mClusterManagerService:Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;

    return-object v0
.end method

.method public getNavigationService()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;
    .locals 4

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->getInstrumentClusterRendererService()Landroid/car/cluster/renderer/IInstrumentCluster;

    move-result-object v1

    .line 232
    .local v1, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/car/cluster/renderer/IInstrumentCluster;->getNavigationService()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 233
    .end local v1    # "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.CLUSTER"

    const-string v3, "getNavigationServiceBinder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 132
    const-string v0, "CAR.CLUSTER"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mAppFocusService:Lcom/android/car/AppFocusService;

    invoke-virtual {v0, p0}, Lcom/android/car/AppFocusService;->registerContextOwnerChangedCallback(Lcom/android/car/AppFocusService$FocusOwnershipCallback;)V

    .line 137
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-virtual {v0, p0}, Lcom/android/car/CarInputService;->setInstrumentClusterKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V

    .line 140
    const-class v0, Lcom/android/car/user/CarUserService;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/user/CarUserService;

    new-instance v1, Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$Nko0QYkm6E_U9NrbyWroocy7oAE;

    invoke-direct {v1, p0}, Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$Nko0QYkm6E_U9NrbyWroocy7oAE;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    invoke-virtual {v0, v1}, Lcom/android/car/user/CarUserService;->runOnUser0Unlock(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public synthetic lambda$init$0$InstrumentClusterService()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->bindInstrumentClusterRendererService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    .line 142
    return-void
.end method

.method public onFocusAbandoned(III)V
    .locals 1
    .param p1, "appType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/cluster/InstrumentClusterService;->changeNavContextOwner(IIIZ)V

    .line 174
    return-void
.end method

.method public onFocusAcquired(III)V
    .locals 1
    .param p1, "appType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/cluster/InstrumentClusterService;->changeNavContextOwner(IIIZ)V

    .line 169
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 249
    const-string v0, "CAR.CLUSTER"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstrumentClusterService#onKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->getInstrumentClusterRendererService()Landroid/car/cluster/renderer/IInstrumentCluster;

    move-result-object v1

    .line 254
    .local v1, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    if-eqz v1, :cond_1

    .line 256
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/cluster/renderer/IInstrumentCluster;->onKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "onKeyEvent"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 147
    const-string v0, "CAR.CLUSTER"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mAppFocusService:Lcom/android/car/AppFocusService;

    invoke-virtual {v0, p0}, Lcom/android/car/AppFocusService;->unregisterContextOwnerChangedCallback(Lcom/android/car/AppFocusService$FocusOwnershipCallback;)V

    .line 152
    iget-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    .line 156
    :cond_1
    return-void
.end method
