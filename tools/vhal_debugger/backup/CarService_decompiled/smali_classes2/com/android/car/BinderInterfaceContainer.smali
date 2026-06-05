.class public Lcom/android/car/BinderInterfaceContainer;
.super Ljava/lang/Object;
.source "BinderInterfaceContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;,
        Lcom/android/car/BinderInterfaceContainer$BinderInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBinders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mEventHandler:Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/BinderInterfaceContainer;->mEventHandler:Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .local p1, "eventHandler":Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;, "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lcom/android/car/BinderInterfaceContainer;->mEventHandler:Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/BinderInterfaceContainer;Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BinderInterfaceContainer;
    .param p1, "x1"    # Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/car/BinderInterfaceContainer;->handleBinderDeath(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V

    return-void
.end method

.method private handleBinderDeath(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .local p1, "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    iget-object v0, p1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/car/BinderInterfaceContainer;->removeBinder(Landroid/os/IInterface;)V

    .line 131
    iget-object v0, p0, Lcom/android/car/BinderInterfaceContainer;->mEventHandler:Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;->onBinderDeath(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public addBinder(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .local p1, "binderInterface":Landroid/os/IInterface;, "TT;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "binder":Landroid/os/IBinder;
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 68
    .local v1, "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    if-eqz v1, :cond_0

    .line 69
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    new-instance v2, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    invoke-direct {v2, p0, p1}, Lcom/android/car/BinderInterfaceContainer$BinderInterface;-><init>(Lcom/android/car/BinderInterfaceContainer;Landroid/os/IInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 73
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    nop

    .line 77
    :try_start_2
    iget-object v2, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    nop

    .end local v1    # "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    monitor-exit p0

    .line 79
    return-void

    .line 74
    .restart local v1    # "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .end local p1    # "binderInterface":Landroid/os/IInterface;, "TT;"
    throw v3

    .line 78
    .end local v1    # "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .restart local p1    # "binderInterface":Landroid/os/IInterface;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addBinderInterface(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "TT;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .local p1, "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    iget-object v0, p1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "binder":Landroid/os/IBinder;
    monitor-enter p0

    .line 104
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    nop

    .line 108
    :try_start_1
    iget-object v1, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .end local p1    # "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    throw v2

    .line 109
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .restart local p1    # "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 4

    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    .line 124
    .local v0, "interfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 125
    .local v2, "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    iget-object v3, v2, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    invoke-virtual {p0, v3}, Lcom/android/car/BinderInterfaceContainer;->removeBinder(Landroid/os/IInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v2    # "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    goto :goto_0

    .line 127
    .end local p0    # "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "interfaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .local p1, "binderInterface":Landroid/os/IInterface;, "TT;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .local v0, "binder":Landroid/os/IBinder;
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    monitor-exit p0

    return-object v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInterfaces()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "TT;>;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBinder(Landroid/os/IInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .local p1, "binderInterface":Landroid/os/IInterface;, "TT;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .local v0, "binder":Landroid/os/IBinder;
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 85
    .local v1, "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    if-nez v1, :cond_0

    .line 86
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 89
    iget-object v2, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .end local v1    # "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BinderInterfaceContainer;->mBinders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
