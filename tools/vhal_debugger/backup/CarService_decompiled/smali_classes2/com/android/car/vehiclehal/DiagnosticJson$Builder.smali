.class Lcom/android/car/vehiclehal/DiagnosticJson$Builder;
.super Ljava/lang/Object;
.source "DiagnosticJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/DiagnosticJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field final mDtc:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFloatValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mIntValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mTimestamp:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mType:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 7
    .param p1, "jsonReader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    invoke-direct {v0}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mType:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    .line 85
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    invoke-direct {v0}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mTimestamp:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mIntValues:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mFloatValues:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    invoke-direct {v0}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mDtc:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    .line 121
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 122
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "name":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "intValues"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "timestamp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_2
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "stringValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v2, "floatValues"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    .line 145
    sget-object v1, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown name in diagnostic JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mDtc:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->write(Ljava/lang/Object;)V

    .line 143
    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->readFloatValues(Landroid/util/JsonReader;)V

    .line 139
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 140
    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->readIntValues(Landroid/util/JsonReader;)V

    .line 134
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 135
    goto :goto_2

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mTimestamp:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->write(Ljava/lang/Object;)V

    .line 130
    goto :goto_2

    .line 126
    :cond_5
    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mType:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->write(Ljava/lang/Object;)V

    .line 127
    nop

    .line 147
    .end local v0    # "name":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 148
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 149
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67498962 -> :sswitch_4
        -0x5a8d5c20 -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x37031f1 -> :sswitch_0
    .end sparse-switch
.end method

.method private readFloatValues(Landroid/util/JsonReader;)V
    .locals 5
    .param p1, "jsonReader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "id":I
    const/4 v1, 0x0

    .line 109
    .local v1, "value":F
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 110
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_2

    .line 113
    :cond_0
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    .line 114
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 116
    iget-object v2, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mFloatValues:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    .end local v0    # "id":I
    .end local v1    # "value":F
    goto :goto_0

    .line 118
    :cond_3
    return-void
.end method

.method private readIntValues(Landroid/util/JsonReader;)V
    .locals 4
    .param p1, "jsonReader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "id":I
    const/4 v1, 0x0

    .line 94
    .local v1, "value":I
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 95
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_2

    .line 98
    :cond_0
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 99
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 101
    iget-object v2, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mIntValues:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .end local v0    # "id":I
    .end local v1    # "value":I
    goto :goto_0

    .line 103
    :cond_3
    return-void
.end method


# virtual methods
.method build()Lcom/android/car/vehiclehal/DiagnosticJson;
    .locals 8

    .line 152
    new-instance v7, Lcom/android/car/vehiclehal/DiagnosticJson;

    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mType:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    .line 153
    invoke-virtual {v0}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mTimestamp:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    invoke-virtual {v0}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mIntValues:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mFloatValues:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder;->mDtc:Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/car/vehiclehal/DiagnosticJson;-><init>(Ljava/lang/String;JLandroid/util/SparseArray;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 152
    return-object v7
.end method
