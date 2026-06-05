.class Lcom/android/car/hal/VmsHalService$1;
.super Landroid/car/vms/IVmsPublisherClient$Stub;
.source "VmsHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VmsHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/hal/VmsHalService;


# direct methods
.method constructor <init>(Lcom/android/car/hal/VmsHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/hal/VmsHalService;

    .line 100
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService$1;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-direct {p0}, Landroid/car/vms/IVmsPublisherClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVmsSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V
    .locals 3
    .param p1, "subscriptionState"    # Landroid/car/vms/VmsSubscriptionState;

    .line 111
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result v0

    iget-object v1, p0, Lcom/android/car/hal/VmsHalService$1;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v1}, Lcom/android/car/hal/VmsHalService;->access$200(Lcom/android/car/hal/VmsHalService;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/car/hal/VmsHalService$1;->this$0:Lcom/android/car/hal/VmsHalService;

    .line 115
    invoke-static {v1}, Lcom/android/car/hal/VmsHalService;->access$200(Lcom/android/car/hal/VmsHalService;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 113
    const-string v1, "Out of order subscription state received: %d (expecting %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "VmsHalService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$1;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/hal/VmsHalService;->access$202(Lcom/android/car/hal/VmsHalService;I)I

    .line 119
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$1;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v0}, Lcom/android/car/hal/VmsHalService;->access$400(Lcom/android/car/hal/VmsHalService;)Lcom/android/car/hal/VmsHalService$MessageQueue;

    move-result-object v0

    .line 120
    const/16 v1, 0xb

    invoke-static {v1, p1}, Lcom/android/car/hal/VmsHalService;->access$300(ILandroid/car/vms/VmsSubscriptionState;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/android/car/hal/VmsHalService$MessageQueue;->enqueue(ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public setVmsPublisherService(Landroid/os/IBinder;Landroid/car/vms/IVmsPublisherService;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "service"    # Landroid/car/vms/IVmsPublisherService;

    .line 103
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$1;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v0, p1}, Lcom/android/car/hal/VmsHalService;->access$002(Lcom/android/car/hal/VmsHalService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 104
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$1;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v0, p2}, Lcom/android/car/hal/VmsHalService;->access$102(Lcom/android/car/hal/VmsHalService;Landroid/car/vms/IVmsPublisherService;)Landroid/car/vms/IVmsPublisherService;

    .line 105
    return-void
.end method
