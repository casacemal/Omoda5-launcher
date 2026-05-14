.class public Lcom/chery/window/UiVisibility;
.super Lcom/chery/window/IUiVisibilityListener$Stub;
.source "UiVisibility.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;,
        Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;,
        Lcom/chery/window/UiVisibility$BindStatusListener;
    }
.end annotation


# static fields
.field public static final FLAG_UI_CARPLAY:I = 0x20

.field public static final FLAG_UI_DIALER:I = 0x10

.field public static final FLAG_UI_HVAC:I = 0x8

.field public static final FLAG_UI_NAVIGATION_BAR:I = 0x1

.field public static final FLAG_UI_NO:I = 0x0

.field public static final FLAG_UI_QUICK_SETTINGS:I = 0x4

.field public static final FLAG_UI_STATUS_BAR:I = 0x2

.field public static final TAG:Ljava/lang/String; = "UiVisibility"

.field public static final UI_INVISIBLE:I = 0x0

.field public static final UI_VISIBILITY_ACTION:Ljava/lang/String; = "com.android.systemui.action.uivisibility"

.field public static final UI_VISIBLE_FULL:I = 0x2

.field public static final UI_VISIBLE_MINI:I = 0x1


# instance fields
.field private mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

.field private mConnectionState:Z

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private mProxyTargetUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;

.field private mProxyUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;

.field private mTag:Ljava/lang/String;

.field private mTargetUi:Z

.field private mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/chery/window/IUiVisibilityListener$Stub;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/chery/window/UiVisibility;->mContext:Landroid/content/Context;

    .line 53
    iput p2, p0, Lcom/chery/window/UiVisibility;->mFlags:I

    .line 54
    iput-object p3, p0, Lcom/chery/window/UiVisibility;->mTag:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/window/UiVisibility;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/chery/window/UiVisibility;->mConnectionState:Z

    .line 57
    iput-boolean p4, p0, Lcom/chery/window/UiVisibility;->mTargetUi:Z

    return-void
.end method

.method private bind()V
    .locals 5

    const-string v0, "UiVisibility"

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.SystemUIService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.uivisibility"

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v2, "bind uivisibility service"

    .line 96
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/chery/window/UiVisibility;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
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

