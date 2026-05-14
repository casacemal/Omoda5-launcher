.class public Lcom/chery/libvr/manager/platformmanager/VrConfigManager;
.super Ljava/lang/Object;
.source "VrConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;
    }
.end annotation


# static fields
.field private static volatile mInstance:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsInitSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    const-string v1, "VR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/chery/libvr/manager/platformmanager/VrConfigManager;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->mIsInitSuccess:Z

    return p1
.end method

.method public static getInstance()Lcom/chery/libvr/manager/platformmanager/VrConfigManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    invoke-direct {v1}, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;-><init>()V

    sput-object v1, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    return-object v0
.end method


# virtual methods
.method public deInitVr()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->deInitVr()V

    return-void
.end method

.method public initVr(Landroid/content/Context;Lcom/chery/libvr/bean/InitListener;)V
    .locals 2

    .line 35
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    move-result-object v0

    new-instance v1, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;

    invoke-direct {v1, p0, p2}, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;-><init>(Lcom/chery/libvr/manager/platformmanager/VrConfigManager;Lcom/chery/libvr/bean/InitListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->initVr(Landroid/content/Context;Lcom/chery/libvr/bean/InitListener;)V

    return-void
.end method

.method public isInitSuccess()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->mIsInitSuccess:Z

    return p0
.end method
