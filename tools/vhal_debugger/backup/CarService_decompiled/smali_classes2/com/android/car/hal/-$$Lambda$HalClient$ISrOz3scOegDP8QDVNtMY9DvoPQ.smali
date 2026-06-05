.class public final synthetic Lcom/android/car/hal/-$$Lambda$HalClient$ISrOz3scOegDP8QDVNtMY9DvoPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/hal/HalClient$RetriableCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/car/hal/HalClient;

.field private final synthetic f$1:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/hal/HalClient;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/hal/-$$Lambda$HalClient$ISrOz3scOegDP8QDVNtMY9DvoPQ;->f$0:Lcom/android/car/hal/HalClient;

    iput-object p2, p0, Lcom/android/car/hal/-$$Lambda$HalClient$ISrOz3scOegDP8QDVNtMY9DvoPQ;->f$1:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    return-void
.end method


# virtual methods
.method public final action()I
    .locals 2

    iget-object v0, p0, Lcom/android/car/hal/-$$Lambda$HalClient$ISrOz3scOegDP8QDVNtMY9DvoPQ;->f$0:Lcom/android/car/hal/HalClient;

    iget-object v1, p0, Lcom/android/car/hal/-$$Lambda$HalClient$ISrOz3scOegDP8QDVNtMY9DvoPQ;->f$1:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/HalClient;->lambda$setValue$0$HalClient(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)I

    move-result v0

    return v0
.end method
