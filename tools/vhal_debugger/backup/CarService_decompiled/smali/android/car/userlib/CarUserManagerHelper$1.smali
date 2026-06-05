.class Landroid/car/userlib/CarUserManagerHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "CarUserManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/userlib/CarUserManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/userlib/CarUserManagerHelper;


# direct methods
.method constructor <init>(Landroid/car/userlib/CarUserManagerHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/car/userlib/CarUserManagerHelper;

    .line 106
    iput-object p1, p0, Landroid/car/userlib/CarUserManagerHelper$1;->this$0:Landroid/car/userlib/CarUserManagerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper$1;->this$0:Landroid/car/userlib/CarUserManagerHelper;

    invoke-static {v0}, Landroid/car/userlib/CarUserManagerHelper;->access$000(Landroid/car/userlib/CarUserManagerHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/car/userlib/CarUserManagerHelper$1;->this$0:Landroid/car/userlib/CarUserManagerHelper;

    invoke-static {v2}, Landroid/car/userlib/CarUserManagerHelper;->access$000(Landroid/car/userlib/CarUserManagerHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v1, "copyOfUpdateListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;

    .line 115
    .local v2, "listener":Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;
    invoke-interface {v2}, Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;->onUsersUpdate()V

    .line 116
    .end local v2    # "listener":Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;
    goto :goto_0

    .line 117
    :cond_0
    return-void

    .line 112
    .end local v1    # "copyOfUpdateListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
