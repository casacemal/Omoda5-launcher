.class final Lcom/android/car/PerUserCarService$CarUserServiceBinder;
.super Landroid/car/ICarUserService$Stub;
.source "PerUserCarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/PerUserCarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarUserServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/PerUserCarService;


# direct methods
.method private constructor <init>(Lcom/android/car/PerUserCarService;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->this$0:Lcom/android/car/PerUserCarService;

    invoke-direct {p0}, Landroid/car/ICarUserService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/PerUserCarService;Lcom/android/car/PerUserCarService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/PerUserCarService;
    .param p2, "x1"    # Lcom/android/car/PerUserCarService$1;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/car/PerUserCarService$CarUserServiceBinder;-><init>(Lcom/android/car/PerUserCarService;)V

    return-void
.end method


# virtual methods
.method public getBluetoothUserService()Landroid/car/ICarBluetoothUserService;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->this$0:Lcom/android/car/PerUserCarService;

    invoke-static {v0}, Lcom/android/car/PerUserCarService;->access$100(Lcom/android/car/PerUserCarService;)Lcom/android/car/CarBluetoothUserService;

    move-result-object v0

    return-object v0
.end method

.method public getLocationManagerProxy()Landroid/car/ILocationManagerProxy;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->this$0:Lcom/android/car/PerUserCarService;

    invoke-static {v0}, Lcom/android/car/PerUserCarService;->access$200(Lcom/android/car/PerUserCarService;)Lcom/android/car/LocationManagerProxy;

    move-result-object v0

    return-object v0
.end method
