.class public Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;
.super Ljava/lang/Object;
.source "DumpUsbScannerManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/util/DumpUsbScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbScannerConnection"
.end annotation


# instance fields
.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mUsbScannerListener:Landroid/media/IUsbScannerEventListener;

.field private mUsbService:Landroid/media/IUsbScannerService;

.field final synthetic this$0:Lcom/chery/media/util/DumpUsbScannerManager;


# direct methods
.method constructor <init>(Lcom/chery/media/util/DumpUsbScannerManager;Landroid/content/Context;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;

    invoke-direct {v0, p0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)V

    iput-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 131
    iput-object p2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mContext:Landroid/content/Context;

    .line 133
    new-instance p2, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;Lcom/chery/media/util/DumpUsbScannerManager;)V

    iput-object p2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbScannerListener:Landroid/media/IUsbScannerEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Landroid/media/IUsbScannerService;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    return p0
.end method

.method static synthetic access$500(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Landroid/content/Context;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public connect()V
    .locals 5

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IUsbScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.media"

    const-string v3, "com.android.providers.media.UsbScannerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 208
    iget-object v1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v1}, Lcom/chery/media/util/DumpUsbScannerManager;->access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;

    invoke-direct {v2, p0, v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;Landroid/content/Intent;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbScannerListener:Landroid/media/IUsbScannerEventListener;

    invoke-virtual {p0, v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->unregisterListener(Landroid/media/IUsbScannerEventListener;)V

    .line 227
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPriority(II)I
    .locals 3

    .line 272
    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    const-string v1, "DumpUsbScannerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "can\'t get priority, null service"

    .line 273
    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 277
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    invoke-interface {p0, p1, p2}, Landroid/media/IUsbScannerService;->getPriority(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception in getPriority "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public getScanStatus(II)I
    .locals 3

    .line 288
    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    const-string v1, "DumpUsbScannerManager"

    const/16 v2, 0x20

    if-nez v0, :cond_0

    const-string p0, "can\'t get scan status(), null service"

    .line 289
    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 293
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    invoke-interface {p0, p1, p2}, Landroid/media/IUsbScannerService;->getScanStatus(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception in getScanStatus "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "DumpUsbScannerManager"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 312
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    .line 316
    invoke-static {p2}, Landroid/media/IUsbScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IUsbScannerService;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    .line 317
    iget-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbScannerListener:Landroid/media/IUsbScannerEventListener;

    invoke-virtual {p0, p1}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->registerListener(Landroid/media/IUsbScannerEventListener;)V

    .line 319
    iget-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {p1}, Lcom/chery/media/util/DumpUsbScannerManager;->access$600(Lcom/chery/media/util/DumpUsbScannerManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;

    .line 320
    invoke-interface {p2}, Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;->onConnected()V

    goto :goto_1

    .line 322
    :cond_0
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DumpUsbScannerManager"

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 327
    iput-boolean p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    .line 329
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {p0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$600(Lcom/chery/media/util/DumpUsbScannerManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;

    .line 330
    invoke-interface {p1}, Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;->onDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerListener(Landroid/media/IUsbScannerEventListener;)V
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    const-string v1, "DumpUsbScannerManager"

    if-nez v0, :cond_0

    const-string p0, "registerListener(), null service"

    .line 236
    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    invoke-interface {p0, p1}, Landroid/media/IUsbScannerService;->registerListener(Landroid/media/IUsbScannerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception in registerListener "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPriority(III)V
    .locals 2

    .line 259
    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    const-string v1, "DumpUsbScannerManager"

    if-nez v0, :cond_0

    const-string p0, "can\'t set priority, null service"

    .line 260
    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/IUsbScannerService;->setPriority(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception in setPriority "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterListener(Landroid/media/IUsbScannerEventListener;)V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mConnected:Z

    const-string v1, "DumpUsbScannerManager"

    if-nez v0, :cond_0

    const-string p0, "unregisterListener(), null service"

    .line 248
    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->mUsbService:Landroid/media/IUsbScannerService;

    invoke-interface {p0, p1}, Landroid/media/IUsbScannerService;->unregisterListener(Landroid/media/IUsbScannerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception in unregisterListener "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
