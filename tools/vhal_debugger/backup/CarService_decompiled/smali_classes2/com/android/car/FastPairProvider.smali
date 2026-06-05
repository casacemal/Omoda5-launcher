.class Lcom/android/car/FastPairProvider;
.super Ljava/lang/Object;
.source "FastPairProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/FastPairProvider$FastPairAdvertiseCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final FastPairServiceUuid:Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "FastPairProvider"


# instance fields
.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mData:Landroid/bluetooth/le/AdvertiseData;

.field private mSettings:Landroid/bluetooth/le/AdvertiseSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/car/Utils;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/car/FastPairProvider;->DBG:Z

    .line 49
    nop

    .line 50
    const-string v0, "0000FE2C-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/car/FastPairProvider;->FastPairServiceUuid:Landroid/os/ParcelUuid;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 61
    .local v1, "modelId":I
    if-nez v1, :cond_0

    .line 62
    const-string v2, "FastPairProvider"

    const-string v3, "Model ID undefined, disabling"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_0
    const-string v2, "bluetooth"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 68
    .local v2, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 70
    .local v3, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v4

    iput-object v4, p0, Lcom/android/car/FastPairProvider;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 75
    .end local v3    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    new-instance v3, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 76
    .local v3, "settingsBuilder":Landroid/bluetooth/le/AdvertiseSettings$Builder;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 77
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 78
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 79
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 80
    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/android/car/FastPairProvider;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 82
    new-instance v7, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v7}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 83
    .local v7, "dataBuilder":Landroid/bluetooth/le/AdvertiseData$Builder;
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 85
    .local v8, "modelIdBytes":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-static {v9, v6, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 86
    .local v4, "fastPairServiceData":[B
    sget-object v6, Lcom/android/car/FastPairProvider;->FastPairServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v7, v6, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 87
    invoke-virtual {v7, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 88
    invoke-virtual {v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/car/FastPairProvider;->mData:Landroid/bluetooth/le/AdvertiseData;

    .line 90
    new-instance v5, Lcom/android/car/FastPairProvider$FastPairAdvertiseCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/car/FastPairProvider$FastPairAdvertiseCallback;-><init>(Lcom/android/car/FastPairProvider;Lcom/android/car/FastPairProvider$1;)V

    iput-object v5, p0, Lcom/android/car/FastPairProvider;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 91
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/car/FastPairProvider;->DBG:Z

    return v0
.end method


# virtual methods
.method startAdvertising()Z
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/car/FastPairProvider;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/car/FastPairProvider;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    iget-object v2, p0, Lcom/android/car/FastPairProvider;->mData:Landroid/bluetooth/le/AdvertiseData;

    iget-object v3, p0, Lcom/android/car/FastPairProvider;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method stopAdvertising()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/car/FastPairProvider;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/car/FastPairProvider;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
