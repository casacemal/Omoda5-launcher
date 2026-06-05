.class Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType$1;
.super Ljava/lang/Object;
.source "BLEOperationProto.java"

# interfaces
.implements Lcom/android/car/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
        "Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .locals 1
    .param p1, "number"    # I

    .line 127
    invoke-static {p1}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->forNumber(I)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/android/car/protobuf/Internal$EnumLite;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType$1;->findValueByNumber(I)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    move-result-object p1

    return-object p1
.end method
