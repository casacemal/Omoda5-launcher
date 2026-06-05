.class public abstract Lcom/android/car/trust/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"


# static fields
.field private static final BLE_RETRY_INTERVAL_MS:I = 0x3e8

.field private static final BLE_RETRY_LIMIT:I = 0x5

.field private static final DEVICE_NAME_UUID:Ljava/util/UUID;

.field private static final GATT_SERVER_RETRY_DELAY_MS:I = 0xc8

.field private static final GATT_SERVER_RETRY_LIMIT:I = 0x14

.field private static final GENERIC_ACCESS_PROFILE_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mAdvertiserStartCount:I

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final mContext:Landroid/content/Context;

.field private mData:Landroid/bluetooth/le/AdvertiseData;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattServer:Landroid/bluetooth/BluetoothGattServer;

.field private final mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private mGattServerRetryStartCount:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/car/trust/BleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    .line 63
    nop

    .line 64
    const-string v0, "00001800-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/BleManager;->GENERIC_ACCESS_PROFILE_UUID:Ljava/util/UUID;

    .line 67
    nop

    .line 68
    const-string v0, "00002a00-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/BleManager;->DEVICE_NAME_UUID:Ljava/util/UUID;

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mHandler:Landroid/os/Handler;

    .line 296
    new-instance v0, Lcom/android/car/trust/BleManager$1;

    invoke-direct {v0, p0}, Lcom/android/car/trust/BleManager$1;-><init>(Lcom/android/car/trust/BleManager;)V

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 376
    new-instance v0, Lcom/android/car/trust/BleManager$2;

    invoke-direct {v0, p0}, Lcom/android/car/trust/BleManager$2;-><init>(Lcom/android/car/trust/BleManager;)V

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 84
    iput-object p1, p0, Lcom/android/car/trust/BleManager;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/trust/BleManager;)Landroid/bluetooth/BluetoothGattServer;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/BleManager;

    .line 52
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/trust/BleManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/BleManager;

    .line 52
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/UUID;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/car/trust/BleManager;->GENERIC_ACCESS_PROFILE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/car/trust/BleManager;->DEVICE_NAME_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method private openGattServer()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gatt Server created, retry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/trust/BleManager;->mGattServerRetryStartCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    .line 124
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    iget-object v3, p0, Lcom/android/car/trust/BleManager;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    .line 125
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    const/4 v3, 0x2

    .line 126
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v0

    .line 130
    .local v0, "settings":Landroid/bluetooth/le/AdvertiseSettings;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/car/trust/BleManager;->mAdvertiserStartCount:I

    .line 131
    iget-object v2, p0, Lcom/android/car/trust/BleManager;->mData:Landroid/bluetooth/le/AdvertiseData;

    iget-object v3, p0, Lcom/android/car/trust/BleManager;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/car/trust/BleManager;->startAdvertisingInternally(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 132
    iput v1, p0, Lcom/android/car/trust/BleManager;->mGattServerRetryStartCount:I

    .line 133
    .end local v0    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/car/trust/BleManager;->mGattServerRetryStartCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    iget-object v2, p0, Lcom/android/car/trust/BleManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/trust/BleManager;->mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 135
    iget v0, p0, Lcom/android/car/trust/BleManager;->mGattServerRetryStartCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/car/trust/BleManager;->mGattServerRetryStartCount:I

    .line 136
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/trust/-$$Lambda$BleManager$-n3T9QeJVwkSM0RCsARFvrCJw3A;

    invoke-direct {v1, p0}, Lcom/android/car/trust/-$$Lambda$BleManager$-n3T9QeJVwkSM0RCsARFvrCJw3A;-><init>(Lcom/android/car/trust/BleManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 138
    :cond_2
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "Gatt server not created - exceeded retry limit."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void
.end method

.method private startAdvertisingInternally(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 4
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 144
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_2

    .line 149
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advertiser created, retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/trust/BleManager;->mAdvertiserStartCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiserStartCount:I

    goto :goto_0

    .line 154
    :cond_2
    iget v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiserStartCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;-><init>(Lcom/android/car/trust/BleManager;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    iget v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiserStartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiserStartCount:I

    goto :goto_0

    .line 160
    :cond_3
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start BLE Advertisement.  BT Adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Advertise Retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/trust/BleManager;->mAdvertiserStartCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 215
    .local v1, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v1    # "d":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 220
    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    sget-object v1, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting connected devices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    nop

    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_1
    invoke-virtual {p0}, Lcom/android/car/trust/BleManager;->stopGattServer()V

    .line 221
    goto :goto_3

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/android/car/trust/BleManager;->stopGattServer()V

    throw v0

    .line 223
    :cond_2
    :goto_3
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public synthetic lambda$openGattServer$0$BleManager()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/car/trust/BleManager;->openGattServer()V

    return-void
.end method

.method public synthetic lambda$startAdvertisingInternally$1$BleManager(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 0
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/trust/BleManager;->startAdvertisingInternally(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void
.end method

.method protected notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "confirm"    # Z

    .line 180
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 186
    .local v0, "result":Z
    sget-object v1, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    sget-object v1, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCharacteristicChanged succeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    return-void
.end method

.method protected abstract onCharacteristicRead(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method protected abstract onCharacteristicWrite(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
.end method

.method protected onDeviceNameRetrieved(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 248
    return-void
.end method

.method protected onMtuSizeChanged(I)V
    .locals 0
    .param p1, "size"    # I

    .line 256
    return-void
.end method

.method protected onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 264
    return-void
.end method

.method protected onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 272
    return-void
.end method

.method protected final retrieveDeviceName(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 195
    invoke-virtual {p0}, Lcom/android/car/trust/BleManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/trust/BleManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 196
    return-void
.end method

.method protected startAdvertising(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 3
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 100
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAdvertising: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "System does not support BLE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/android/car/trust/BleManager;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    .line 109
    iput-object p3, p0, Lcom/android/car/trust/BleManager;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 110
    iput-object p2, p0, Lcom/android/car/trust/BleManager;->mData:Landroid/bluetooth/le/AdvertiseData;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/BleManager;->mGattServerRetryStartCount:I

    .line 112
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 114
    invoke-direct {p0}, Lcom/android/car/trust/BleManager;->openGattServer()V

    .line 115
    return-void
.end method

.method protected stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 2
    .param p1, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 167
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopAdvertising: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 173
    :cond_1
    return-void
.end method

.method stopGattServer()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/android/car/trust/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "stopGattServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/BleManager;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 240
    return-void
.end method
