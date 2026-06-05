.class public final synthetic Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/hal/HalClient$RetriableCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/car/hal/HalClient;

.field private final synthetic f$1:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

.field private final synthetic f$2:Lcom/android/car/hal/HalClient$ObjectWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/hal/HalClient;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/HalClient$ObjectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;->f$0:Lcom/android/car/hal/HalClient;

    iput-object p2, p0, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;->f$1:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput-object p3, p0, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;->f$2:Lcom/android/car/hal/HalClient$ObjectWrapper;

    return-void
.end method


# virtual methods
.method public final action()I
    .locals 3

    iget-object v0, p0, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;->f$0:Lcom/android/car/hal/HalClient;

    iget-object v1, p0, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;->f$1:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v2, p0, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;->f$2:Lcom/android/car/hal/HalClient$ObjectWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/android/car/hal/HalClient;->lambda$getValue$1$HalClient(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/HalClient$ObjectWrapper;)I

    move-result v0

    return v0
.end method
