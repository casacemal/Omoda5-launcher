.class public Lcom/android/car/vehiclehal/DiagnosticJson;
.super Ljava/lang/Object;
.source "DiagnosticJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/vehiclehal/DiagnosticJson$Builder;
    }
.end annotation


# instance fields
.field public final dtc:Ljava/lang/String;

.field public final floatValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final intValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final timestamp:J

.field public final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLandroid/util/SparseArray;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p6, "dtc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    .local p4, "intValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .local p5, "floatValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->type:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->timestamp:J

    .line 43
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->intValues:Landroid/util/SparseArray;

    .line 44
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->floatValues:Landroid/util/SparseArray;

    .line 45
    iput-object p6, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->dtc:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static build(Landroid/util/JsonReader;)Lcom/android/car/vehiclehal/DiagnosticJson;
    .locals 1
    .param p0, "jsonReader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;

    invoke-direct {v0, p0}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;-><init>(Landroid/util/JsonReader;)V

    invoke-virtual {v0}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->build()Lcom/android/car/vehiclehal/DiagnosticJson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$build$0(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;)V
    .locals 2
    .param p0, "builder"    # Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
    .param p1, "entry"    # Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;

    .line 52
    iget v0, p1, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;->key:I

    iget-object v1, p1, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->addIntSensor(II)Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    return-void
.end method

.method static synthetic lambda$build$1(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;)V
    .locals 2
    .param p0, "builder"    # Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
    .param p1, "entry"    # Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;

    .line 56
    iget v0, p1, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;->key:I

    iget-object v1, p1, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->addFloatSensor(IF)Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    return-void
.end method


# virtual methods
.method build(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 2
    .param p1, "builder"    # Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    .line 49
    new-instance v0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;

    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->intValues:Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;-><init>(Landroid/util/SparseArray;)V

    new-instance v1, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticJson$jQRvOI9zncWW64SQ9Wxf63kQZps;

    invoke-direct {v1, p1}, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticJson$jQRvOI9zncWW64SQ9Wxf63kQZps;-><init>(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    new-instance v0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;

    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->floatValues:Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;-><init>(Landroid/util/SparseArray;)V

    new-instance v1, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticJson$ECN_o0n04_AOhxC6lZmBE8nrb_o;

    invoke-direct {v1, p1}, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticJson$ECN_o0n04_AOhxC6lZmBE8nrb_o;-><init>(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->dtc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->setDTC(Ljava/lang/String;)Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    .line 58
    iget-wide v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson;->timestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->build(J)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 59
    .local v0, "vehiclePropValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-virtual {p1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->clear()Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    .line 60
    return-object v0
.end method
