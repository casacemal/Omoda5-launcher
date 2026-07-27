.class public final Lcoil/util/SystemCallbacks;
.super Ljava/lang/Object;
.source "SystemCallbacks.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcoil/network/NetworkObserver$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/util/SystemCallbacks$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemCallbacks.kt\ncoil/util/SystemCallbacks\n+ 2 Logs.kt\ncoil/util/-Logs\n*L\n1#1,98:1\n89#1,2:99\n89#1,2:101\n89#1,2:103\n89#1:105\n90#1:110\n89#1:111\n90#1:116\n21#2,4:106\n21#2,4:112\n*S KotlinDebug\n*F\n+ 1 SystemCallbacks.kt\ncoil/util/SystemCallbacks\n*L\n39#1:99,2\n48#1:101,2\n71#1:103,2\n74#1:105\n74#1:110\n83#1:111\n83#1:116\n75#1:106,4\n84#1:112,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 (2\u00020\u00012\u00020\u0002:\u0001(B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0006\u0010\u0011\u001a\u00020\u001bJ\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u001bH\u0016J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u0012H\u0016J\u001d\u0010%\u001a\u00020\u001b2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001b0\'H\u0082\u0008R*\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00040\u00040\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\n\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0015\u00a8\u0006)"
    }
    d2 = {
        "Lcoil/util/SystemCallbacks;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcoil/network/NetworkObserver$Listener;",
        "imageLoader",
        "Lcoil/RealImageLoader;",
        "<init>",
        "(Lcoil/RealImageLoader;)V",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "getImageLoader$annotations",
        "()V",
        "getImageLoader",
        "()Ljava/lang/ref/WeakReference;",
        "application",
        "Landroid/content/Context;",
        "networkObserver",
        "Lcoil/network/NetworkObserver;",
        "shutdown",
        "",
        "getShutdown$annotations",
        "getShutdown",
        "()Z",
        "setShutdown",
        "(Z)V",
        "_isOnline",
        "isOnline",
        "registerMemoryPressureCallbacks",
        "",
        "registerNetworkObserver",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onTrimMemory",
        "level",
        "",
        "onLowMemory",
        "onConnectivityChange",
        "withImageLoader",
        "block",
        "Lkotlin/Function1;",
        "Companion",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcoil/util/SystemCallbacks$Companion;

.field private static final OFFLINE:Ljava/lang/String; = "OFFLINE"

.field private static final ONLINE:Ljava/lang/String; = "ONLINE"

.field private static final TAG:Ljava/lang/String; = "NetworkObserver"


# instance fields
.field private _isOnline:Z

.field private application:Landroid/content/Context;

.field private final imageLoader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcoil/RealImageLoader;",
            ">;"
        }
    .end annotation
.end field

.field private networkObserver:Lcoil/network/NetworkObserver;

.field private shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/util/SystemCallbacks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/util/SystemCallbacks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/util/SystemCallbacks;->Companion:Lcoil/util/SystemCallbacks$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/RealImageLoader;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcoil/util/SystemCallbacks;->_isOnline:Z

    return-void
.end method

.method public static synthetic getImageLoader$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShutdown$annotations()V
    .locals 0

    return-void
.end method

.method private final declared-synchronized registerNetworkObserver()V
    .locals 3

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil/RealImageLoader;

    if-eqz v0, :cond_1

    .line 49
    iget-object v1, p0, Lcoil/util/SystemCallbacks;->networkObserver:Lcoil/network/NetworkObserver;

    if-nez v1, :cond_2

    .line 51
    invoke-virtual {v0}, Lcoil/RealImageLoader;->getOptions()Lcoil/util/ImageLoaderOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcoil/util/ImageLoaderOptions;->getNetworkObserverEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcoil/RealImageLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcoil/network/NetworkObserver$Listener;

    invoke-virtual {v0}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcoil/network/NetworkObserverKt;->NetworkObserver(Landroid/content/Context;Lcoil/network/NetworkObserver$Listener;Lcoil/util/Logger;)Lcoil/network/NetworkObserver;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcoil/network/EmptyNetworkObserver;

    invoke-direct {v0}, Lcoil/network/EmptyNetworkObserver;-><init>()V

    check-cast v0, Lcoil/network/NetworkObserver;

    .line 56
    :goto_0
    iput-object v0, p0, Lcoil/util/SystemCallbacks;->networkObserver:Lcoil/network/NetworkObserver;

    .line 57
    invoke-interface {v0}, Lcoil/network/NetworkObserver;->isOnline()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/util/SystemCallbacks;->_isOnline:Z

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcoil/util/SystemCallbacks;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final withImageLoader(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/RealImageLoader;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil/RealImageLoader;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcoil/util/SystemCallbacks;->shutdown()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getImageLoader()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcoil/RealImageLoader;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getShutdown()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcoil/util/SystemCallbacks;->shutdown:Z

    return p0
.end method

.method public final declared-synchronized isOnline()Z
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcoil/util/SystemCallbacks;->registerNetworkObserver()V

    .line 35
    iget-boolean v0, p0, Lcoil/util/SystemCallbacks;->_isOnline:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object p1, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil/RealImageLoader;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcoil/util/SystemCallbacks;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onConnectivityChange(Z)V
    .locals 5

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil/RealImageLoader;

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "NetworkObserver"

    .line 112
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    if-eqz p1, :cond_0

    .line 84
    const-string v2, "ONLINE"

    goto :goto_0

    :cond_0
    const-string v2, "OFFLINE"

    :goto_0
    const/4 v4, 0x0

    .line 113
    invoke-interface {v0, v1, v3, v2, v4}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :cond_1
    iput-boolean p1, p0, Lcoil/util/SystemCallbacks;->_isOnline:Z

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcoil/util/SystemCallbacks;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onLowMemory()V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x50

    .line 80
    :try_start_0
    invoke-virtual {p0, v0}, Lcoil/util/SystemCallbacks;->onTrimMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onTrimMemory(I)V
    .locals 6

    const-string v0, "trimMemory, level="

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil/RealImageLoader;

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "NetworkObserver"

    .line 106
    invoke-interface {v2}, Lcoil/util/Logger;->getLevel()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 107
    invoke-interface {v2, v3, v5, v0, v4}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_0
    invoke-virtual {v1, p1}, Lcoil/RealImageLoader;->onTrimMemory$coil_base_release(I)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcoil/util/SystemCallbacks;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized registerMemoryPressureCallbacks()V
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil/RealImageLoader;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcoil/util/SystemCallbacks;->application:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 42
    invoke-virtual {v0}, Lcoil/RealImageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcoil/util/SystemCallbacks;->application:Landroid/content/Context;

    .line 44
    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcoil/util/SystemCallbacks;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setShutdown(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcoil/util/SystemCallbacks;->shutdown:Z

    return-void
.end method

.method public final declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcoil/util/SystemCallbacks;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    :try_start_1
    iput-boolean v0, p0, Lcoil/util/SystemCallbacks;->shutdown:Z

    .line 65
    iget-object v0, p0, Lcoil/util/SystemCallbacks;->application:Landroid/content/Context;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcoil/util/SystemCallbacks;->networkObserver:Lcoil/network/NetworkObserver;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcoil/network/NetworkObserver;->shutdown()V

    .line 67
    :cond_2
    iget-object v0, p0, Lcoil/util/SystemCallbacks;->imageLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
