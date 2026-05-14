.class public Lcom/chery/libvr/manager/platformmanager/SysEventManager;
.super Ljava/lang/Object;
.source "SysEventManager.java"


# static fields
.field private static volatile mInstance:Lcom/chery/libvr/manager/platformmanager/SysEventManager;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/chery/libvr/manager/platformmanager/SysEventManager;

    const-string v1, "VR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/SysEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/chery/libvr/manager/platformmanager/SysEventManager;
    .locals 2

    .line 16
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/SysEventManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/SysEventManager;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/chery/libvr/manager/platformmanager/SysEventManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/chery/libvr/manager/platformmanager/SysEventManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/SysEventManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/chery/libvr/manager/platformmanager/SysEventManager;

    invoke-direct {v1}, Lcom/chery/libvr/manager/platformmanager/SysEventManager;-><init>()V

    sput-object v1, Lcom/chery/libvr/manager/platformmanager/SysEventManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/SysEventManager;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/SysEventManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/SysEventManager;

    return-object v0
.end method


# virtual methods
.method public sentEvent(Landroid/content/Context;I)V
    .locals 2

    .line 27
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/SysEventManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sentEvent eventType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.chery.cerence"

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.chery.cerence.action.EVENT"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EVENT"

    .line 31
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
