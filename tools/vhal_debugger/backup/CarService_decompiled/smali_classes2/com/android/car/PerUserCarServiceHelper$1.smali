.class Lcom/android/car/PerUserCarServiceHelper$1;
.super Ljava/lang/Object;
.source "PerUserCarServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/PerUserCarServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/PerUserCarServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/car/PerUserCarServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/PerUserCarServiceHelper;

    .line 124
    iput-object p1, p0, Lcom/android/car/PerUserCarServiceHelper$1;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 129
    invoke-static {}, Lcom/android/car/PerUserCarServiceHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "PerUserCarSvcHelper"

    const-string v1, "Connected to User Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper$1;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {p2}, Landroid/car/ICarUserService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarUserService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/PerUserCarServiceHelper;->access$402(Lcom/android/car/PerUserCarServiceHelper;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;

    .line 133
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper$1;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v0}, Lcom/android/car/PerUserCarServiceHelper;->access$400(Lcom/android/car/PerUserCarServiceHelper;)Landroid/car/ICarUserService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    monitor-enter p0

    .line 136
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper$1;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v1}, Lcom/android/car/PerUserCarServiceHelper;->access$100(Lcom/android/car/PerUserCarServiceHelper;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    .line 140
    .local v2, "callback":Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;
    iget-object v3, p0, Lcom/android/car/PerUserCarServiceHelper$1;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v3}, Lcom/android/car/PerUserCarServiceHelper;->access$400(Lcom/android/car/PerUserCarServiceHelper;)Landroid/car/ICarUserService;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;->onServiceConnected(Landroid/car/ICarUserService;)V

    .line 141
    .end local v2    # "callback":Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;
    goto :goto_0

    .line 137
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 143
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 148
    invoke-static {}, Lcom/android/car/PerUserCarServiceHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "PerUserCarSvcHelper"

    const-string v1, "Disconnected from User Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper$1;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v1}, Lcom/android/car/PerUserCarServiceHelper;->access$100(Lcom/android/car/PerUserCarServiceHelper;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    .line 157
    .local v2, "callback":Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;
    invoke-interface {v2}, Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;->onServiceDisconnected()V

    .line 158
    .end local v2    # "callback":Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;
    goto :goto_0

    .line 159
    :cond_1
    return-void

    .line 154
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
