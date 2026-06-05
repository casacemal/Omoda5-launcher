.class public Lcom/android/car/trust/CarTrustAgentEnrollmentService;
.super Landroid/car/trust/ICarTrustAgentEnrollment$Stub;
.source "CarTrustAgentEnrollmentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;,
        Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;,
        Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;,
        Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentState;
    }
.end annotation


# static fields
.field static final CONFIRMATION_SIGNAL:[B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEVICE_INFO_DELIMITER:C = '#'

.field static final ENROLLMENT_STATE_ENCRYPTION_COMPLETED:I = 0x2

.field static final ENROLLMENT_STATE_HANDLE:I = 0x3

.field static final ENROLLMENT_STATE_NONE:I = 0x0

.field static final ENROLLMENT_STATE_UNIQUE_ID:I = 0x1

.field private static final MAX_LOG_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CarTrustAgentEnroll"

.field private static final TRUSTED_DEVICE_ENROLLMENT_ENABLED_KEY:Ljava/lang/String; = "trusted_device_enrollment_enabled"


# instance fields
.field private final mBleStateChangeClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

.field private mClientDeviceId:Ljava/lang/String;

.field private mClientDeviceName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEncryptionKey:Landroid/car/encryptionrunner/Key;

.field private mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

.field mEncryptionState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mEnrollmentDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

.field mEnrollmentState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mEnrollmentStateClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHandle:J

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

.field private mRemoteDeviceLock:Ljava/lang/Object;

.field private mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteDeviceLock"
        }
    .end annotation
.end field

