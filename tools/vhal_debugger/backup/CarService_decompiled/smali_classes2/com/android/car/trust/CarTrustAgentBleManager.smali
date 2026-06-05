.class Lcom/android/car/trust/CarTrustAgentBleManager;
.super Lcom/android/car/trust/BleManager;
.source "CarTrustAgentBleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/trust/CarTrustAgentBleManager$TrustedDeviceOperation;
    }
.end annotation


# static fields
.field private static final ATT_PAYLOAD_RESERVED_BYTES:I = 0x3

.field private static final BLE_MESSAGE_RETRY_DELAY_MS:J

.field private static final BLE_MESSAGE_RETRY_LIMIT:I = 0x14

.field private static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "CarTrustBLEManager"

.field private static final TRUSTED_DEVICE_OPERATION_ENROLLMENT:I = 0x1

.field private static final TRUSTED_DEVICE_OPERATION_NONE:I = 0x0

.field private static final TRUSTED_DEVICE_OPERATION_UNLOCK:I = 0x2


# instance fields
.field private mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

.field private mBleMessageRetryStartCount:I

.field private mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

.field private mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

.field private mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

.field private mCurrentTrustedDeviceOperation:I

.field private final mEnrollmentAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mEnrollmentClientWriteUuid:Ljava/util/UUID;

.field private mEnrollmentDeviceName:Ljava/lang/String;

.field private mEnrollmentGattService:Landroid/bluetooth/BluetoothGattService;

.field private mEnrollmentServerWriteUuid:Ljava/util/UUID;

.field private mEnrollmentServiceUuid:Ljava/util/UUID;

.field private mHandler:Landroid/os/Handler;

.field private mIsVersionExchanged:Z

.field private mMaxWriteSize:I

.field private mMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalBluetoothName:Ljava/lang/String;

.field private mSendRepeatedBleMessage:Ljava/lang/Runnable;

