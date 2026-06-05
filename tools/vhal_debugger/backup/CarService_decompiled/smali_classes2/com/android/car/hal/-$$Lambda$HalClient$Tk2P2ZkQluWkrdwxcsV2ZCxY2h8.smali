.class public final synthetic Lcom/android/car/hal/-$$Lambda$HalClient$Tk2P2ZkQluWkrdwxcsV2ZCxY2h8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/car/hal/HalClient$ValueResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/hal/HalClient$ValueResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/hal/-$$Lambda$HalClient$Tk2P2ZkQluWkrdwxcsV2ZCxY2h8;->f$0:Lcom/android/car/hal/HalClient$ValueResult;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/hal/-$$Lambda$HalClient$Tk2P2ZkQluWkrdwxcsV2ZCxY2h8;->f$0:Lcom/android/car/hal/HalClient$ValueResult;

    invoke-static {v0, p1, p2}, Lcom/android/car/hal/HalClient;->lambda$internalGet$2(Lcom/android/car/hal/HalClient$ValueResult;ILandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    return-void
.end method
