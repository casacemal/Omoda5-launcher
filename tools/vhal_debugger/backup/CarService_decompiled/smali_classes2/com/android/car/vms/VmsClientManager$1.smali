.class Lcom/android/car/vms/VmsClientManager$1;
.super Landroid/content/BroadcastReceiver;
.source "VmsClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vms/VmsClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/vms/VmsClientManager;


# direct methods
.method constructor <init>(Lcom/android/car/vms/VmsClientManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/vms/VmsClientManager;

    .line 114
    iput-object p1, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(ILcom/android/car/vms/VmsClientManager$SubscriberConnection;)Z
    .locals 1
    .param p0, "currentUserId"    # I
    .param p1, "subscriber"    # Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 123
    invoke-static {p1}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->access$1000(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)I

    move-result v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onReceive$1(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Z
    .locals 1
    .param p0, "subscriber"    # Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 124
    invoke-static {p0}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->access$1000(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v0}, Lcom/android/car/vms/VmsClientManager;->access$000(Lcom/android/car/vms/VmsClientManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v1}, Lcom/android/car/vms/VmsClientManager;->access$100(Lcom/android/car/vms/VmsClientManager;)Landroid/car/userlib/CarUserManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v1

    .line 120
    .local v1, "currentUserId":I
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v2}, Lcom/android/car/vms/VmsClientManager;->access$200(Lcom/android/car/vms/VmsClientManager;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    iget-object v3, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v3}, Lcom/android/car/vms/VmsClientManager;->access$300(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/car/vms/VmsClientManager;->access$400(Lcom/android/car/vms/VmsClientManager;Ljava/util/Map;)V

    .line 122
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    iget-object v3, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v3}, Lcom/android/car/vms/VmsClientManager;->access$500(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$LO6_pLE4NSD5x7nZxbzivvyBhao;

    invoke-direct {v4, v1}, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$LO6_pLE4NSD5x7nZxbzivvyBhao;-><init>(I)V

    .line 123
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;

    .line 124
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 122
    invoke-static {v2, v3}, Lcom/android/car/vms/VmsClientManager;->access$600(Lcom/android/car/vms/VmsClientManager;Ljava/util/stream/Stream;)V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v2, v1}, Lcom/android/car/vms/VmsClientManager;->access$202(Lcom/android/car/vms/VmsClientManager;I)I

    .line 128
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v2}, Lcom/android/car/vms/VmsClientManager;->access$700(Lcom/android/car/vms/VmsClientManager;)Landroid/os/UserManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v3}, Lcom/android/car/vms/VmsClientManager;->access$200(Lcom/android/car/vms/VmsClientManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v2}, Lcom/android/car/vms/VmsClientManager;->access$800(Lcom/android/car/vms/VmsClientManager;)V

    .line 130
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$1;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v2}, Lcom/android/car/vms/VmsClientManager;->access$900(Lcom/android/car/vms/VmsClientManager;)V

    .line 132
    .end local v1    # "currentUserId":I
    :cond_1
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
