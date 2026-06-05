.class public Lcom/android/car/BluetoothDeviceConnectionPolicy;
.super Ljava/lang/Object;
.source "BluetoothDeviceConnectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceConnectionPolicy"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;

.field private final mCarBluetoothService:Lcom/android/car/CarBluetoothService;

.field private mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field private final mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "BluetoothDeviceConnectionPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/android/car/CarBluetoothService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bluetoothService"    # Lcom/android/car/CarBluetoothService;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    .line 153
    iput p2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserId:I

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    .line 155
    iput-object p3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothService:Lcom/android/car/CarBluetoothService;

    .line 156
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 157
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 40
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->isBluetoothPersistedOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 40
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->enableBluetooth()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 40
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 40
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->disableBluetooth()V

    return-void
.end method

.method public static create(Landroid/content/Context;ILcom/android/car/CarBluetoothService;)Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "bluetoothService"    # Lcom/android/car/CarBluetoothService;

    .line 135
    :try_start_0
    new-instance v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/car/BluetoothDeviceConnectionPolicy;-><init>(Landroid/content/Context;ILcom/android/car/CarBluetoothService;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private disableBluetooth()V
    .locals 2

    .line 242
    const-string v0, "Disable bluetooth, do not persist state across reboot"

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "BluetoothDeviceConnectionPolicy"

    const-string v1, "Cannot disable Bluetooth adapter. The object is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void

    .line 247
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    .line 248
    return-void
.end method

.method private enableBluetooth()V
    .locals 2

    .line 227
    const-string v0, "Enable bluetooth adapter"

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "BluetoothDeviceConnectionPolicy"

    const-string v1, "Cannot enable Bluetooth adapter. The object is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 233
    return-void
.end method

.method private isBluetoothPersistedOn()Z
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    const-string v1, "bluetooth_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 262
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "BluetoothDeviceConnectionPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public connectDevices()V
    .locals 1

    .line 209
    const-string v0, "Connect devices for each profile"

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothService:Lcom/android/car/CarBluetoothService;

    invoke-virtual {v0}, Lcom/android/car/CarBluetoothService;->connectDevices()V

    .line 211
    return-void
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    monitor-enter p0

    .line 254
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BluetoothDeviceConnectionPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 253
    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .end local p1    # "writer":Ljava/io/PrintWriter;
    .end local p2    # "indent":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCarPowerStateListener()Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 7

    monitor-enter p0

    .line 164
    :try_start_0
    const-string v0, "init()"

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$1;)V

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "profileFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 172
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    invoke-virtual {v1, v2}, Landroid/car/hardware/power/CarPowerManager;->setListenerWithCompletion(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;)V

    goto :goto_0

    .line 175
    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    :cond_0
    const-string v1, "Failed to get car power manager"

    invoke-static {v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->connectDevices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    monitor-exit p0

    return-void

    .line 163
    .end local v0    # "profileFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 194
    :try_start_0
    const-string v0, "release()"

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {v0}, Landroid/car/hardware/power/CarPowerManager;->clearListener()V

    .line 197
    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 199
    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_1
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
