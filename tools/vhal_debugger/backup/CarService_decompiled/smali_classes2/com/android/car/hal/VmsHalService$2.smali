.class Lcom/android/car/hal/VmsHalService$2;
.super Landroid/car/vms/IVmsSubscriberClient$Stub;
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

    .line 125
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService$2;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-direct {p0}, Landroid/car/vms/IVmsSubscriberClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 3
    .param p1, "availableLayers"    # Landroid/car/vms/VmsAvailableLayers;

    .line 136
    invoke-virtual {p1}, Landroid/car/vms/VmsAvailableLayers;->getSequence()I

    move-result v0

    iget-object v1, p0, Lcom/android/car/hal/VmsHalService$2;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v1}, Lcom/android/car/hal/VmsHalService;->access$600(Lcom/android/car/hal/VmsHalService;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/car/vms/VmsAvailableLayers;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/car/hal/VmsHalService$2;->this$0:Lcom/android/car/hal/VmsHalService;

    .line 140
    invoke-static {v1}, Lcom/android/car/hal/VmsHalService;->access$600(Lcom/android/car/hal/VmsHalService;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 138
    const-string v1, "Out of order layer availability received: %d (expecting %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "VmsHalService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$2;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {p1}, Landroid/car/vms/VmsAvailableLayers;->getSequence()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/hal/VmsHalService;->access$602(Lcom/android/car/hal/VmsHalService;I)I

    .line 144
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$2;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v0}, Lcom/android/car/hal/VmsHalService;->access$400(Lcom/android/car/hal/VmsHalService;)Lcom/android/car/hal/VmsHalService$MessageQueue;

    move-result-object v0

    .line 145
    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/android/car/hal/VmsHalService;->access$700(ILandroid/car/vms/VmsAvailableLayers;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/android/car/hal/VmsHalService$MessageQueue;->enqueue(ILjava/lang/Object;)V

    .line 147
    return-void
.end method

.method public onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V
    .locals 3
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "payload"    # [B

    .line 129
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$2;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v0}, Lcom/android/car/hal/VmsHalService;->access$400(Lcom/android/car/hal/VmsHalService;)Lcom/android/car/hal/VmsHalService$MessageQueue;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/car/hal/VmsHalService;->access$500(Landroid/car/vms/VmsLayer;[B)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/car/hal/VmsHalService$MessageQueue;->enqueue(ILjava/lang/Object;)V

    .line 130
    return-void
.end method
