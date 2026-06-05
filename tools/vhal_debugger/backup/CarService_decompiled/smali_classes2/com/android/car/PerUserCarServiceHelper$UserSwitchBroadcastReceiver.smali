.class public Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PerUserCarServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/PerUserCarServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSwitchBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/PerUserCarServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/car/PerUserCarServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/PerUserCarServiceHelper;

    .line 89
    iput-object p1, p0, Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 93
    invoke-static {}, Lcom/android/car/PerUserCarServiceHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "PerUserCarSvcHelper"

    const-string v1, "User Switch Happened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    .local v0, "userSwitched":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "user":I
    if-eqz v0, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PerUserCarSvcHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v0    # "userSwitched":Z
    .end local v1    # "user":I
    :cond_0
    monitor-enter p0

    .line 108
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v1}, Lcom/android/car/PerUserCarServiceHelper;->access$100(Lcom/android/car/PerUserCarServiceHelper;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    .line 112
    .local v2, "callback":Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;
    invoke-interface {v2}, Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;->onPreUnbind()V

    .line 113
    .end local v2    # "callback":Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;
    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v1}, Lcom/android/car/PerUserCarServiceHelper;->access$200(Lcom/android/car/PerUserCarServiceHelper;)V

    .line 117
    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;->this$0:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v1}, Lcom/android/car/PerUserCarServiceHelper;->access$300(Lcom/android/car/PerUserCarServiceHelper;)V

    .line 118
    return-void

    .line 109
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
