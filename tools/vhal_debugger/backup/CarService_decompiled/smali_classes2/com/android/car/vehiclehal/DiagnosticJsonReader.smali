.class public Lcom/android/car/vehiclehal/DiagnosticJsonReader;
.super Ljava/lang/Object;
.source "DiagnosticJsonReader.java"


# static fields
.field public static final FRAME_TYPE_FREEZE:Ljava/lang/String; = "freeze"

.field public static final FRAME_TYPE_LIVE:Ljava/lang/String; = "live"


# instance fields
.field private final mFreezeFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

.field private final mLiveFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    const v1, 0x11e00d00

    invoke-direct {v0, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJsonReader;->mLiveFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    .line 49
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    const v1, 0x11e00d01

    invoke-direct {v0, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJsonReader;->mFreezeFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)V
    .locals 6
    .param p1, "liveConfig"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .param p2, "freezeConfig"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    iget-object v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 38
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 39
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v5, 0x11e00d00

    invoke-direct {v0, v5, v1, v3}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;-><init>(III)V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJsonReader;->mLiveFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    .line 40
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    iget-object v1, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x11e00d01

    invoke-direct {v0, v3, v1, v2}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;-><init>(III)V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJsonReader;->mFreezeFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    .line 45
    return-void
.end method


# virtual methods
.method public build(Landroid/util/JsonReader;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 5
    .param p1, "jsonReader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/android/car/vehiclehal/DiagnosticJson;->build(Landroid/util/JsonReader;)Lcom/android/car/vehiclehal/DiagnosticJson;

    move-result-object v0

    .line 54
    .local v0, "diagnosticJson":Lcom/android/car/vehiclehal/DiagnosticJson;
    iget-object v1, v0, Lcom/android/car/vehiclehal/DiagnosticJson;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4b7bc569

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x32b0ec

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "freeze"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    .line 60
    const/4 v1, 0x0

    return-object v1

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticJsonReader;->mFreezeFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    invoke-virtual {v0, v1}, Lcom/android/car/vehiclehal/DiagnosticJson;->build(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    return-object v1

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticJsonReader;->mLiveFrameBuilder:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    invoke-virtual {v0, v1}, Lcom/android/car/vehiclehal/DiagnosticJson;->build(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    return-object v1
.end method
