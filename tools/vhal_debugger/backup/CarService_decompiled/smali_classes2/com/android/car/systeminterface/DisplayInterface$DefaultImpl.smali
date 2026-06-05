.class public Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "DisplayInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/DisplayInterface;
.implements Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/DisplayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayStateSet:Z

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mLastBrightnessLevel:I

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mService:Lcom/android/car/CarPowerManagementService;

.field private final mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/android/car/systeminterface/DisplayInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/car/systeminterface/WakeLockInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeLockInterface"    # Lcom/android/car/systeminterface/WakeLockInterface;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mLastBrightnessLevel:I

    .line 91
    new-instance v0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;

    new-instance v1, Landroid/os/Handler;

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;-><init>(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 99
    new-instance v0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$2;

    invoke-direct {v0, p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$2;-><init>(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 119
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 120
    iput-object p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContext:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 122
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 123
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mInputManager:Landroid/hardware/input/InputManager;

    .line 124
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 125
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    .line 126
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    .line 127
    iput-object p2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    .line 128
    new-instance v0, Landroid/car/userlib/CarUserManagerHelper;

    invoke-direct {v0, p1}, Landroid/car/userlib/CarUserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 129
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0, p0}, Landroid/car/userlib/CarUserManagerHelper;->registerOnUsersUpdateListener(Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    .line 74
    invoke-direct {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->handleMainDisplayChanged()V

    return-void
.end method

.method private handleMainDisplayChanged()V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->isMainDisplayOn()Z

    move-result v0

    .line 151
    .local v0, "isOn":Z
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayStateSet:Z

    if-ne v1, v0, :cond_0

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mService:Lcom/android/car/CarPowerManagementService;

    .line 156
    .local v1, "service":Lcom/android/car/CarPowerManagementService;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v1, v0}, Lcom/android/car/CarPowerManagementService;->handleMainDisplayChanged(Z)V

    .line 158
    return-void

    .line 156
    .end local v1    # "service":Lcom/android/car/CarPowerManagementService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isMainDisplayOn()Z
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 162
    .local v0, "disp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onUsersUpdate()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mService:Lcom/android/car/CarPowerManagementService;

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mLastBrightnessLevel:I

    .line 239
    invoke-virtual {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->refreshDisplayBrightness()V

    .line 240
    return-void
.end method

.method public reconfigureSecondaryDisplays()V
    .locals 9

    .line 244
    nop

    .line 245
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 246
    .local v0, "wm":Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 247
    sget-object v1, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->TAG:Ljava/lang/String;

    const-string v2, "reconfigureSecondaryDisplays IWindowManager not available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 251
    .local v1, "displays":[Landroid/view/Display;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 252
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    .line 253
    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {v4}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    instance-of v5, v5, Landroid/view/DisplayAddress$Physical;

    if-eqz v5, :cond_2

    .line 257
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    .line 260
    .local v5, "displayId":I
    :try_start_0
    invoke-interface {v0, v5}, Landroid/view/IWindowManager;->getWindowingMode(I)I

    move-result v6

    .line 261
    .local v6, "windowingMode":I
    invoke-interface {v0, v5, v6}, Landroid/view/IWindowManager;->setWindowingMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v6    # "windowingMode":I
    goto :goto_1

    .line 262
    :catch_0
    move-exception v6

    .line 263
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "CAR.SERVICE"

    const-string v8, "cannot access IWindowManager"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "displayId":I
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :cond_3
    return-void
.end method

.method public declared-synchronized refreshDisplayBrightness()V
    .locals 5

    monitor-enter p0

    .line 134
    const/16 v0, 0x3ff

    .line 136
    .local v0, "gamma":I
    :try_start_0
    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 139
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 136
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 140
    .local v1, "linear":I
    iget v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    iget v3, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 143
    .end local v1    # "linear":I
    goto :goto_0

    .line 133
    .end local v0    # "gamma":I
    .end local p0    # "this":Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 141
    .restart local v0    # "gamma":I
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1
    const-string v2, "CAR.POWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get SCREEN_BRIGHTNESS:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    mul-int/lit8 v1, v0, 0x64

    add-int/lit16 v1, v1, 0x200

    div-int/lit16 v1, v1, 0x3ff

    .line 145
    .local v1, "percentBright":I
    iget-object v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v2, v1}, Lcom/android/car/CarPowerManagementService;->sendDisplayBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 133
    .end local v0    # "gamma":I
    .end local v1    # "percentBright":I
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public setDisplayBrightness(I)V
    .locals 5
    .param p1, "percentBright"    # I

    .line 167
    iget v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mLastBrightnessLevel:I

    if-ne p1, v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iput p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mLastBrightnessLevel:I

    .line 172
    mul-int/lit16 v0, p1, 0x3ff

    add-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    .line 173
    .local v0, "gamma":I
    iget v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    iget v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result v1

    .line 174
    .local v1, "linear":I
    iget-object v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 178
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 174
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 179
    return-void
.end method

.method public setDisplayState(Z)V
    .locals 7
    .param p1, "on"    # Z

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayStateSet:Z

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/WakeLockInterface;->switchToFullWakeLock()V

    .line 209
    const-string v0, "CAR.POWER"

    const-string v1, "on display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/WakeLockInterface;->switchToPartialWakeLock()V

    .line 213
    const-string v0, "CAR.POWER"

    const-string v1, "off display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 218
    .local v3, "deviceId":I
    iget-object v4, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 219
    .local v4, "inputDevice":Landroid/view/InputDevice;
    if-eqz v4, :cond_2

    .line 220
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    const/16 v6, 0x1002

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 222
    if-eqz p1, :cond_1

    .line 223
    iget-object v5, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v3}, Landroid/hardware/input/InputManager;->enableInputDevice(I)V

    goto :goto_2

    .line 225
    :cond_1
    iget-object v5, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v3}, Landroid/hardware/input/InputManager;->disableInputDevice(I)V

    .line 217
    .end local v3    # "deviceId":I
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 229
    :cond_3
    return-void

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startDisplayStateMonitoring(Lcom/android/car/CarPowerManagementService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/car/CarPowerManagementService;

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iput-object p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mService:Lcom/android/car/CarPowerManagementService;

    .line 185
    invoke-direct {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->isMainDisplayOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayStateSet:Z

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 188
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    .line 187
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p1}, Lcom/android/car/CarPowerManagementService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->refreshDisplayBrightness()V

    .line 194
    return-void

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopDisplayStateMonitoring()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 200
    return-void
.end method
