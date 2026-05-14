.class public Lcom/chery/device/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/device/DeviceModel$ProxyDeviceListener;,
        Lcom/chery/device/DeviceModel$DeviceConnectListener;,
        Lcom/chery/device/DeviceModel$ConnectionState;,
        Lcom/chery/device/DeviceModel$ConnectType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceListener:Lcom/chery/device/DeviceModel$DeviceConnectListener;

.field private mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-class v0, Lcom/chery/device/DeviceModel;

    const-string v1, "COMMON"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;-><init>()V

    iput-object v0, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    .line 57
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->connect(Landroid/content/Context;)V

    .line 58
    iget-object p1, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    new-instance v0, Lcom/chery/device/DeviceModel$ProxyDeviceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/device/DeviceModel$ProxyDeviceListener;-><init>(Lcom/chery/device/DeviceModel;Lcom/chery/device/DeviceModel$1;)V

    invoke-virtual {p1, v0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->registerListener(Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chery/device/DeviceModel;Lcom/yfve/t19c/projection/devicelist/Device;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/chery/device/DeviceModel;->ondeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/device/DeviceModel;)Lcom/chery/device/DeviceModel$DeviceConnectListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chery/device/DeviceModel;->mDeviceListener:Lcom/chery/device/DeviceModel$DeviceConnectListener;

    return-object p0
.end method

.method private ondeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V
    .locals 3

    .line 138
    sget-object v0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ondeviceUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yfve/t19c/projection/devicelist/Device;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/chery/device/DeviceModel;->mDeviceListener:Lcom/chery/device/DeviceModel$DeviceConnectListener;

    if-eqz p0, :cond_0

    .line 140
    invoke-interface {p0, p1}, Lcom/chery/device/DeviceModel$DeviceConnectListener;->onDeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHistoryDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/devicelist/Device;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    const-string v1, "getHistoryDevices"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    if-eqz v1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->getHistoryDevices()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/devicelist/Device;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    const-string v1, "getList"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    if-eqz v1, :cond_0

    .line 82
    iget-object p0, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public onBluetoothPairResult(Ljava/lang/String;I)V
    .locals 3

    .line 124
    sget-object v0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothPairResult mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->onBluetoothPairResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 130
    :cond_0
    sget-object p0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    const-string p1, "onBluetoothPairResult: mDeviceMangerClient == null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerListener(Lcom/chery/device/DeviceModel$DeviceConnectListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/chery/device/DeviceModel;->mDeviceListener:Lcom/chery/device/DeviceModel$DeviceConnectListener;

    return-void
.end method

.method public startSession(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 109
    sget-object v0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSession type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",serialNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",btMac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/chery/device/DeviceModel;->mDeviceMangerClient:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->startSession(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object p0, Lcom/chery/device/DeviceModel;->TAG:Ljava/lang/String;

    const-string p1, "startSession: mDeviceMangerClient == null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I
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

.method public unRegisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/chery/device/DeviceModel;->mDeviceListener:Lcom/chery/device/DeviceModel$DeviceConnectListener;

    return-void
.end method