.field private final mTokenActiveStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-string v0, "True"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->CONFIRMATION_SIGNAL:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/trust/CarTrustedDeviceService;Lcom/android/car/trust/CarTrustAgentBleManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/car/trust/CarTrustedDeviceService;
    .param p3, "bleService"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 139
    invoke-direct {p0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mLogQueue:Ljava/util/Queue;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteDeviceLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTokenActiveStateMap:Ljava/util/Map;

    .line 112
    invoke-static {}, Landroid/car/encryptionrunner/EncryptionRunnerFactory;->newRunner()Landroid/car/encryptionrunner/EncryptionRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    .line 140
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    .line 142
    iput-object p3, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 143
    return-void
.end method

.method static synthetic access$400(Lcom/android/car/trust/CarTrustAgentEnrollmentService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    .line 81
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/trust/CarTrustAgentEnrollmentService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    .line 81
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    return-object v0
.end method

.method private addEnrollmentServiceLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mLogQueue:Ljava/util/Queue;

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

    .line 969
    return-void
.end method

.method private dispatchEnrollmentFailure(I)V
    .locals 5
    .param p1, "error"    # I

    .line 982
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    .line 984
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    :try_start_0
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;->access$200(Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    goto :goto_1

    .line 985
    :catch_0
    move-exception v2

    .line 986
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarTrustAgentEnroll"

    const-string v4, "onEnrollmentHandshakeFailure dispatch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 988
    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 989
    :cond_0
    return-void
.end method

.method private dispatchEscrowTokenActiveStateChanged(JZ)V
    .locals 5
    .param p1, "handle"    # J
    .param p3, "active"    # Z

    .line 972
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    .line 974
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    :try_start_0
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;->access$200(Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEscrowTokenActiveStateChanged(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    goto :goto_1

    .line 975
    :catch_0
    move-exception v2

    .line 976
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot notify client of a Token Activation change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CarTrustAgentEnroll"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 979
    :cond_0
    return-void
.end method

.method private static extractDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "deviceInfoWithId"    # Ljava/lang/String;

    .line 1015
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1016
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 1017
    const/4 v1, 0x0

    return-object v1

    .line 1019
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static extractDeviceInfo(Ljava/lang/String;)Landroid/car/trust/TrustedDeviceInfo;
    .locals 2
    .param p0, "deviceInfoWithId"    # Ljava/lang/String;

    .line 1000
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1001
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 1002
    const/4 v1, 0x0

    return-object v1

    .line 1004
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/car/trust/TrustedDeviceInfo;->deserialize(Ljava/lang/String;)Landroid/car/trust/TrustedDeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method private findBleStateClientLocked(Landroid/car/trust/ICarTrustAgentBleCallback;)Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/trust/ICarTrustAgentBleCallback;

    .line 890
    invoke-interface {p1}, Landroid/car/trust/ICarTrustAgentBleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 892
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 893
    .local v2, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    invoke-virtual {v2, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->isHoldingBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 894
    return-object v2

    .line 896
    .end local v2    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    :cond_0
    goto :goto_0

    .line 897
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findEnrollmentStateClientLocked(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    .line 822
    invoke-interface {p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 824
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    .line 825
    .local v2, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    invoke-virtual {v2, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;->isHoldingBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    return-object v2

    .line 828
    .end local v2    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    :cond_0
    goto :goto_0

    .line 829
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private notifyDeviceIdReceived([B)V
    .locals 8
    .param p1, "id"    # [B

    .line 630
    invoke-static {p1}, Lcom/android/car/Utils;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v0

    .line 631
    .local v0, "deviceId":Ljava/util/UUID;
    const-string v1, "CarTrustAgentEnroll"

    if-nez v0, :cond_0

    .line 632
    const-string v2, "Invalid device id sent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void

    .line 635
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    .line 636
    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1
    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v3}, Lcom/android/car/trust/CarTrustedDeviceService;->getUniqueId()Ljava/util/UUID;

    move-result-object v3

    .line 640
    .local v3, "uniqueId":Ljava/util/UUID;
    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 641
    const-string v2, "Cannot get Unique ID for the IHU"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->resetEnrollmentStateOnFailure()V

    .line 643
    invoke-direct {p0, v4}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V

    .line 644
    return-void

    .line 646
    :cond_2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending device id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_3
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 650
    invoke-static {v3}, Lcom/android/car/Utils;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v5

    sget-object v6, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const/4 v7, 0x0

    .line 649
    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendEnrollmentMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 652
    iget v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    .line 653
    return-void
.end method

.method private notifyEscrowTokenReceived([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    .line 658
    invoke-interface {v1, p1}, Landroid/car/encryptionrunner/Key;->decryptData([B)[B

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 657
    invoke-interface {v0, v1, v2}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;->addEscrowToken([BI)V

    .line 659
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    .line 660
    const-string v0, "ESCROW_TOKEN_ADDED"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/security/SignatureException;
    const-string v1, "CarTrustAgentEnroll"

    const-string v2, "Could not decrypt escrow token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    .end local v0    # "e":Ljava/security/SignatureException;
    :goto_0
    return-void
.end method

.method private processInitEncryptionMessage([B)V
    .locals 6
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation

    .line 676
    const/4 v0, 0x3

    const-string v1, "CarTrustAgentEnroll"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    const-string v2, "Processing init encryption message."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iget v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v0, :cond_1

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered invalid handshake state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->notifyEscrowTokenReceived([B)V

    .line 729
    goto/16 :goto_0

    .line 717
    :cond_2
    const-string v0, "Encountered VERIFICATION_NEEDED state when it should have been transitioned to after IN_PROGRESS."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->showVerificationCode()V

    .line 722
    goto/16 :goto_0

    .line 695
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 696
    const-string v2, "Continuing handshake."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_4
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    invoke-interface {v2, p1}, Landroid/car/encryptionrunner/EncryptionRunner;->continueHandshake([B)Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 700
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    invoke-virtual {v2}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v2

    iput v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    .line 702
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated encryption state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_5
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    if-ne v0, v5, :cond_6

    .line 709
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->showVerificationCode()V

    .line 710
    return-void

    .line 712
    :cond_6
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 713
    invoke-virtual {v2}, Landroid/car/encryptionrunner/HandshakeMessage;->getNextMessage()[B

    move-result-object v2

    sget-object v4, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 712
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendEnrollmentMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 715
    goto :goto_0

    .line 681
    :cond_7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 682
    const-string v0, "Responding to handshake init request."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_8
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    invoke-interface {v0, p1}, Landroid/car/encryptionrunner/EncryptionRunner;->respondToInitRequest([B)Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 686
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    .line 687
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 688
    invoke-virtual {v2}, Landroid/car/encryptionrunner/HandshakeMessage;->getNextMessage()[B

    move-result-object v2

    sget-object v4, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 687
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendEnrollmentMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 691
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    const-string v1, "ENROLLMENT_ENCRYPTION_STATE"

    invoke-static {v1, v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;I)V

    .line 692
    nop

    .line 735
    :goto_0
    return-void
.end method

.method private resetEncryptionState()V
    .locals 1

    .line 772
    invoke-static {}, Landroid/car/encryptionrunner/EncryptionRunnerFactory;->newRunner()Landroid/car/encryptionrunner/EncryptionRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 774
    iput-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    .line 776
    iput v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    .line 777
    return-void
.end method

.method private resetEnrollmentStateOnFailure()V
    .locals 0

    .line 761
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->terminateEnrollmentHandshake()V

    .line 762
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->resetEncryptionState()V

    .line 763
    return-void
.end method

.method private static serializeDeviceInfoWithId(Landroid/car/trust/TrustedDeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Landroid/car/trust/TrustedDeviceInfo;
    .param p1, "id"    # Ljava/lang/String;

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {p0}, Landroid/car/trust/TrustedDeviceInfo;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    return-object v0
.end method

.method private declared-synchronized setEnrollmentHandshakeAccepted()V
    .locals 5

    monitor-enter p0

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    if-nez v0, :cond_0

    .line 781
    const-string v0, "CarTrustAgentEnroll"

    const-string v1, "Received notification that enrollment handshake was accepted, but encryption was never set up."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    monitor-exit p0

    return-void

    .line 787
    .end local p0    # "this":Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    invoke-interface {v1}, Landroid/car/encryptionrunner/EncryptionRunner;->verifyPin()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v1
    :try_end_1
    .catch Landroid/car/encryptionrunner/HandshakeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    .local v1, "message":Landroid/car/encryptionrunner/HandshakeMessage;
    nop

    .line 795
    :try_start_2
    invoke-virtual {v1}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 796
    const-string v0, "CarTrustAgentEnroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake not finished after calling verify PIN. Instead got state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v1}, Landroid/car/encryptionrunner/HandshakeMessage;->getHandshakeState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 798
    monitor-exit p0

    return-void

    .line 801
    :cond_1
    :try_start_3
    iput v3, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    .line 802
    invoke-virtual {v1}, Landroid/car/encryptionrunner/HandshakeMessage;->getKey()Landroid/car/encryptionrunner/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    .line 803
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    invoke-interface {v4}, Landroid/car/encryptionrunner/Key;->asBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/car/trust/CarTrustedDeviceService;->saveEncryptionKey(Ljava/lang/String;[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 804
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->resetEnrollmentStateOnFailure()V

    .line 805
    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    .line 808
    :cond_2
    :try_start_4
    const-string v2, "ENCRYPTION_KEY_SAVED"

    invoke-static {v2}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V

    .line 809
    iget v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 810
    monitor-exit p0

    return-void

    .line 788
    .end local v1    # "message":Landroid/car/encryptionrunner/HandshakeMessage;
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Landroid/car/encryptionrunner/HandshakeException;
    :try_start_5
    const-string v2, "CarTrustAgentEnroll"

    const-string v3, "Error during PIN verification"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->resetEnrollmentStateOnFailure()V

    .line 791
    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 792
    monitor-exit p0

    return-void

    .line 779
    .end local v1    # "e":Landroid/car/encryptionrunner/HandshakeException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showVerificationCode()V
    .locals 6

    .line 738
    const-string v0, "CarTrustAgentEnroll"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showVerificationCode(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    invoke-virtual {v2}, Landroid/car/encryptionrunner/HandshakeMessage;->getVerificationCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    .line 744
    .local v2, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    :try_start_0
    invoke-static {v2}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;->access$200(Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandshakeMessage:Landroid/car/encryptionrunner/HandshakeMessage;

    .line 745
    invoke-virtual {v5}, Landroid/car/encryptionrunner/HandshakeMessage;->getVerificationCode()Ljava/lang/String;

    move-result-object v5

    .line 744
    invoke-interface {v3, v4, v5}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    goto :goto_1

    .line 746
    :catch_0
    move-exception v3

    .line 747
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Broadcast verification code failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    .end local v2    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 750
    :cond_1
    const-string v0, "SHOW_VERIFICATION_CODE"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V

    .line 751
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 957
    const-string v0, "*CarTrustAgentEnrollmentService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    const-string v0, "Enrollment Service Logs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 960
    .local v1, "log":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    .end local v1    # "log":Ljava/lang/String;
    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method public enrollmentHandshakeAccepted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 209
    const-string v0, "ENROLLMENT_HANDSHAKE_ACCEPTED"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V

    .line 210
    const-string v0, "enrollmentHandshakeAccepted"

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->CONFIRMATION_SIGNAL:[B

    sget-object v3, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendEnrollmentMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 220
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->setEnrollmentHandshakeAccepted()V

    .line 221
    return-void

    .line 212
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enrollment Failure: device is different from cached remote bluetooth device, disconnect from the device. current device is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTrustAgentEnroll"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 216
    return-void
.end method

.method public getEnrolledDeviceInfosForUser(I)Ljava/util/List;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/car/trust/TrustedDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 326
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 328
    .local v0, "enrolledDeviceInfos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v1, "trustedDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/car/trust/TrustedDeviceInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 330
    .local v3, "deviceInfoWithId":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->extractDeviceInfo(Ljava/lang/String;)Landroid/car/trust/TrustedDeviceInfo;

    move-result-object v4

    .line 331
    .local v4, "deviceInfo":Landroid/car/trust/TrustedDeviceInfo;
    if-eqz v4, :cond_0

    .line 332
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v3    # "deviceInfoWithId":Ljava/lang/String;
    .end local v4    # "deviceInfo":Landroid/car/trust/TrustedDeviceInfo;
    :cond_0
    goto :goto_0

    .line 335
    :cond_1
    return-object v1
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->setupEnrollmentBleServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEscrowTokenActive(JI)Z
    .locals 2
    .param p1, "handle"    # J
    .param p3, "uid"    # I

    .line 256
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTokenActiveStateMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTokenActiveStateMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 259
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onDeviceNameRetrieved(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 626
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceName:Ljava/lang/String;

    .line 627
    return-void
.end method

.method onEnrollmentAdvertiseStartFailure()V
    .locals 5

    .line 529
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 531
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    :try_start_0
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->access$300(Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;)Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/trust/ICarTrustAgentBleCallback;->onEnrollmentAdvertisingFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    goto :goto_1

    .line 532
    :catch_0
    move-exception v2

    .line 533
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarTrustAgentEnroll"

    const-string v4, "onAdvertiseSuccess dispatch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 536
    :cond_0
    return-void
.end method

.method onEnrollmentAdvertiseStartSuccess()V
    .locals 5

    .line 519
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 521
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    :try_start_0
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->access$300(Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;)Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/trust/ICarTrustAgentBleCallback;->onEnrollmentAdvertisingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    goto :goto_1

    .line 522
    :catch_0
    move-exception v2

    .line 523
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarTrustAgentEnroll"

    const-string v4, "onAdvertiseSuccess dispatch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 526
    :cond_0
    return-void
.end method

.method onEnrollmentDataReceived([B)V
    .locals 4
    .param p1, "value"    # [B

    .line 589
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

    const/4 v1, 0x3

    const-string v2, "CarTrustAgentEnroll"

    if-nez v0, :cond_1

    .line 590
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "Enrollment Delegate not set"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    return-void

    .line 595
    :cond_1
    iget v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 616
    :cond_2
    iget-wide v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandle:J

    invoke-direct {p0, v0, v1, v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEscrowTokenActiveStateChanged(JZ)V

    .line 617
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 618
    goto :goto_0

    .line 612
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->notifyEscrowTokenReceived([B)V

    .line 613
    goto :goto_0

    .line 606
    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->processInitEncryptionMessage([B)V
    :try_end_0
    .catch Landroid/car/encryptionrunner/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/car/encryptionrunner/HandshakeException;
    const-string v1, "HandshakeException during set up of encryption: "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    .end local v0    # "e":Landroid/car/encryptionrunner/HandshakeException;
    goto :goto_0

    .line 597
    :cond_5
    invoke-static {p1}, Lcom/android/car/trust/CarTrustAgentValidator;->isValidEnrollmentDeviceId([B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 598
    const-string v0, "Device id rejected by validator."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void

    .line 601
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->notifyDeviceIdReceived([B)V

    .line 602
    const-string v0, "RECEIVED_DEVICE_ID"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V

    .line 603
    nop

    .line 623
    :goto_0
    return-void
.end method

.method onEscrowTokenActiveStateChanged(JZI)V
    .locals 10
    .param p1, "handle"    # J
    .param p3, "isTokenActive"    # Z
    .param p4, "uid"    # I

    .line 439
    const/4 v0, 0x3

    const-string v1, "CarTrustAgentEnroll"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEscrowTokenActiveStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    if-nez p3, :cond_1

    goto/16 :goto_1

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v2}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 458
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    const-wide/16 v5, -0x1

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p4}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 461
    :cond_2
    iget-object v4, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTokenActiveStateMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 464
    .local v4, "deviceInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 465
    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "clientDeviceName":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v5    # "clientDeviceName":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 467
    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceName:Ljava/lang/String;

    .restart local v5    # "clientDeviceName":Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v5    # "clientDeviceName":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0216

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 471
    .restart local v5    # "clientDeviceName":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 472
    const-string v7, "trustedDeviceAdded (id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v7, ", handle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 474
    const-string v7, ", uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 475
    const-string v7, ", addr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v7, ", name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 477
    .local v6, "log":Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 478
    new-instance v7, Landroid/car/trust/TrustedDeviceInfo;

    iget-object v8, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 479
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, p2, v8, v5}, Landroid/car/trust/TrustedDeviceInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    .line 478
    invoke-static {v7, v8}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->serializeDeviceInfoWithId(Landroid/car/trust/TrustedDeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 483
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 484
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    if-nez v8, :cond_5

    .line 485
    const-string v0, "Writing DeviceInfo to shared prefs Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 487
    invoke-direct {p0, v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V

    .line 488
    return-void

    .line 492
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    if-nez v8, :cond_6

    .line 494
    const-string v0, "Writing (handle, uid) to shared prefs Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 496
    invoke-direct {p0, v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V

    .line 497
    return-void

    .line 501
    :cond_6
    iget-object v8, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mClientDeviceId:Ljava/lang/String;

    invoke-interface {v7, v8, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    if-nez v8, :cond_7

    .line 503
    const-string v0, "Writing (identifier, handle) to shared prefs Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 505
    invoke-direct {p0, v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V

    .line 506
    return-void

    .line 509
    :cond_7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending handle: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_8
    iput-wide p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandle:J

    .line 513
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionKey:Landroid/car/encryptionrunner/Key;

    .line 514
    invoke-static {p1, p2}, Lcom/android/car/Utils;->longToBytes(J)[B

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/car/encryptionrunner/Key;->encryptData([B)[B

    move-result-object v8

    sget-object v9, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 513
    invoke-virtual {v0, v1, v8, v9, v3}, Lcom/android/car/trust/CarTrustAgentBleManager;->sendEnrollmentMessage(Landroid/bluetooth/BluetoothDevice;[BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)V

    .line 516
    return-void

    .line 443
    .end local v2    # "sharedPrefs":Landroid/content/SharedPreferences;
    .end local v4    # "deviceInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "clientDeviceName":Ljava/lang/String;
    .end local v6    # "log":Ljava/lang/StringBuffer;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_a

    .line 444
    const-string v0, "Device disconnected before sending back handle.  Enrollment incomplete"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_a
    if-nez p3, :cond_b

    .line 448
    const-string v0, "Unexpected: Escrow Token activation failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_b
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 451
    invoke-direct {p0, v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V

    .line 452
    return-void
.end method

.method onEscrowTokenAdded([BJI)V
    .locals 5
    .param p1, "token"    # [B
    .param p2, "handle"    # J
    .param p4, "uid"    # I

    .line 372
    const-string v0, "CarTrustAgentEnroll"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEscrowTokenAdded handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    .line 377
    const-string v1, "onEscrowTokenAdded() but no remote device connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V

    .line 380
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTokenActiveStateMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    .line 386
    .local v2, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    :try_start_0
    invoke-static {v2}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;->access$200(Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object v3

    invoke-interface {v3, p2, p3}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEscrowTokenAdded(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_1

    .line 387
    :catch_0
    move-exception v3

    .line 388
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "onEscrowTokenAdded dispatch failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v2    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 391
    :cond_2
    return-void
.end method

.method onEscrowTokenRemoved(JI)V
    .locals 10
    .param p1, "handle"    # J
    .param p3, "uid"    # I

    .line 397
    const/4 v0, 0x3

    const-string v1, "CarTrustAgentEnroll"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEscrowTokenRemoved handle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    .line 402
    .local v3, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    :try_start_0
    invoke-static {v3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;->access$200(Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEscrowTokenRemoved(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_1

    .line 403
    :catch_0
    move-exception v4

    .line 404
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "onEscrowTokenRemoved dispatch failed"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v3    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v2}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 408
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 409
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 411
    .local v4, "deviceInfos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 412
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 413
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 414
    .local v6, "deviceIdAndInfo":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->extractDeviceInfo(Ljava/lang/String;)Landroid/car/trust/TrustedDeviceInfo;

    move-result-object v7

    .line 415
    .local v7, "info":Landroid/car/trust/TrustedDeviceInfo;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/car/trust/TrustedDeviceInfo;->getHandle()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-nez v8, :cond_4

    .line 416
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing trusted device: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_2
    invoke-static {v6}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->extractDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "clientDeviceId":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-wide/16 v8, -0x1

    invoke-interface {v2, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-nez v8, :cond_3

    .line 421
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 424
    goto :goto_3

    .line 426
    .end local v0    # "clientDeviceId":Ljava/lang/String;
    .end local v6    # "deviceIdAndInfo":Ljava/lang/String;
    .end local v7    # "info":Landroid/car/trust/TrustedDeviceInfo;
    :cond_4
    goto :goto_2

    .line 427
    :cond_5
    :goto_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_6

    .line 429
    const-string v0, "EscrowToken removed, but shared prefs update failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_6
    return-void
.end method

.method onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 544
    const-string v0, "REMOTE_DEVICE_CONNECTED"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteDeviceConnected (addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->resetEncryptionState()V

    .line 547
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandle:J

    .line 548
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 553
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    :try_start_1
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->access$300(Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;)Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/trust/ICarTrustAgentBleCallback;->onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    goto :goto_1

    .line 554
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarTrustAgentEnroll"

    const-string v4, "onRemoteDeviceConnected dispatch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopEnrollmentAdvertising()V

    .line 559
    return-void

    .line 550
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 562
    const-string v0, "CarTrustAgentEnroll"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device Disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Enrollment State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Encryption State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTrustAgentEnroll"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
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

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enrollment State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EncryptionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->resetEncryptionState()V

    .line 570
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mHandle:J

    .line 571
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mRemoteEnrollmentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 573
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 576
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    :try_start_1
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->access$300(Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;)Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/trust/ICarTrustAgentBleCallback;->onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 579
    goto :goto_1

    .line 577
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarTrustAgentEnroll"

    const-string v4, "onRemoteDeviceDisconnected dispatch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 581
    :cond_1
    return-void

    .line 573
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/trust/ICarTrustAgentBleCallback;

    monitor-enter p0

    .line 862
    if-eqz p1, :cond_1

    .line 867
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->findBleStateClientLocked(Landroid/car/trust/ICarTrustAgentBleCallback;)Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    move-result-object v0

    .line 868
    .local v0, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    if-nez v0, :cond_0

    .line 869
    new-instance v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    invoke-direct {v1, p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;-><init>(Lcom/android/car/trust/CarTrustAgentEnrollmentService;Landroid/car/trust/ICarTrustAgentBleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 871
    :try_start_1
    invoke-interface {p1}, Landroid/car/trust/ICarTrustAgentBleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    nop

    .line 876
    :try_start_2
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    .end local p0    # "this":Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CarTrustAgentEnroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot link death recipient to binder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    .line 878
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 861
    .end local v0    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentBleCallback;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 863
    .restart local p1    # "listener":Landroid/car/trust/ICarTrustAgentBleCallback;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 861
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentBleCallback;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V
    .locals 4
    .param p1, "listener"    # Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    monitor-enter p0

    .line 346
    if-eqz p1, :cond_1

    .line 351
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->findEnrollmentStateClientLocked(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    move-result-object v0

    .line 352
    .local v0, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    if-nez v0, :cond_0

    .line 353
    new-instance v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    invoke-direct {v1, p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;-><init>(Lcom/android/car/trust/CarTrustAgentEnrollmentService;Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 355
    :try_start_1
    invoke-interface {p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    nop

    .line 360
    :try_start_2
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    .end local p0    # "this":Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CarTrustAgentEnroll"

    const-string v3, "Cannot link death recipient to binder "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 362
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    .end local v0    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 347
    .restart local p1    # "listener":Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    .line 159
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;->access$000(Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 160
    nop

    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    goto :goto_0

    .line 161
    .end local p0    # "this":Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 162
    .local v1, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->access$100(Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 163
    nop

    .end local v1    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllTrustedDevices(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->getEnrolledDeviceInfosForUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/trust/TrustedDeviceInfo;

    .line 282
    .local v1, "device":Landroid/car/trust/TrustedDeviceInfo;
    invoke-virtual {v1}, Landroid/car/trust/TrustedDeviceInfo;->getHandle()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 283
    .end local v1    # "device":Landroid/car/trust/TrustedDeviceInfo;
    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method public removeEscrowToken(JI)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "uid"    # I

    .line 270
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;->removeEscrowToken(JI)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeEscrowToken (handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method setEncryptionRunner(Landroid/car/encryptionrunner/EncryptionRunner;)V
    .locals 0
    .param p1, "dummyEncryptionRunner"    # Landroid/car/encryptionrunner/EncryptionRunner;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEncryptionRunner:Landroid/car/encryptionrunner/EncryptionRunner;

    .line 155
    return-void
.end method

.method setEnrollmentRequestDelegate(Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

    .line 953
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

    .line 954
    return-void
.end method

.method public setTrustedDeviceEnrollmentEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 295
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "trusted_device_enrollment_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enrollment Failure: Commit to SharedPreferences failed. Enable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarTrustAgentEnroll"

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    return-void
.end method

.method public setTrustedDeviceUnlockEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 312
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->setTrustedDeviceUnlockEnabled(Z)V

    .line 314
    return-void
.end method

.method public startEnrollmentAdvertising()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    const-string v1, "trusted_device_enrollment_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "CarTrustAgentEnroll"

    const-string v1, "Trusted Device Enrollment disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dispatchEnrollmentFailure(I)V

    .line 179
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->stopUnlockAdvertising()V

    .line 183
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->stopEnrollmentAdvertising()V

    .line 185
    const-string v0, "START_ENROLLMENT_ADVERTISING"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V

    .line 186
    const-string v0, "startEnrollmentAdvertising"

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->startEnrollmentAdvertising()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentState:I

    .line 189
    return-void
.end method

.method public stopEnrollmentAdvertising()V
    .locals 1

    .line 196
    const-string v0, "STOP_ENROLLMENT_ADVERTISING"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logEnrollmentEvent(Ljava/lang/String;)V

    .line 197
    const-string v0, "stopEnrollmentAdvertising"

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopEnrollmentAdvertising()V

    .line 199
    return-void
.end method

.method public terminateEnrollmentHandshake()V
    .locals 8

    .line 230
    const-string v0, "terminateEnrollmentHandshake"

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->addEnrollmentServiceLog(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->disconnectRemoteDevice()V

    .line 234
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTokenActiveStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 235
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 238
    .local v2, "isHandleActive":Z
    if-nez v2, :cond_0

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 240
    .local v3, "handle":J
    iget-object v5, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v5}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 241
    .local v5, "uid":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeEscrowToken(JI)V

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 244
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v2    # "isHandleActive":Z
    .end local v3    # "handle":J
    .end local v5    # "uid":I
    :cond_0
    goto :goto_0

    .line 245
    :cond_1
    return-void
.end method

.method public declared-synchronized unregisterBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/trust/ICarTrustAgentBleCallback;

    monitor-enter p0

    .line 907
    if-eqz p1, :cond_1

    .line 911
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->findBleStateClientLocked(Landroid/car/trust/ICarTrustAgentBleCallback;)Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    move-result-object v0

    .line 912
    .local v0, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    if-nez v0, :cond_0

    .line 913
    const-string v1, "CarTrustAgentEnroll"

    const-string v2, "unregisterBleCallback(): listener was not previously registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    monitor-exit p0

    return-void

    .line 917
    .end local p0    # "this":Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/car/trust/ICarTrustAgentBleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 918
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mBleStateChangeClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    .line 906
    .end local v0    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentBleCallback;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 908
    .restart local p1    # "listener":Landroid/car/trust/ICarTrustAgentBleCallback;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentBleCallback;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    monitor-enter p0

    .line 840
    if-eqz p1, :cond_1

    .line 844
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->findEnrollmentStateClientLocked(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;

    move-result-object v0

    .line 845
    .local v0, "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    if-nez v0, :cond_0

    .line 846
    const-string v1, "CarTrustAgentEnroll"

    const-string v2, "unregisterEnrollmentCallback(): listener was not previously registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    monitor-exit p0

    return-void

    .line 850
    .end local p0    # "this":Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 851
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->mEnrollmentStateClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    monitor-exit p0

    return-void

    .line 839
    .end local v0    # "client":Lcom/android/car/trust/CarTrustAgentEnrollmentService$EnrollmentStateClient;
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 841
    .restart local p1    # "listener":Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 839
    .end local p1    # "listener":Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    :goto_0
    monitor-exit p0

    throw p1
.end method
