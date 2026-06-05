.class Lcom/android/car/hal/HalClient$ValueResult;
.super Ljava/lang/Object;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueResult"
.end annotation


# instance fields
.field propValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

.field status:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/hal/HalClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/hal/HalClient$1;

    .line 176
    invoke-direct {p0}, Lcom/android/car/hal/HalClient$ValueResult;-><init>()V

    return-void
.end method
