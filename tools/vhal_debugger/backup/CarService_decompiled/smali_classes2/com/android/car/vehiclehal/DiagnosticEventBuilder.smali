.class public Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
.super Ljava/lang/Object;
.source "DiagnosticEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;
    }
.end annotation


# instance fields
.field private final mBitmask:Ljava/util/BitSet;

.field private mDtc:Ljava/lang/String;

.field private final mFloatValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumIntSensors:I

.field private final mPropertyId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "propertyId"    # I

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;-><init>(III)V

    .line 107
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "propertyId"    # I
    .param p2, "numVendorIntSensors"    # I
    .param p3, "numVendorFloatSensors"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mDtc:Ljava/lang/String;

    .line 111
    iput p1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mPropertyId:I

    .line 112
    add-int/lit8 v0, p2, 0x20

    iput v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mNumIntSensors:I

    .line 113
    add-int/lit8 v0, p3, 0x47

    .line 115
    .local v0, "numFloatSensors":I
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mNumIntSensors:I

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mBitmask:Ljava/util/BitSet;

    .line 116
    new-instance v1, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    iget v2, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mNumIntSensors:I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;-><init>(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mIntValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    .line 117
    new-instance v1, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;-><init>(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mFloatValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)V
    .locals 4
    .param p1, "propConfig"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 102
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    iget-object v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;-><init>(III)V

    .line 103
    return-void
.end method

.method static synthetic lambda$build$0(Lcom/android/car/vehiclehal/VehiclePropValueBuilder;I)V
    .locals 2
    .param p0, "rec$"    # Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .param p1, "xva$0"    # I

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->addIntValue([I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    return-void
.end method

.method static synthetic lambda$build$1(Lcom/android/car/vehiclehal/VehiclePropValueBuilder;F)V
    .locals 2
    .param p0, "rec$"    # Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .param p1, "xva$0"    # F

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->addFloatValue([F)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    return-void
.end method


# virtual methods
.method public addFloatSensor(IF)Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 135
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mFloatValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->set(ILjava/lang/Object;)Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    .line 136
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mBitmask:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mNumIntSensors:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 137
    return-object p0
.end method

.method public addIntSensor(II)Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 129
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mIntValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->set(ILjava/lang/Object;)Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    .line 130
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mBitmask:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 131
    return-object p0
.end method

.method public build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 2

    .line 146
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->build(J)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method public build(J)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 3
    .param p1, "timestamp"    # J

    .line 150
    iget v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mPropertyId:I

    invoke-static {v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->newBuilder(I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    move-result-object v0

    .line 151
    .local v0, "propValueBuilder":Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->setTimestamp()Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->setTimestamp(J)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mIntValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticEventBuilder$JA7P1fUfWmYWG6Jvv8xBl5aX0tg;

    invoke-direct {v2, v0}, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticEventBuilder$JA7P1fUfWmYWG6Jvv8xBl5aX0tg;-><init>(Lcom/android/car/vehiclehal/VehiclePropValueBuilder;)V

    invoke-virtual {v1, v2}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->forEach(Ljava/util/function/Consumer;)V

    .line 157
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mFloatValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticEventBuilder$zsapxUg-4M90ROVU0aEDJGrZPiI;

    invoke-direct {v2, v0}, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticEventBuilder$zsapxUg-4M90ROVU0aEDJGrZPiI;-><init>(Lcom/android/car/vehiclehal/VehiclePropValueBuilder;)V

    invoke-virtual {v1, v2}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->forEach(Ljava/util/function/Consumer;)V

    .line 158
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mBitmask:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->addByteValue([B)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mDtc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->setStringValue(Ljava/lang/String;)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    return-object v1
.end method

.method public clear()Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mIntValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    invoke-virtual {v0}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mFloatValues:Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    invoke-virtual {v0}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->clear()V

    .line 123
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mBitmask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mDtc:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setDTC(Ljava/lang/String;)Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
    .locals 0
    .param p1, "dtc"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->mDtc:Ljava/lang/String;

    .line 142
    return-object p0
.end method
