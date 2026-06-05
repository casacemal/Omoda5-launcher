.class Lcom/android/car/OnShutdownReboot$1;
.super Landroid/content/BroadcastReceiver;
.source "OnShutdownReboot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/OnShutdownReboot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/OnShutdownReboot;


# direct methods
.method constructor <init>(Lcom/android/car/OnShutdownReboot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/OnShutdownReboot;

    .line 41
    iput-object p1, p0, Lcom/android/car/OnShutdownReboot$1;->this$0:Lcom/android/car/OnShutdownReboot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/android/car/OnShutdownReboot$1;->this$0:Lcom/android/car/OnShutdownReboot;

    invoke-static {v0}, Lcom/android/car/OnShutdownReboot;->access$000(Lcom/android/car/OnShutdownReboot;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/BiConsumer;

    .line 45
    .local v1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/Context;Landroid/content/Intent;>;"
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .end local v1    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/Context;Landroid/content/Intent;>;"
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method
