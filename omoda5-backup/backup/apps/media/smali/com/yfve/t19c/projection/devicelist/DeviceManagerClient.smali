.class public Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;
.super Ljava/lang/Object;
.source "DeviceManagerClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceManagerClient"

.field private static packageName:Ljava/lang/String;


# instance fields
.field private binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

.field private final connection:Landroid/content/ServiceConnection;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mOnConnectListener:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

.field private final mOnDeviceListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnDeviceListListeners:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;-><init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnConnectListener:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    .line 64
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;-><init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 74
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;-><init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Lcom/yfve/t19c/projection/devicelist/OnConnectListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnDeviceListListeners:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;-><init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnConnectListener:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    .line 64
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;-><init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 74
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;-><init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->connection:Landroid/content/ServiceConnection;

    .line 106
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnConnectListener:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnDeviceListListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;Lcom/yfve/t19c/projection/devicelist/DeviceListManager;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnConnectListener:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Z
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binderNotNull()Z

    move-result p0

    return p0
.end method

.method private binderNotNull()Z
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "DeviceManagerClient"

    const-string v0, "binder is null"

    .line 204
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect() called    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yfve.t19c.projection.devicemanager"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.yfve.t19c.projection.devicemanager.list"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->connection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disConnect(Landroid/content/Context;)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disConnect() called    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public getHistoryDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/devicelist/Device;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHistoryDevices() called    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binderNotNull()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    invoke-interface {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;->getHistoryDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/devicelist/Device;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getList() called    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binderNotNull()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    invoke-interface {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;->getAliveDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onBluetoothPairResult(Ljava/lang/String;I)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPairResult() called with: mac = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], result = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binderNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;->onBluetoothPairResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerListener(Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;)V
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener() called    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 116
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnDeviceListListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startSession(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSession() called with: connectType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], serial = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], mac = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binderNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->binder:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    invoke-interface {p0, p2, p3, p1}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;->startSession(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterListener(Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener called    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 123
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->mOnDeviceListListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
