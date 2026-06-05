.class Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemStateInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;


# direct methods
.method constructor <init>(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    .line 81
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    invoke-static {v0}, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->access$000(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 86
    .local v1, "action":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/time/Duration;>;"
    iget-object v2, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    invoke-static {v2}, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->access$100(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/Duration;

    .line 87
    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 88
    .end local v1    # "action":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/time/Duration;>;"
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
