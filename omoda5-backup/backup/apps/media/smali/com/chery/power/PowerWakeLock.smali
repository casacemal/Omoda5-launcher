.class public Lcom/chery/power/PowerWakeLock;
.super Lcom/chery/power/IWakeLockListener$Stub;
.source "PowerWakeLock.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;,
        Lcom/chery/power/PowerWakeLock$BindStatusListener;
    }
.end annotation


# static fields
.field public static final FLAG_RELEASE_AFTER_WAKE_KEYGUARD:I = 0x2

.field public static final FLAG_RELEASE_AFTER_WAKE_SCREEN_OFF:I = 0x1

.field public static final FLAG_RELEASE_AFTER_WAKE_SCREEN_OFF_KEYGUARD:I = 0x3

.field public static final FLAG_WAKE_KEYGUARD:I = 0x20

.field public static final FLAG_WAKE_NO:I = 0x0

.field public static final FLAG_WAKE_SCREEN_OFF:I = 0x10

.field public static final TAG:Ljava/lang/String; = "PowerWakeLock"

.field public static final WAKE_LOCK_ACTION:Ljava/lang/String; = "com.android.systemui.action.wakelock"

.field public static final WAKE_LOCK_PKG:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field private mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

.field private mConnectionState:Z

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private mPowerApi:Lcom/chery/power/IPowerWakeLock;

.field private mProxyWakeLockListener:Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/power/IWakeLockListener$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/chery/power/PowerWakeLock;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/chery/power/PowerWakeLock;->mFlags:I

    .line 49
    iput-object p3, p0, Lcom/chery/power/PowerWakeLock;->mTag:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/power/PowerWakeLock;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/chery/power/PowerWakeLock;->mConnectionState:Z

    return-void
.end method

.method private acquire(I)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/chery/power/PowerWakeLock;->mPowerApi:Lcom/chery/power/IPowerWakeLock;

    if-nez v0, :cond_0

    const-string p1, "PowerWakeLock"

    const-string v0, "mPowerApi is null"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->bind()V

    goto :goto_0

    .line 168
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/chery/power/PowerWakeLock;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/chery/power/PowerWakeLock;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/chery/power/IPowerWakeLock;->acquireWakeLock(Lcom/chery/power/IWakeLockListener;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private bind()V
    .locals 5

    const-string v0, "PowerWakeLock"

    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.keyguard.KeyguardViewerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.wakelock"

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v2, "bind wakelock service"

    .line 126
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/chery/power/PowerWakeLock;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private hasWakeLock(I)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/chery/power/PowerWakeLock;->mPowerApi:Lcom/chery/power/IPowerWakeLock;

    if-nez v0, :cond_0

    const-string p1, "PowerWakeLock"

    const-string v0, "mPowerApi is null"

    .line 148
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->bind()V

    goto :goto_0

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/chery/power/IPowerWakeLock;->hasWakeLock(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private release(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/chery/power/PowerWakeLock;->mPowerApi:Lcom/chery/power/IPowerWakeLock;

    if-nez v0, :cond_0

    const-string p1, "PowerWakeLock"

    const-string v0, "mPowerApi is null"

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->bind()V

    goto :goto_0

    .line 182
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/chery/power/IPowerWakeLock;->releaseWakeLock(Lcom/chery/power/IWakeLockListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unbind()V
    .locals 2

    const-string v0, "PowerWakeLock"

    const-string v1, "unbind"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/chery/power/PowerWakeLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private unlinkDeath()V
    .locals 2

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/chery/power/PowerWakeLock;->mConnectionState:Z

    .line 140
    iget-object v1, p0, Lcom/chery/power/PowerWakeLock;->mPowerApi:Lcom/chery/power/IPowerWakeLock;

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1}, Lcom/chery/power/IPowerWakeLock;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/chery/power/PowerWakeLock;->mPowerApi:Lcom/chery/power/IPowerWakeLock;

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 1

    .line 103
    iget v0, p0, Lcom/chery/power/PowerWakeLock;->mFlags:I

    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->acquire(I)V

    return-void
.end method

.method public binderDied()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->unlinkDeath()V

    .line 222
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->bind()V

    return-void
.end method

.method public checkScreenOff()Z
    .locals 1

    const/16 v0, 0x10

    .line 99
    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->hasWakeLock(I)Z

    move-result p0

    return p0
.end method

.method public init(Lcom/chery/power/PowerWakeLock$BindStatusListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/chery/power/PowerWakeLock;->mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

    .line 56
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->bind()V

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/chery/power/PowerWakeLock;->mConnectionState:Z

    return p0
.end method

.method public isScreenLock()Z
    .locals 1

    const/16 v0, 0x20

    .line 78
    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->hasWakeLock(I)Z

    move-result p0

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/chery/power/PowerWakeLock;->mPowerApi:Lcom/chery/power/IPowerWakeLock;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 192
    invoke-static {p2}, Lcom/chery/power/IPowerWakeLock$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/power/IPowerWakeLock;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/chery/power/PowerWakeLock;->mPowerApi:Lcom/chery/power/IPowerWakeLock;

    if-nez p1, :cond_1

    const-string p1, "PowerWakeLock"

    const-string p2, "Wake lock failed to be created"

    .line 194
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    :cond_1
    iput-boolean v0, p0, Lcom/chery/power/PowerWakeLock;->mConnectionState:Z

    .line 199
    :try_start_0
    invoke-interface {p1}, Lcom/chery/power/IPowerWakeLock;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 206
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/chery/power/PowerWakeLock;->mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

    if-eqz p0, :cond_3

    .line 207
    invoke-interface {p0, v0}, Lcom/chery/power/PowerWakeLock$BindStatusListener;->onBindServiceStatus(Z)V

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->unlinkDeath()V

    .line 214
    iget-object p0, p0, Lcom/chery/power/PowerWakeLock;->mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 215
    invoke-interface {p0, p1}, Lcom/chery/power/PowerWakeLock$BindStatusListener;->onBindServiceStatus(Z)V

    :cond_0
    return-void
.end method

.method public onWakeLockRelease(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/chery/power/PowerWakeLock;->mProxyWakeLockListener:Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {p0, p1}, Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;->onWakeLockRelease(I)V

    :cond_0
    return-void
.end method

.method public register(Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/chery/power/PowerWakeLock;->mProxyWakeLockListener:Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;

    return-void
.end method

.method public releaseWakeLock()V
    .locals 1

    .line 107
    iget v0, p0, Lcom/chery/power/PowerWakeLock;->mFlags:I

    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->release(I)V

    return-void
.end method

.method public screenLock()V
    .locals 1

    const/16 v0, 0x20

    .line 74
    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->release(I)V

    return-void
.end method

.method public screenOff()V
    .locals 1

    const/16 v0, 0x10

    .line 92
    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->release(I)V

    return-void
.end method

.method public screenOn()V
    .locals 1

    const/16 v0, 0x10

    .line 85
    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->acquire(I)V

    return-void
.end method

.method public screenUnlock()V
    .locals 1

    const/16 v0, 0x20

    .line 67
    invoke-direct {p0, v0}, Lcom/chery/power/PowerWakeLock;->acquire(I)V

    return-void
.end method

.method public uninit()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/chery/power/PowerWakeLock;->mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

    .line 116
    iput-object v0, p0, Lcom/chery/power/PowerWakeLock;->mProxyWakeLockListener:Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;

    .line 117
    invoke-direct {p0}, Lcom/chery/power/PowerWakeLock;->unbind()V

    return-void
.end method
