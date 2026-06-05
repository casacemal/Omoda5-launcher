.class Lcom/android/car/garagemode/GarageMode$2;
.super Ljava/lang/Object;
.source "GarageMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/garagemode/GarageMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/garagemode/GarageMode;


# direct methods
.method constructor <init>(Lcom/android/car/garagemode/GarageMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/garagemode/GarageMode;

    .line 82
    iput-object p1, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "userToStop":I
    const/4 v1, 0x0

    .line 87
    .local v1, "remainingUsersToStop":I
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v2}, Lcom/android/car/garagemode/GarageMode;->access$400(Lcom/android/car/garagemode/GarageMode;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v1, v2

    .line 89
    if-lez v1, :cond_3

    .line 90
    iget-object v2, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v2}, Lcom/android/car/garagemode/GarageMode;->access$400(Lcom/android/car/garagemode/GarageMode;)Landroid/util/ArraySet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    iget-object v2, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v2}, Lcom/android/car/garagemode/GarageMode;->access$000(Lcom/android/car/garagemode/GarageMode;)I

    move-result v2

    if-nez v2, :cond_2

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const-class v2, Lcom/android/car/user/CarUserService;

    invoke-static {v2}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/user/CarUserService;

    invoke-virtual {v2, v0}, Lcom/android/car/user/CarUserService;->stopBackgroundUser(I)Z

    .line 100
    invoke-static {}, Lcom/android/car/garagemode/GarageMode;->access$100()Lcom/android/car/garagemode/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping background user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining users:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/car/garagemode/Logger;->i(Ljava/lang/String;)V

    .line 103
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v2, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v2}, Lcom/android/car/garagemode/GarageMode;->access$400(Lcom/android/car/garagemode/GarageMode;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v2}, Lcom/android/car/garagemode/GarageMode;->access$400(Lcom/android/car/garagemode/GarageMode;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 106
    invoke-static {}, Lcom/android/car/garagemode/GarageMode;->access$100()Lcom/android/car/garagemode/Logger;

    move-result-object v2

    const-string v3, "all background users stopped"

    invoke-virtual {v2, v3}, Lcom/android/car/garagemode/Logger;->i(Ljava/lang/String;)V

    .line 107
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 111
    :cond_2
    invoke-static {}, Lcom/android/car/garagemode/GarageMode;->access$100()Lcom/android/car/garagemode/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for jobs to finish, remaining users:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/car/garagemode/Logger;->i(Ljava/lang/String;)V

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v2}, Lcom/android/car/garagemode/GarageMode;->access$300(Lcom/android/car/garagemode/GarageMode;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/garagemode/GarageMode$2;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v3}, Lcom/android/car/garagemode/GarageMode;->access$500(Lcom/android/car/garagemode/GarageMode;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void

    .line 92
    :cond_3
    :try_start_2
    monitor-exit p0

    return-void

    .line 94
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
