.class Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;
.super Landroid/os/Handler;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredRebinder"
.end annotation


# static fields
.field private static final NEXT_REBIND_ATTEMPT_DELAY_MS:J = 0x3e8L

.field private static final NUMBER_OF_ATTEMPTS:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/car/cluster/InstrumentClusterService;


# direct methods
.method private constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p2, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$1;

    .line 323
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 339
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$900(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$602(Lcom/android/car/cluster/InstrumentClusterService;Z)Z

    .line 341
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$600(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "CAR.CLUSTER"

    const-string v1, "Failed to bound to render service, next attempt in 1000ms."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 346
    .local v1, "attempts":I
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 349
    :cond_0
    const-string v2, "Failed to rebind with cluster rendering service"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v1    # "attempts":I
    :cond_1
    :goto_0
    return-void
.end method

.method public rebind()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$900(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$602(Lcom/android/car/cluster/InstrumentClusterService;Z)Z

    .line 330
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$600(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->removeMessages(I)V

    .line 332
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    :cond_0
    return-void
.end method