.field private mUniqueId:[B

.field private final mUnlockAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mUnlockClientWriteUuid:Ljava/util/UUID;

.field private mUnlockGattService:Landroid/bluetooth/BluetoothGattService;

.field private mUnlockServerWriteUuid:Ljava/util/UUID;

.field private mUnlockServiceUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    nop

    .line 70
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarTrustAgentBleManager;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/car/trust/CarTrustAgentBleManager;->BLE_MESSAGE_RETRY_DELAY_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/car/trust/BleManager;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCurrentTrustedDeviceOperation:I

    .line 114
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMaxWriteSize:I

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    .line 129
    new-instance v0, Lcom/android/car/trust/BLEMessagePayloadStream;

    invoke-direct {v0}, Lcom/android/car/trust/BLEMessagePayloadStream;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mHandler:Landroid/os/Handler;

    .line 654
    new-instance v0, Lcom/android/car/trust/CarTrustAgentBleManager$2;

    invoke-direct {v0, p0}, Lcom/android/car/trust/CarTrustAgentBleManager$2;-><init>(Lcom/android/car/trust/CarTrustAgentBleManager;)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 677
    new-instance v0, Lcom/android/car/trust/CarTrustAgentBleManager$3;

    invoke-direct {v0, p0}, Lcom/android/car/trust/CarTrustAgentBleManager$3;-><init>(Lcom/android/car/trust/CarTrustAgentBleManager;)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/trust/CarTrustAgentBleManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 59
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessageRetryStartCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/car/trust/CarTrustAgentBleManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 59
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessageRetryStartCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessageRetryStartCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/car/trust/CarTrustAgentBleManager;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 59
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/trust/CarTrustAgentBleManager;Landroid/bluetooth/BluetoothDevice;[BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/trust/CarTrustAgentBleManager;->setValueOnCharacteristicAndNotify(Landroid/bluetooth/BluetoothDevice;[BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    .line 59
    sget-wide v0, Lcom/android/car/trust/CarTrustAgentBleManager;->BLE_MESSAGE_RETRY_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/car/trust/CarTrustAgentBleManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 59
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/trust/CarTrustAgentBleManager;)Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 59
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/car/trust/CarTrustAgentBleManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 59
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/car/trust/CarTrustAgentBleManager;)Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 59
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    return-object v0
.end method

.method private addDescriptorToCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 423
    new-instance v0, Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v1, Lcom/android/car/trust/CarTrustAgentBleManager;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    .line 426
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 427
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 428
    return-void
.end method

.method private getCharacteristicForWrite(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentClientWriteUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentGattService:Landroid/bluetooth/BluetoothGattService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentServerWriteUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    return-object v0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockClientWriteUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockGattService:Landroid/bluetooth/BluetoothGattService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServerWriteUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    return-object v0

    .line 651
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEnrollmentDeviceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    return-object v0

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getEnrollmentDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentDeviceName:Ljava/lang/String;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private getEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    if-eqz v0, :cond_0

    .line 270
    return-object v0

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    nop

    .line 275
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    return-object v0
.end method

.method private getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    if-nez v0, :cond_0

    .line 262
    const-class v0, Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/trust/CarTrustedDeviceService;

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    return-object v0
.end method

.method private getUniqueId()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUniqueId:[B

    if-eqz v0, :cond_0

    .line 295
    return-object v0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getUniqueId()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getUniqueId()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/Utils;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUniqueId:[B

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUniqueId:[B

    return-object v0
.end method

.method private getUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    if-eqz v0, :cond_0

    .line 283
    return-object v0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    return-object v0
.end method

.method private handleClientAckMessage(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "clientCharacteristicUUID"    # Ljava/util/UUID;

    .line 511
    const-string v0, "CarTrustBLEManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACK from client. Attempting to write next message in queue. UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    nop

    .line 517
    invoke-direct {p0, p2}, Lcom/android/car/trust/CarTrustAgentBleManager;->getCharacteristicForWrite(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 519
    .local v1, "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v1, :cond_1

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No corresponding write characteristic found for writing next message in queue. UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 525
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 530
    invoke-direct {p0, p1, v1}, Lcom/android/car/trust/CarTrustAgentBleManager;->writeNextMessageInQueue(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 531
    return-void
.end method

.method private resolveBLEVersion(Landroid/bluetooth/BluetoothDevice;[BLjava/util/UUID;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # [B
    .param p3, "clientCharacteristicUUID"    # Ljava/util/UUID;

    .line 318
    nop

    .line 319
    invoke-direct {p0, p3}, Lcom/android/car/trust/CarTrustAgentBleManager;->getCharacteristicForWrite(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 321
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string v1, "CarTrustBLEManager"

    if-nez v0, :cond_0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UUID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") during version exchange; disconnecting from remote device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 325
    return-void

    .line 330
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->parseFrom([B)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .local v2, "deviceVersion":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    nop

    .line 337
    invoke-static {v2}, Lcom/android/car/trust/BLEVersionExchangeResolver;->hasSupportedVersion(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    const-string v3, "No supported version found during version exchange."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 340
    return-void

    .line 343
    :cond_1
    invoke-static {}, Lcom/android/car/trust/BLEVersionExchangeResolver;->makeVersionExchange()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    move-result-object v3

    .line 344
    .local v3, "headunitVersion":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    invoke-virtual {v3}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->toByteArray()[B

    move-result-object v4

    invoke-direct {p0, p1, v4, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->setValueOnCharacteristicAndNotify(Landroid/bluetooth/BluetoothDevice;[BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 346
    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    const-string v4, "Sent supported version to the phone."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mIsVersionExchanged:Z

    .line 351
    return-void

    .line 331
    .end local v2    # "deviceVersion":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .end local v3    # "headunitVersion":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 333
    const-string v3, "Could not parse version exchange message"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    return-void
.end method

.method private sendAcknowledgmentMessage(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "clientCharacteristicUUID"    # Ljava/util/UUID;

    .line 603
    nop

    .line 604
    invoke-direct {p0, p2}, Lcom/android/car/trust/CarTrustAgentBleManager;->getCharacteristicForWrite(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 606
    .local v0, "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No corresponding write characteristic found for sending ACK. UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarTrustBLEManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 612
    :cond_0
    nop

    .line 613
    invoke-static {}, Lcom/android/car/trust/BLEMessageV1Factory;->makeAcknowledgementMessage()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->toByteArray()[B

    move-result-object v1

    .line 612
    invoke-direct {p0, p1, v1, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->setValueOnCharacteristicAndNotify(Landroid/bluetooth/BluetoothDevice;[BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 615
    return-void
.end method

.method private sendMessage(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "message"    # [B
    .param p4, "operation"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .param p5, "isPayloadEncrypted"    # Z

    .line 545
    const/4 v0, 0x3

    const-string v1, "CarTrustBLEManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; and characteristic UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMaxWriteSize:I

    invoke-static {p3, p4, v2, p5}, Lcom/android/car/trust/BLEMessageV1Factory;->makeBLEMessages([BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;IZ)Ljava/util/List;

    move-result-object v2

    .line 553
    .local v2, "bleMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;>;"
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " messages to device"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/android/car/trust/CarTrustAgentBleManager;->writeNextMessageInQueue(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 559
    return-void
.end method

.method private setValueOnCharacteristicAndNotify(Landroid/bluetooth/BluetoothDevice;[BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "message"    # [B
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 629
    invoke-virtual {p3, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 631
    return-void
.end method

.method private writeNextMessageInQueue(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 568
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "CarTrustBLEManager"

    const-string v1, "Call to write next message in queue, but the message queue is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/car/trust/CarTrustAgentBleManager;->setValueOnCharacteristicAndNotify(Landroid/bluetooth/BluetoothDevice;[BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 576
    return-void

    .line 578
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessageRetryStartCount:I

    .line 579
    new-instance v0, Lcom/android/car/trust/CarTrustAgentBleManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/car/trust/CarTrustAgentBleManager$1;-><init>(Lcom/android/car/trust/CarTrustAgentBleManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    .line 599
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void
.end method


# virtual methods
.method disconnectRemoteDevice()V
    .locals 0

    .line 481
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopGattServer()V

    .line 482
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 257
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .line 201
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 202
    .local v0, "uuid":Ljava/util/UUID;
    const-string v1, "CarTrustBLEManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicWrite received uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-boolean v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mIsVersionExchanged:Z

    if-nez v2, :cond_1

    .line 207
    invoke-direct {p0, p1, p7, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->resolveBLEVersion(Landroid/bluetooth/BluetoothDevice;[BLjava/util/UUID;)V

    .line 208
    return-void

    .line 213
    :cond_1
    :try_start_0
    invoke-static {p7}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->parseFrom([B)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    .local v2, "message":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    nop

    .line 219
    invoke-virtual {v2}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getOperation()Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    move-result-object v3

    sget-object v4, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ACK:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    if-ne v3, v4, :cond_2

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->handleClientAckMessage(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 221
    return-void

    .line 227
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

    invoke-virtual {v3, v2}, Lcom/android/car/trust/BLEMessagePayloadStream;->write(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    nop

    .line 233
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

    invoke-virtual {v1}, Lcom/android/car/trust/BLEMessagePayloadStream;->isComplete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendAcknowledgmentMessage(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 236
    return-void

    .line 239
    :cond_3
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentClientWriteUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 241
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

    .line 242
    invoke-virtual {v3}, Lcom/android/car/trust/BLEMessagePayloadStream;->toByteArray()[B

    move-result-object v3

    .line 241
    invoke-virtual {v1, v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onEnrollmentDataReceived([B)V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockClientWriteUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 246
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

    invoke-virtual {v3}, Lcom/android/car/trust/BLEMessagePayloadStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/car/trust/CarTrustAgentUnlockService;->onUnlockDataReceived([B)V

    .line 250
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

    invoke-virtual {v1}, Lcom/android/car/trust/BLEMessagePayloadStream;->reset()V

    .line 251
    return-void

    .line 228
    :catch_0
    move-exception v3

    .line 229
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Can write the BLE message\'s payload"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    return-void

    .line 214
    .end local v2    # "message":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 215
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    const-string v3, "Can not parse BLE message"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    return-void
.end method

.method protected onDeviceNameRetrieved(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 182
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustedDeviceService;->onDeviceNameRetrieved(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected onMtuSizeChanged(I)V
    .locals 3
    .param p1, "size"    # I

    .line 189
    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMaxWriteSize:I

    .line 191
    const-string v0, "CarTrustBLEManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU size changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; setting max payload size to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMaxWriteSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    return-void
.end method

.method public onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 144
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 150
    :cond_0
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCurrentTrustedDeviceOperation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/car/trust/CarTrustAgentBleManager;->retrieveDeviceName(Landroid/bluetooth/BluetoothDevice;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mIsVersionExchanged:Z

    .line 157
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustedDeviceService;->onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 158
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    .line 162
    :cond_2
    return-void
.end method

.method public onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 166
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getTrustedDeviceService()Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustedDeviceService;->onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mIsVersionExchanged:Z

    .line 172
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mBleMessagePayloadStream:Lcom/android/car/trust/BLEMessagePayloadStream;

    invoke-virtual {v0}, Lcom/android/car/trust/BLEMessagePayloadStream;->reset()V

    .line 174
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mSendRepeatedBleMessage:Ljava/lang/Runnable;

    .line 178
    return-void
.end method

.method sendEnrollmentMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "message"    # [B
    .param p3, "operation"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .param p4, "isPayloadEncrypted"    # Z

    .line 494
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentGattService:Landroid/bluetooth/BluetoothGattService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentServerWriteUuid:Ljava/util/UUID;

    .line 495
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 497
    .local v0, "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendMessage(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 498
    return-void
.end method

.method sendUnlockMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "message"    # [B
    .param p3, "operation"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .param p4, "isPayloadEncrypted"    # Z

    .line 486
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockGattService:Landroid/bluetooth/BluetoothGattService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServerWriteUuid:Ljava/util/UUID;

    .line 487
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 489
    .local v0, "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendMessage(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 490
    return-void
.end method

.method setupEnrollmentBleServer()V
    .locals 5

    .line 359
    nop

    .line 360
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentServiceUuid:Ljava/util/UUID;

    .line 361
    nop

    .line 362
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentClientWriteUuid:Ljava/util/UUID;

    .line 363
    nop

    .line 364
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f014f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentServerWriteUuid:Ljava/util/UUID;

    .line 366
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentServiceUuid:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentGattService:Landroid/bluetooth/BluetoothGattService;

    .line 370
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentClientWriteUuid:Ljava/util/UUID;

    const/16 v2, 0x10

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 377
    .local v0, "clientCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentServerWriteUuid:Ljava/util/UUID;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 382
    .local v1, "serverCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-direct {p0, v1}, Lcom/android/car/trust/CarTrustAgentBleManager;->addDescriptorToCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 384
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 385
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 386
    return-void
.end method

.method setupUnlockBleServer()V
    .locals 5

    .line 394
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServiceUuid:Ljava/util/UUID;

    .line 395
    nop

    .line 396
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0234

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockClientWriteUuid:Ljava/util/UUID;

    .line 397
    nop

    .line 398
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServerWriteUuid:Ljava/util/UUID;

    .line 400
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServiceUuid:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockGattService:Landroid/bluetooth/BluetoothGattService;

    .line 404
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockClientWriteUuid:Ljava/util/UUID;

    const/16 v2, 0x10

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 411
    .local v0, "clientCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServerWriteUuid:Ljava/util/UUID;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 416
    .local v1, "serverCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-direct {p0, v1}, Lcom/android/car/trust/CarTrustAgentBleManager;->addDescriptorToCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 418
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 419
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 420
    return-void
.end method

.method startEnrollmentAdvertising()V
    .locals 6

    .line 431
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCurrentTrustedDeviceOperation:I

    .line 433
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getEnrollmentDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 435
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 436
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mOriginalBluetoothName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 437
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mOriginalBluetoothName:Ljava/lang/String;

    .line 439
    :cond_0
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 440
    const/4 v3, 0x3

    const-string v4, "CarTrustBLEManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing bluetooth adapter name from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mOriginalBluetoothName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentGattService:Landroid/bluetooth/BluetoothGattService;

    new-instance v3, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 447
    invoke-virtual {v3, v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v0

    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentServiceUuid:Ljava/util/UUID;

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 448
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 445
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/car/trust/CarTrustAgentBleManager;->startAdvertising(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 451
    return-void
.end method

.method startUnlockAdvertising()V
    .locals 4

    .line 465
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCurrentTrustedDeviceOperation:I

    .line 466
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockGattService:Landroid/bluetooth/BluetoothGattService;

    new-instance v1, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 468
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServiceUuid:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 469
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentBleManager;->getUniqueId()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockServiceUuid:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 470
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 466
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/trust/CarTrustAgentBleManager;->startAdvertising(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 473
    return-void
.end method

.method stopEnrollmentAdvertising()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mOriginalBluetoothName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 455
    const/4 v0, 0x3

    const-string v1, "CarTrustBLEManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing bluetooth adapter name back to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mOriginalBluetoothName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mOriginalBluetoothName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mEnrollmentAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {p0, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 462
    return-void
.end method

.method stopUnlockAdvertising()V
    .locals 1

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mCurrentTrustedDeviceOperation:I

    .line 477
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager;->mUnlockAdvertisingCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {p0, v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 478
    return-void
.end method
