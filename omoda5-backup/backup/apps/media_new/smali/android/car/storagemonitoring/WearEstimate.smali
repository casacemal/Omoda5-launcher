.class public final Landroid/car/storagemonitoring/WearEstimate;
.super Ljava/lang/Object;
.source "WearEstimate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/storagemonitoring/WearEstimate;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:I = -0x1

.field public static final UNKNOWN_ESTIMATE:Landroid/car/storagemonitoring/WearEstimate;


# instance fields
.field public final typeA:I

.field public final typeB:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/car/storagemonitoring/WearEstimate;-><init>(II)V

    sput-object v0, Landroid/car/storagemonitoring/WearEstimate;->UNKNOWN_ESTIMATE:Landroid/car/storagemonitoring/WearEstimate;

    .line 49
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate$1;

    invoke-direct {v0}, Landroid/car/storagemonitoring/WearEstimate$1;-><init>()V

    sput-object v0, Landroid/car/storagemonitoring/WearEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    move-result p1

    iput p1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    .line 80
    invoke-static {p2}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    move-result p1

    iput p1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    move-result v0

    iput v0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    move-result p1

    iput p1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    return-void
.end method

.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    .line 95
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "wearEstimateTypeB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_2

    :pswitch_1
    const-string v4, "wearEstimateTypeA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v0

    :goto_2
    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    move-result v2

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    move-result v1

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 106
    iput v1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    .line 107
    iput v2, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    return-void

    :pswitch_data_0
    .packed-switch -0x52bdcd40
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wearEstimateTypeA"

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    const-string v0, "wearEstimateTypeB"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    return-void
.end method

.method private static final validateWearValue(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x64

    if-gt p0, v0, :cond_1

    return p0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid wear estimate"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final wearValueToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 139
    instance-of v0, p1, Landroid/car/storagemonitoring/WearEstimate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Landroid/car/storagemonitoring/WearEstimate;

    .line 141
    iget v0, p1, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    iget v2, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    iget v1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type A: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    invoke-static {v1}, Landroid/car/storagemonitoring/WearEstimate;->wearValueToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    invoke-static {p0}, Landroid/car/storagemonitoring/WearEstimate;->wearValueToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToJson(Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "wearEstimateTypeA"

    .line 132
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "wearEstimateTypeB"

    .line 133
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 134
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 123
    iget p2, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