.method private linkDeath()V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    invoke-interface {v0}, Lcom/chery/window/IWindowUiVisibility;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerUiListener()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_0

    const-string v0, "UiVisibility"

    const-string v1, "mUiVisibilityApi is null"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    goto :goto_0

    .line 160
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/chery/window/UiVisibility;->mFlags:I

    iget-object v2, p0, Lcom/chery/window/UiVisibility;->mTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/chery/window/UiVisibility;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/chery/window/IWindowUiVisibility;->registerUiListener(Lcom/chery/window/IUiVisibilityListener;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerUiTargetListener()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_0

    const-string v0, "UiVisibility"

    const-string v1, "mUiVisibilityApi is null"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    goto :goto_0

    .line 202
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/chery/window/UiVisibility;->mFlags:I

    iget-object v2, p0, Lcom/chery/window/UiVisibility;->mTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/chery/window/UiVisibility;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/chery/window/IWindowUiVisibility;->registerUiTarget(Lcom/chery/window/IUiVisibilityListener;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unbind()V
    .locals 2

    const-string v0, "UiVisibility"

    const-string v1, "unbind"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private unlinkDeath()V
    .locals 2

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/chery/window/UiVisibility;->mConnectionState:Z

    .line 118
    iget-object v1, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v1}, Lcom/chery/window/IWindowUiVisibility;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    :cond_0
    return-void
.end method

.method private unregisterUiListener()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_0

    const-string v0, "UiVisibility"

    const-string v1, "mUiVisibilityApi is null"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    goto :goto_0

    .line 174
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/chery/window/UiVisibility;->mFlags:I

    invoke-interface {v0, p0, v1}, Lcom/chery/window/IWindowUiVisibility;->unregisterUiListener(Lcom/chery/window/IUiVisibilityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unregisterUiTargetListener()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_0

    const-string v0, "UiVisibility"

    const-string v1, "mUiVisibilityApi is null"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    goto :goto_0

    .line 216
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/chery/window/UiVisibility;->mFlags:I

    invoke-interface {v0, p0, v1}, Lcom/chery/window/IWindowUiVisibility;->unregisterUiTarget(Lcom/chery/window/IUiVisibilityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->unlinkDeath()V

    .line 260
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    return-void
.end method

.method public init(Lcom/chery/window/UiVisibility$BindStatusListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/chery/window/UiVisibility;->mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

    .line 62
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/chery/window/UiVisibility;->mConnectionState:Z

    return p0
.end method

.method public isUiVisibility(I)I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_0

    const-string p1, "UiVisibility"

    const-string v0, "mUiVisibilityApi is null"

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    goto :goto_0

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/chery/window/IWindowUiVisibility;->isUiVisibility(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    const/4 v0, 0x1

    if-nez p1, :cond_3

    if-eqz p2, :cond_0

    .line 226
    invoke-static {p2}, Lcom/chery/window/IWindowUiVisibility$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/window/IWindowUiVisibility;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez p1, :cond_1

    const-string p1, "UiVisibility"

    const-string p2, "mUiVisibilityApi failed to be created"

    .line 229
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :cond_1
    iput-boolean v0, p0, Lcom/chery/window/UiVisibility;->mConnectionState:Z

    .line 233
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->linkDeath()V

    .line 235
    iget-boolean p1, p0, Lcom/chery/window/UiVisibility;->mTargetUi:Z

    if-eqz p1, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->registerUiTargetListener()V

    goto :goto_1

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->registerUiListener()V

    .line 244
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/chery/window/UiVisibility;->mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

    if-eqz p0, :cond_4

    .line 245
    invoke-interface {p0, v0}, Lcom/chery/window/UiVisibility$BindStatusListener;->onBindServiceStatus(Z)V

    :cond_4
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->unlinkDeath()V

    .line 252
    iget-object p0, p0, Lcom/chery/window/UiVisibility;->mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 253
    invoke-interface {p0, p1}, Lcom/chery/window/UiVisibility$BindStatusListener;->onBindServiceStatus(Z)V

    :cond_0
    return-void
.end method

.method public onUiVisibilityChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    iget-boolean v0, p0, Lcom/chery/window/UiVisibility;->mTargetUi:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/chery/window/UiVisibility;->mProxyTargetUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;

    if-eqz p0, :cond_1

    .line 267
    invoke-interface {p0, p1, p2}, Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;->onUiVisibilityChanged(II)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/chery/window/UiVisibility;->mProxyUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;

    if-eqz p0, :cond_1

    .line 272
    invoke-interface {p0, p1, p2}, Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;->onUiVisibilityChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerTargetUiVisibility(Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/chery/window/UiVisibility;->mProxyTargetUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;

    return-void
.end method

.method public registerUiVisibility(Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/chery/window/UiVisibility;->mProxyUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;

    return-void
.end method

.method public setTargetUiVisibility(II)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_0

    const-string p1, "UiVisibility"

    const-string p2, "mUiVisibilityApi is null"

    .line 183
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    goto :goto_0

    .line 188
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/chery/window/UiVisibility;->mTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/chery/window/UiVisibility;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/chery/window/IWindowUiVisibility;->setTargetUiVisibility(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUiVisibility(II)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/chery/window/UiVisibility;->mUiVisibilityApi:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_0

    const-string p1, "UiVisibility"

    const-string p2, "mUiVisibilityApi is null"

    .line 141
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->bind()V

    goto :goto_0

    .line 146
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/chery/window/UiVisibility;->mTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/chery/window/UiVisibility;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/chery/window/IWindowUiVisibility;->setUiVisibility(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public uninit()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/chery/window/UiVisibility;->mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

    .line 79
    iput-object v0, p0, Lcom/chery/window/UiVisibility;->mProxyUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;

    .line 80
    iput-object v0, p0, Lcom/chery/window/UiVisibility;->mProxyTargetUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;

    .line 81
    iget-boolean v0, p0, Lcom/chery/window/UiVisibility;->mTargetUi:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->unregisterUiTargetListener()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->unregisterUiListener()V

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/chery/window/UiVisibility;->unbind()V

    return-void
.end method
