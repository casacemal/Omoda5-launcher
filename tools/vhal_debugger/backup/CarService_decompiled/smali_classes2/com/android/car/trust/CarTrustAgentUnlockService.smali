.class public Lcom/android/car/trust/CarTrustAgentUnlockService;
.super Ljava/lang/Object;
.source "CarTrustAgentUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;,
        Lcom/android/car/trust/CarTrustAgentUnlockService$UnlockState;
    }
.end annotation


# static fields
.field private static final ACKNOWLEDGEMENT_MESSAGE:[B

.field private static final CLIENT:[B

.field private static final MAX_LOG_SIZE:I = 0x14

.field private static final RESUME:[B

.field private static final RESUME_HMAC_LENGTH:I = 0x20

.field private static final SERVER:[B

.field private static final TAG:Ljava/lang/String; = "CarTrustAgentUnlock"

.field private static final TRUSTED_DEVICE_UNLOCK_ENABLED_KEY:Ljava/lang/String; = "trusted_device_unlock_enabled"

.field private static final UNLOCK_STATE_KEY_EXCHANGE_IN_PROGRESS:I = 0x1

.field private static final UNLOCK_STATE_MUTUAL_AUTH_ESTABLISHED:I = 0x3

.field private static final UNLOCK_STATE_PHONE_CREDENTIALS_RECEIVED:I = 0x4

.field private static final UNLOCK_STATE_WAITING_FOR_CLIENT_AUTH:I = 0x2

.field private static final UNLOCK_STATE_WAITING_FOR_UNIQUE_ID:I


# instance fields
.field private final mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

.field private mClientDeviceId:Ljava/lang/String;

.field private mCurrentContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

.field private mCurrentUnlockState:I

.field private final mDeviceLock:Ljava/lang/Object;

.field private mEncryptionKey:Landroid/car/encryptionrunner/Key;

.field private mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

.field private mEncryptionState:I

.field private mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

.field private final mLogQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

.field private mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceLock"
        }
    .end annotation
.end field

.field private final mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

.field private mUnlockDelegate:Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-string v0, "RESUME"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarTrustAgentUnlockService;->RESUME:[B

    .line 103
    const-string v0, "SERVER"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarTrustAgentUnlockService;->SERVER:[B

    .line 104
    const-string v0, "CLIENT"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarTrustAgentUnlockService;->CLIENT:[B

    .line 107
    const-string v0, "ACK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarTrustAgentUnlockService;->ACKNOWLEDGEMENT_MESSAGE:[B

    return-void
.end method

.method constructor <init>(Lcom/android/car/trust/CarTrustedDeviceService;Lcom/android/car/trust/CarTrustAgentBleManager;)V
    .locals 2
    .param p1, "service"    # Lcom/android/car/trust/CarTrustedDeviceService;
    .param p2, "bleService"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 132
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mLogQueue:Ljava/util/Queue;

    .line 135
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mDeviceLock:Ljava/lang/Object;

    .line 140
    invoke-static {}, Landroid/car/encryptionrunner/EncryptionRunnerFactory;->newRunner()Landroid/car/encryptionrunner/EncryptionRunner;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    .line 143
    iput v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    .line 151
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    .line 152
    iput-object p2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 153
    return-void
.end method

.method private authenticateClient([B)Z
    .locals 3
    .param p1, "message"    # [B

    .line 503
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failing because message.length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTrustAgentUnlock"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    return v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    sget-object v2, Lcom/android/car/trust/CarTrustAgentUnlockService;->CLIENT:[B

    .line 508
    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/trust/CarTrustAgentUnlockService;->computeMAC(Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;[B)[B

    move-result-object v0

    .line 507
    invoke-static {p1, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private computeMAC(Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;[B)[B
    .locals 3
    .param p1, "previous"    # Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .param p2, "next"    # Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .param p3, "info"    # [B

    .line 491
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 492
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->getSessionUnique()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->getSessionUnique()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/Utils;->concatByteArrays([B[B)[B

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 494
    .local v0, "inputKeyMaterial":Ljavax/crypto/spec/SecretKeySpec;
    sget-object v1, Lcom/android/car/trust/CarTrustAgentUnlockService;->RESUME:[B

    invoke-static {v0, v1, p3}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->hkdf(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 495
    .end local v0    # "inputKeyMaterial":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "CarTrustAgentUnlock"

    const-string v2, "Compute MAC failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v1, 0x0

    return-object v1
.end method

.method private convertToDeviceId([B)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # [B

    .line 358
    invoke-static {p1}, Lcom/android/car/Utils;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v0

    .line 359
    .local v0, "deviceId":Ljava/util/UUID;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    .line 360
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/trust/CarTrustedDeviceService;->getEncryptionKey(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 361
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown phone connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarTrustAgentUnlock"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private processKeyExchangeHandshakeMessage([B)V
    .locals 7
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation

    .line 371
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    const-string v1, "UNLOCK_ENCRYPTION_STATE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "CarTrustAgentUnlock"

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_0

    if-eq v0, v3, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered invalid handshake state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->showVerificationCode()V

    .line 418
    goto/16 :goto_0

    .line 387
    :cond_1
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const-string v0, "Continuing handshake."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    invoke-interface {v0, p1}, Landroid/car/encryptionrunner/EncryptionRunner;->continueHandshake([B)Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 392
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    .line 394
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated encryption state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_3
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    if-ne v0, v6, :cond_4

    .line 401
    invoke-static {v1, v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;I)V

    .line 402
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->showVerificationCode()V

    .line 403
    return-void

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 408
    invoke-virtual {v3}, Landroid/car/encryptionrunner/HandshakeMessage;->getNextMessage()[B

    move-result-object v3

    sget-object v4, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 407
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendUnlockMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 410
    goto :goto_0

    .line 373
    :cond_5
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    const-string v0, "Responding to handshake init request."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_6
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    invoke-interface {v0, p1}, Landroid/car/encryptionrunner/EncryptionRunner;->respondToInitRequest([B)Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 378
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    .line 379
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 380
    invoke-virtual {v4}, Landroid/car/encryptionrunner/HandshakeMessage;->getNextMessage()[B

    move-result-object v4

    sget-object v5, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 379
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendUnlockMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 383
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    invoke-static {v1, v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;I)V

    .line 384
    nop

    .line 424
    :goto_0
    return-void
.end method

.method private queueMessageForLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mLogQueue:Ljava/util/Queue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method private resetEncryptionState()V
    .locals 2

    .line 555
    invoke-static {}, Landroid/car/encryptionrunner/EncryptionRunnerFactory;->newRunner()Landroid/car/encryptionrunner/EncryptionRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 557
    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    .line 558
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    .line 559
    iput v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 560
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    if-eqz v1, :cond_0

    .line 561
    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    if-eqz v1, :cond_1

    .line 564
    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 566
    :cond_1
    return-void
.end method

.method private resetUnlockStateOnFailure()V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 545
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetEncryptionState()V

    .line 546
    return-void
.end method

.method private sendAckToClient(Z)V
    .locals 4
    .param p1, "isEncrypted"    # Z

    .line 349
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    sget-object v1, Lcom/android/car/trust/CarTrustAgentUnlockService;->ACKNOWLEDGEMENT_MESSAGE:[B

    invoke-interface {v0, v1}, Landroid/car/encryptionrunner/Key;->encryptData([B)[B

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_0
    sget-object v0, Lcom/android/car/trust/CarTrustAgentUnlockService;->ACKNOWLEDGEMENT_MESSAGE:[B

    :goto_0
    nop

    .line 351
    .local v0, "ack":[B
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendUnlockMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 353
    return-void
.end method

.method private sendServerAuthToClient()V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    sget-object v2, Lcom/android/car/trust/CarTrustAgentUnlockService;->SERVER:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/trust/CarTrustAgentUnlockService;->computeMAC(Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;[B)[B

    move-result-object v0

    .line 479
    .local v0, "resumeBytes":[B
    if-nez v0, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendUnlockMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 485
    return-void
.end method

.method private showVerificationCode()V
    .locals 4

    .line 436
    const-string v0, "CarTrustAgentUnlock"

    :try_start_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    invoke-interface {v1}, Landroid/car/encryptionrunner/EncryptionRunner;->verifyPin()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v1
    :try_end_0
    .catch Landroid/car/encryptionrunner/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .local v1, "handshakeMessage":Landroid/car/encryptionrunner/HandshakeMessage;
    nop

    .line 443
    invoke-virtual {v1}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake not finished after calling verify PIN. Instead got state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v1}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 447
    return-void

    .line 450
    :cond_0
    iput v3, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionState:I

    .line 451
    invoke-virtual {v1}, Landroid/car/encryptionrunner/HandshakeMessage;->getKey()Landroid/car/encryptionrunner/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    .line 452
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    invoke-interface {v2}, Landroid/car/encryptionrunner/Key;->asBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->fromSavedSession([B)Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 454
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mClientDeviceId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 456
    return-void

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v3, v2}, Lcom/android/car/trust/CarTrustedDeviceService;->getEncryptionKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 459
    .local v2, "oldSessionKeyBytes":[B
    if-nez v2, :cond_2

    .line 460
    const-string v3, "Could not retrieve previous session keys! Have to re-enroll trusted device"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 463
    return-void

    .line 466
    :cond_2
    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->fromSavedSession([B)Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 467
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    if-nez v0, :cond_3

    .line 468
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 469
    return-void

    .line 473
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 474
    const-string v0, "WAITING_FOR_CLIENT_AUTH"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 475
    return-void

    .line 437
    .end local v1    # "handshakeMessage":Landroid/car/encryptionrunner/HandshakeMessage;
    .end local v2    # "oldSessionKeyBytes":[B
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Landroid/car/encryptionrunner/HandshakeException;
    const-string v2, "Verify pin failed for new keys - Unexpected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 440
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 569
    const-string v0, "*CarTrustAgentUnlockService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const-string v0, "Unlock Service Logs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    .local v1, "log":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    .end local v1    # "log":Ljava/lang/String;
    goto :goto_0

    .line 574
    :cond_0
    return-void
.end method

.method init()V
    .locals 1

    .line 226
    const-string v0, "UNLOCK_SERVICE_INIT"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->setupUnlockBleServer()V

    .line 228
    return-void
.end method

.method onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 239
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "CarTrustAgentUnlock"

    const-string v2, "Unexpected: Cannot connect to another device when already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteDeviceConnected (addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->queueMessageForLog(Ljava/lang/String;)V

    .line 245
    const-string v1, "REMOTE_DEVICE_CONNECTED"

    invoke-static {v1}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetEncryptionState()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 250
    return-void

    .line 247
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 254
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected from an unknown device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTrustAgentUnlock"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteDeviceDisconnected (addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->queueMessageForLog(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetEncryptionState()V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 263
    return-void

    .line 260
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onUnlockDataReceived([B)V
    .locals 6
    .param p1, "value"    # [B

    .line 266
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "CarTrustAgentUnlock"

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered unexpected unlock state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 340
    :cond_0
    const-string v0, "Landed on unexpected state of credentials received."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    goto/16 :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    if-nez v0, :cond_2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current session key null. Unexpected at this stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mClientDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/car/trust/CarTrustedDeviceService;->clearEncryptionKey(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 316
    return-void

    .line 320
    :cond_2
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mClientDeviceId:Ljava/lang/String;

    invoke-interface {v0}, Landroid/car/encryptionrunner/Key;->asBytes()[B

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/android/car/trust/CarTrustedDeviceService;->saveEncryptionKey(Ljava/lang/String;[B)Z

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    invoke-interface {v0, p1}, Landroid/car/encryptionrunner/Key;->decryptData([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .local v0, "decryptedCredentials":[B
    nop

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->processCredentials([B)V

    .line 332
    iput v4, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 333
    const-string v2, "UNLOCK_CREDENTIALS_RECEIVED"

    invoke-static {v2}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->sendAckToClient(Z)V

    .line 337
    goto/16 :goto_0

    .line 325
    .end local v0    # "decryptedCredentials":[B
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/security/SignatureException;
    const-string v1, "Could not decrypt phone credentials."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 328
    return-void

    .line 295
    .end local v0    # "e":Ljava/security/SignatureException;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->authenticateClient([B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    const-string v0, "HMAC from the phone is not correct. Cannot resume session. Need to re-enroll"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mClientDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/car/trust/CarTrustedDeviceService;->clearEncryptionKey(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 302
    return-void

    .line 305
    :cond_5
    const-string v0, "CLIENT_AUTHENTICATED"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->sendServerAuthToClient()V

    .line 307
    iput v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 308
    goto :goto_0

    .line 288
    :cond_6
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->processKeyExchangeHandshakeMessage([B)V
    :try_end_1
    .catch Landroid/car/encryptionrunner/HandshakeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Landroid/car/encryptionrunner/HandshakeException;
    const-string v1, "Handshake failure"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 293
    .end local v0    # "e":Landroid/car/encryptionrunner/HandshakeException;
    goto :goto_0

    .line 268
    :cond_7
    invoke-static {p1}, Lcom/android/car/trust/CarTrustAgentValidator;->isValidUnlockDeviceId([B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 269
    const-string v0, "Device Id rejected by validator."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 271
    return-void

    .line 273
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->convertToDeviceId([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mClientDeviceId:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mClientDeviceId:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 275
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 276
    const-string v0, "Phone not enrolled as a trusted device"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_9
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->resetUnlockStateOnFailure()V

    .line 279
    return-void

    .line 281
    :cond_a
    const-string v0, "RECEIVED_DEVICE_ID"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->sendAckToClient(Z)V

    .line 284
    iput v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentUnlockState:I

    .line 285
    nop

    .line 345
    :goto_0
    return-void
.end method

.method processCredentials([B)V
    .locals 7
    .param p1, "credentials"    # [B

    .line 512
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mUnlockDelegate:Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;

    const-string v1, "CarTrustAgentUnlock"

    if-nez v0, :cond_1

    .line 513
    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "No Unlock delegate to notify of unlock credentials."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    return-void

    .line 519
    :cond_1
    const-string v0, "processCredentials"

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->queueMessageForLog(Ljava/lang/String;)V

    .line 523
    :try_start_0
    invoke-static {p1}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->parseFrom([B)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .local v0, "phoneCredentials":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    nop

    .line 529
    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getHandle()Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 531
    .local v1, "handle":[B
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mUnlockDelegate:Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    .line 532
    invoke-static {v1}, Lcom/android/car/Utils;->bytesToLong([B)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/car/trust/CarTrustedDeviceService;->getUserHandleByTokenHandle(J)I

    move-result v3

    .line 533
    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getEscrowToken()Lcom/android/car/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/car/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    .line 534
    invoke-static {v1}, Lcom/android/car/Utils;->bytesToLong([B)J

    move-result-wide v5

    .line 531
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;->onUnlockDataReceived(I[BJ)V

    .line 535
    return-void

    .line 524
    .end local v0    # "phoneCredentials":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .end local v1    # "handle":[B
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    const-string v2, "Error parsing credentials protobuf."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    return-void
.end method

.method release()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mPrevContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 235
    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCurrentContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setTrustedDeviceUnlockEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 178
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "trusted_device_unlock_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlock Enable Failed. Enable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarTrustAgentUnlock"

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method

.method setUnlockRequestDelegate(Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;

    .line 191
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mUnlockDelegate:Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;

    .line 192
    return-void
.end method

.method startUnlockAdvertising()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trusted_device_unlock_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const-string v0, "CarTrustAgentUnlock"

    const-string v1, "Trusted Device Unlock is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->stopEnrollmentAdvertising()V

    .line 204
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->stopUnlockAdvertising()V

    .line 206
    const-string v0, "START_UNLOCK_ADVERTISING"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 207
    const-string v0, "startUnlockAdvertising"

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->queueMessageForLog(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->startUnlockAdvertising()V

    .line 209
    return-void
.end method

.method stopUnlockAdvertising()V
    .locals 1

    .line 215
    const-string v0, "STOP_UNLOCK_ADVERTISING"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 216
    const-string v0, "stopUnlockAdvertising"

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->queueMessageForLog(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopUnlockAdvertising()V

    .line 219
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentUnlockService;->mRemoteUnlockDevice:Landroid/bluetooth/BluetoothDevice;

    .line 223
    :cond_0
    return-void
.end method
