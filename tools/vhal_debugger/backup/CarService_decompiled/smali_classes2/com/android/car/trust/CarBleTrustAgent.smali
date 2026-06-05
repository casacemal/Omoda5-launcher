.class public Lcom/android/car/trust/CarBleTrustAgent;
.super Landroid/service/trust/TrustAgentService;
.source "CarBleTrustAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

.field private mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

.field private mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

.field private final mEnrollDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

.field private mIsDeviceLocked:Z

.field private final mUnlockDelegate:Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/car/trust/CarBleTrustAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/service/trust/TrustAgentService;-><init>()V

    .line 225
    new-instance v0, Lcom/android/car/trust/CarBleTrustAgent$1;

    invoke-direct {v0, p0}, Lcom/android/car/trust/CarBleTrustAgent$1;-><init>(Lcom/android/car/trust/CarBleTrustAgent;)V

    iput-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v0, Lcom/android/car/trust/CarBleTrustAgent$2;

    invoke-direct {v0, p0}, Lcom/android/car/trust/CarBleTrustAgent$2;-><init>(Lcom/android/car/trust/CarBleTrustAgent;)V

    iput-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mEnrollDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

    .line 301
    new-instance v0, Lcom/android/car/trust/CarBleTrustAgent$3;

    invoke-direct {v0, p0}, Lcom/android/car/trust/CarBleTrustAgent$3;-><init>(Lcom/android/car/trust/CarBleTrustAgent;)V

    iput-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mUnlockDelegate:Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/trust/CarBleTrustAgent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/trust/CarBleTrustAgent;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarBleTrustAgent;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/trust/CarBleTrustAgent;I[BJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/trust/CarBleTrustAgent;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # J

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/trust/CarBleTrustAgent;->unlockUserInternally(I[BJ)V

    return-void
.end method

.method private hasTrustedDevice(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 202
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 203
    return v1

    .line 205
    :cond_0
    nop

    .line 206
    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->getEnrolledDeviceInfosForUser(I)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "trustedDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/car/trust/TrustedDeviceInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onBluetoothStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 236
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mIsDeviceLocked:Z

    if-nez v0, :cond_1

    .line 240
    return-void

    .line 242
    :cond_1
    const-string v0, "BLUETOOTH_STATE_CHANGED"

    invoke-static {v0, p1}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;I)V

    .line 243
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 246
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/car/trust/CarBleTrustAgent;->hasTrustedDevice(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    invoke-virtual {v1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->startUnlockAdvertising()V

    goto :goto_0

    .line 251
    .end local v0    # "uid":I
    :cond_3
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth Adapter Off in lock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->cleanupBleService()V

    .line 259
    :cond_4
    :goto_0
    return-void
.end method

.method private setEnrollmentRequestDelegate()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    if-nez v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mEnrollDelegate:Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;

    invoke-virtual {v0, v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->setEnrollmentRequestDelegate(Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;)V

    .line 187
    return-void
.end method

.method private setUnlockRequestDelegate()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mUnlockDelegate:Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;

    invoke-virtual {v0, v1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->setUnlockRequestDelegate(Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;)V

    .line 194
    return-void
.end method

.method private unlockUserInternally(I[BJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "token"    # [B
    .param p3, "handle"    # J

    .line 211
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to unlock user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/car/trust/CarBleTrustAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 214
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v2, "User currently unlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_0
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v2, "User currently locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "um":Landroid/os/UserManager;
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p3, p4, p2, v0}, Lcom/android/car/trust/CarBleTrustAgent;->unlockUserWithToken(J[BLandroid/os/UserHandle;)V

    .line 221
    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    const-string v3, "Granting trust from escrow token"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/car/trust/CarBleTrustAgent;->grantTrust(Ljava/lang/CharSequence;JI)V

    .line 223
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 61
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-super {p0}, Landroid/service/trust/TrustAgentService;->onCreate()V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/car/trust/CarBleTrustAgent;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    const-class v1, Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/trust/CarTrustedDeviceService;

    iput-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    .line 73
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    if-nez v1, :cond_1

    .line 74
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v2, "Cannot retrieve the Trusted device Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_1
    nop

    .line 78
    invoke-virtual {v1}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    .line 79
    invoke-direct {p0}, Lcom/android/car/trust/CarBleTrustAgent;->setEnrollmentRequestDelegate()V

    .line 80
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v1}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    .line 81
    invoke-direct {p0}, Lcom/android/car/trust/CarBleTrustAgent;->setUnlockRequestDelegate()V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/car/trust/CarBleTrustAgent;->setManagingTrust(Z)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 87
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v1, "Car Trust agent shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-super {p0}, Landroid/service/trust/TrustAgentService;->onDestroy()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    .line 92
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/car/trust/CarBleTrustAgent;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_1
    return-void
.end method

.method public onDeviceLocked()V
    .locals 5

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 101
    .local v0, "uid":I
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceLocked Current user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mIsDeviceLocked:Z

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 107
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v2, "Not starting Unlock Advertising yet, since Bluetooth Adapter is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    return-void

    .line 112
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/car/trust/CarBleTrustAgent;->hasTrustedDevice(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 113
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    sget-object v1, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not starting Unlock Advertising yet, since current user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "has no trusted device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3
    return-void

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {v1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->startUnlockAdvertising()V

    .line 122
    :cond_5
    return-void
.end method

.method public onDeviceUnlocked()V
    .locals 4

    .line 126
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceUnlocked Current user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mIsDeviceLocked:Z

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 132
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const-string v1, "Not stopping Unlock Advertising, since Bluetooth Adapter is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    return-void

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->stopUnlockAdvertising()V

    .line 141
    :cond_3
    return-void
.end method

.method public onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "handle"    # J
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 172
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEscrowTokenAdded handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {p1}, Lcom/android/car/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    if-nez v0, :cond_1

    .line 177
    return-void

    .line 179
    :cond_1
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onEscrowTokenAdded([BJI)V

    .line 180
    return-void
.end method

.method public onEscrowTokenRemoved(JZ)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "successful"    # Z

    .line 145
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEscrowTokenRemoved handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    if-nez v0, :cond_1

    .line 149
    return-void

    .line 151
    :cond_1
    if-eqz p3, :cond_2

    .line 152
    nop

    .line 153
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 152
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onEscrowTokenRemoved(JI)V

    .line 155
    :cond_2
    return-void
.end method

.method public onEscrowTokenStateReceived(JI)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "tokenState"    # I

    .line 159
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/car/trust/CarBleTrustAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEscrowTokenStateReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    if-nez v0, :cond_1

    .line 164
    return-void

    .line 166
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 167
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 166
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onEscrowTokenActiveStateChanged(JZI)V

    .line 168
    return-void
.end method
