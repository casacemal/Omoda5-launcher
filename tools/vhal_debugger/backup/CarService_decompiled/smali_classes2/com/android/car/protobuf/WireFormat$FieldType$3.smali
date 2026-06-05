.class final enum Lcom/android/car/protobuf/WireFormat$FieldType$3;
.super Lcom/android/car/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/car/protobuf/WireFormat$JavaType;I)V
    .locals 6
    .param p3, "javaType"    # Lcom/android/car/protobuf/WireFormat$JavaType;
    .param p4, "wireType"    # I

    .line 128
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/car/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/car/protobuf/WireFormat$JavaType;ILcom/android/car/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public isPackable()Z
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method
