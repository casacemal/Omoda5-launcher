.class public Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;
.super Lcom/chery/libvr/apps/IVrFunctionBinderPool$Stub;
.source "VrFunctionBinderPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/serverbinder/VrFunctionBinderPool$SingleTonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCbs:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/chery/libvr/apps/IVrInitStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInitStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;

    const-string v1, "VR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/chery/libvr/apps/IVrFunctionBinderPool$Stub;-><init>()V

    .line 22
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mCbs:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/libvr/serverbinder/VrFunctionBinderPool$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;
    .locals 1

    .line 35
    invoke-static {}, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool$SingleTonHolder;->access$100()Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getVrInitStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVrInitStatus pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget p0, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mInitStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyVrInitStatus(I)Z
    .locals 3

    .line 92
    iput p1, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mInitStatus:I

    .line 93
    iget-object v0, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mCbs:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_2

    .line 99
    iget-object v2, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mCbs:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/chery/libvr/apps/IVrInitStatusCallback;

    if-eqz v2, :cond_1

    .line 102
    :try_start_0
    invoke-interface {v2, p1}, Lcom/chery/libvr/apps/IVrInitStatusCallback;->onVrInitStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 104
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    iget-object p0, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mCbs:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/4 p0, 0x1

    return p0
.end method

.method public queryFunctionToolBinder(I)Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    sget-object p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryFunctionToolBinder pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    .line 57
    sget-object p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryFunctionToolBinder no match functionCode -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/chery/libvr/serverbinder/component/VrSettingBinder;->getInstance()Lcom/chery/libvr/serverbinder/component/VrSettingBinder;

    move-result-object p0

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lcom/chery/libvr/serverbinder/component/VrRadioBinder;->getInstance()Lcom/chery/libvr/serverbinder/component/VrRadioBinder;

    move-result-object p0

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/chery/libvr/serverbinder/component/VrNaviBinder;->getInstance()Lcom/chery/libvr/serverbinder/component/VrNaviBinder;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {}, Lcom/chery/libvr/serverbinder/component/VrMediaBinder;->getInstance()Lcom/chery/libvr/serverbinder/component/VrMediaBinder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public registerVrInitStatusCallback(Lcom/chery/libvr/apps/IVrInitStatusCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/avn/tools/log/PFLog;->isDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVrInitStatusCallback pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; cb -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 70
    iget-object p0, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mCbs:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1
    return-void
.end method

.method public unregisterVrInitStatusCallback(Lcom/chery/libvr/apps/IVrInitStatusCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/avn/tools/log/PFLog;->isDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVrInitStatusCallback pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; cb -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 81
    iget-object p0, p0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;->mCbs:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    return-void
.end method
