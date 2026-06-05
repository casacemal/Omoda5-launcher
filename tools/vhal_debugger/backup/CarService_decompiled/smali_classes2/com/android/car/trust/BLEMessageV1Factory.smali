.class Lcom/android/car/trust/BLEMessageV1Factory;
.super Ljava/lang/Object;
.source "BLEMessageV1Factory.java"


# static fields
.field private static final BOOLEAN_FIELD_ENCODING_SIZE:I = 0x1

.field private static final CONSTANT_HEADER_FIELD_SIZE:I

.field private static final FIELD_NUMBER_ENCODING_SIZE:I = 0x1

.field private static final FIXED_32_SIZE:I = 0x4

.field private static final PROTOCOL_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BLEMessageFactory"

.field private static final VERSION_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/car/trust/BLEMessageV1Factory;->getEncodedSize(I)I

    move-result v1

    add-int/2addr v1, v0

    sput v1, Lcom/android/car/trust/BLEMessageV1Factory;->VERSION_SIZE:I

    .line 80
    sget v0, Lcom/android/car/trust/BLEMessageV1Factory;->VERSION_SIZE:I

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/car/trust/BLEMessageV1Factory;->CONSTANT_HEADER_FIELD_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEncodedSize(I)I
    .locals 2
    .param p0, "value"    # I

    .line 196
    if-gez p0, :cond_0

    .line 197
    const-string v0, "BLEMessageFactory"

    const-string v1, "Get a negative value from proto"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v0, 0xa

    return v0

    .line 200
    :cond_0
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_1
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_2

    .line 204
    const/4 v0, 0x2

    return v0

    .line 206
    :cond_2
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    .line 207
    const/4 v0, 0x3

    return v0

    .line 209
    :cond_3
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_4

    .line 210
    const/4 v0, 0x4

    return v0

    .line 212
    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method static getProtoHeaderSize(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;IZ)I
    .locals 4
    .param p0, "operation"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .param p1, "payloadSize"    # I
    .param p2, "isPayloadEncrypted"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 172
    if-eqz p2, :cond_0

    .line 173
    const/4 v0, 0x2

    goto :goto_0

    .line 174
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 175
    .local v0, "isPayloadEncryptedFieldSize":I
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->getNumber()I

    move-result v1

    invoke-static {v1}, Lcom/android/car/trust/BLEMessageV1Factory;->getEncodedSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 178
    .local v1, "operationSize":I
    invoke-static {p1}, Lcom/android/car/trust/BLEMessageV1Factory;->getEncodedSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 180
    .local v2, "payloadEncodingSize":I
    sget v3, Lcom/android/car/trust/BLEMessageV1Factory;->CONSTANT_HEADER_FIELD_SIZE:I

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    return v3
.end method

.method static makeAcknowledgementMessage()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 3

    .line 97
    invoke-static {}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->newBuilder()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setVersion(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    sget-object v2, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ACK:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 99
    invoke-virtual {v0, v2}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setOperation(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setPacketNumber(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setTotalPackets(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setIsPayloadEncrypted(Z)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->build()Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 97
    return-object v0
.end method

.method private static makeBLEMessage([BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 2
    .param p0, "payload"    # [B
    .param p1, "operation"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .param p2, "isPayloadEncrypted"    # Z

    .line 118
    invoke-static {}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->newBuilder()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setVersion(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setOperation(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setPacketNumber(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setTotalPackets(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p2}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setIsPayloadEncrypted(Z)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 124
    invoke-static {p0}, Lcom/android/car/protobuf/ByteString;->copyFrom([B)Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setPayload(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->build()Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 118
    return-object v0
.end method

.method public static makeBLEMessages([BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;IZ)Ljava/util/List;
    .locals 9
    .param p0, "payload"    # [B
    .param p1, "operation"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .param p2, "maxSize"    # I
    .param p3, "isPayloadEncrypted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "bleMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;>;"
    array-length v1, p0

    .line 141
    .local v1, "payloadSize":I
    nop

    .line 142
    invoke-static {p1, v1, p3}, Lcom/android/car/trust/BLEMessageV1Factory;->getProtoHeaderSize(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;IZ)I

    move-result v2

    sub-int v2, p2, v2

    .line 143
    .local v2, "maxPayloadSize":I
    if-gt v1, v2, :cond_0

    .line 144
    invoke-static {p0, p1, p3}, Lcom/android/car/trust/BLEMessageV1Factory;->makeBLEMessage([BLcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;Z)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0

    .line 147
    :cond_0
    int-to-double v3, v1

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 148
    .local v3, "totalPackets":I
    const/4 v4, 0x0

    .line 149
    .local v4, "start":I
    move v5, v2

    .line 150
    .local v5, "end":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 151
    invoke-static {}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->newBuilder()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v7

    .line 152
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setVersion(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v7

    .line 153
    invoke-virtual {v7, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setOperation(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    .line 154
    invoke-virtual {v7, v8}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setPacketNumber(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v7

    .line 155
    invoke-virtual {v7, v3}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setTotalPackets(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v7

    .line 156
    invoke-virtual {v7, p3}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setIsPayloadEncrypted(Z)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v7

    .line 157
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/car/protobuf/ByteString;->copyFrom([B)Lcom/android/car/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->setPayload(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    move-result-object v7

    .line 158
    invoke-virtual {v7}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->build()Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v7

    check-cast v7, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 151
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    move v4, v5

    .line 160
    add-int v7, v4, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 162
    .end local v6    # "i":I
    :cond_1
    return-object v0
.end method
