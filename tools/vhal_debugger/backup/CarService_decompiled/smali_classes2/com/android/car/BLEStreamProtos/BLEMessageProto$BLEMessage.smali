.class public final Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
.super Lcom/android/car/protobuf/GeneratedMessageLite;
.source "BLEMessageProto.java"

# interfaces
.implements Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BLEStreamProtos/BLEMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BLEMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/protobuf/GeneratedMessageLite<",
        "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;",
        "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;",
        ">;",
        "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

.field public static final IS_PAYLOAD_ENCRYPTED_FIELD_NUMBER:I = 0x5

.field public static final OPERATION_FIELD_NUMBER:I = 0x2

.field public static final PACKET_NUMBER_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/car/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/protobuf/Parser<",
            "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x6

.field public static final TOTAL_PACKETS_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private isPayloadEncrypted_:Z

.field private operation_:I

.field private packetNumber_:I

.field private payload_:Lcom/android/car/protobuf/ByteString;

.field private totalPackets_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 832
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-direct {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;-><init>()V

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 833
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->makeImmutable()V

    .line 834
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    .line 92
    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    .line 93
    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    .line 94
    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    .line 95
    iput-boolean v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    .line 96
    sget-object v0, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    .line 97
    return-void
.end method

.method static synthetic access$000()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->setVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .param p1, "x1"    # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->setIsPayloadEncrypted(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 85
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->clearIsPayloadEncrypted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;Lcom/android/car/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .param p1, "x1"    # Lcom/android/car/protobuf/ByteString;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->setPayload(Lcom/android/car/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 85
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->clearPayload()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 85
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->setOperationValue(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .param p1, "x1"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->setOperation(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 85
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->clearOperation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->setPacketNumber(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 85
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->clearPacketNumber()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->setTotalPackets(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 85
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->clearTotalPackets()V

    return-void
.end method

.method private clearIsPayloadEncrypted()V
    .locals 1

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    .line 298
    return-void
.end method

.method private clearOperation()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    .line 190
    return-void
.end method

.method private clearPacketNumber()V
    .locals 1

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    .line 228
    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 335
    invoke-static {}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getDefaultInstance()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getPayload()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    .line 336
    return-void
.end method

.method private clearTotalPackets()V
    .locals 1

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    .line 263
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    .line 131
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1

    .line 837
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1

    .line 455
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 458
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    invoke-virtual {v0, p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->mergeFrom(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "data"    # Lcom/android/car/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[B)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0
.end method

.method public static parser()Lcom/android/car/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/car/protobuf/Parser<",
            "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;",
            ">;"
        }
    .end annotation

    .line 843
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getParserForType()Lcom/android/car/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIsPayloadEncrypted(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 286
    iput-boolean p1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    .line 287
    return-void
.end method

.method private setOperation(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)V
    .locals 1
    .param p1, "value"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 174
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    .line 179
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setOperationValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 164
    iput p1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    .line 165
    return-void
.end method

.method private setPacketNumber(I)V
    .locals 0
    .param p1, "value"    # I

    .line 215
    iput p1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    .line 216
    return-void
.end method

.method private setPayload(Lcom/android/car/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/android/car/protobuf/ByteString;

    .line 320
    if-eqz p1, :cond_0

    .line 324
    iput-object p1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    .line 325
    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTotalPackets(I)V
    .locals 0
    .param p1, "value"    # I

    .line 251
    iput p1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    .line 252
    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .param p1, "value"    # I

    .line 119
    iput p1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    .line 120
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 825
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 816
    :pswitch_0
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->PARSER:Lcom/android/car/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    monitor-enter v0

    .line 817
    :try_start_0
    sget-object v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->PARSER:Lcom/android/car/protobuf/Parser;

    if-nez v1, :cond_0

    .line 818
    new-instance v1, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-direct {v1, v2}, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/car/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->PARSER:Lcom/android/car/protobuf/Parser;

    .line 820
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 822
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->PARSER:Lcom/android/car/protobuf/Parser;

    return-object v0

    .line 752
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/android/car/protobuf/CodedInputStream;

    .line 754
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 757
    .local v1, "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 758
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_a

    .line 759
    :try_start_1
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 760
    .local v3, "tag":I
    if-eqz v3, :cond_8

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    const/16 v4, 0x10

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_5

    const/16 v4, 0x25

    if-eq v3, v4, :cond_4

    const/16 v4, 0x28

    if-eq v3, v4, :cond_3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_2

    .line 765
    invoke-virtual {v0, v3}, Lcom/android/car/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 766
    const/4 v2, 0x1

    goto :goto_2

    .line 798
    :cond_2
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readBytes()Lcom/android/car/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    goto :goto_2

    .line 793
    :cond_3
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    .line 794
    goto :goto_2

    .line 788
    :cond_4
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    .line 789
    goto :goto_2

    .line 783
    :cond_5
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    .line 784
    goto :goto_2

    .line 776
    :cond_6
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 778
    .local v4, "rawValue":I
    iput v4, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    .line 779
    goto :goto_2

    .line 772
    .end local v4    # "rawValue":I
    :cond_7
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 773
    goto :goto_2

    .line 762
    :cond_8
    const/4 v2, 0x1

    .line 763
    nop

    .line 802
    .end local v3    # "tag":I
    :cond_9
    :goto_2
    goto :goto_1

    .line 809
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 805
    :catch_0
    move-exception v2

    .line 806
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/android/car/protobuf/InvalidProtocolBufferException;

    .line 808
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/car/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .end local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 803
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .restart local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 804
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .end local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 809
    .end local v2    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .restart local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 810
    :cond_a
    nop

    .line 813
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0

    .line 733
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;

    .line 734
    .local v0, "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    .line 735
    .local v1, "other":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    iget v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_4

    :cond_b
    move v2, v4

    :goto_4
    iget v5, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    if-eqz v6, :cond_c

    move v6, v3

    goto :goto_5

    :cond_c
    move v6, v4

    :goto_5
    iget v7, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    invoke-interface {v0, v2, v5, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    .line 737
    iget v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_6

    :cond_d
    move v2, v4

    :goto_6
    iget v5, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_7

    :cond_e
    move v6, v4

    :goto_7
    iget v7, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    invoke-interface {v0, v2, v5, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    .line 738
    iget v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    if-eqz v2, :cond_f

    move v2, v3

    goto :goto_8

    :cond_f
    move v2, v4

    :goto_8
    iget v5, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    if-eqz v6, :cond_10

    move v6, v3

    goto :goto_9

    :cond_10
    move v6, v4

    :goto_9
    iget v7, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    invoke-interface {v0, v2, v5, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    .line 740
    iget v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    if-eqz v2, :cond_11

    move v2, v3

    goto :goto_a

    :cond_11
    move v2, v4

    :goto_a
    iget v5, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    if-eqz v6, :cond_12

    move v6, v3

    goto :goto_b

    :cond_12
    move v6, v4

    :goto_b
    iget v7, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    invoke-interface {v0, v2, v5, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    .line 742
    iget-boolean v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    iget-boolean v5, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    invoke-interface {v0, v2, v2, v5, v5}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    .line 744
    iget-object v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    sget-object v5, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    if-eq v2, v5, :cond_13

    move v2, v3

    goto :goto_c

    :cond_13
    move v2, v4

    :goto_c
    iget-object v5, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    iget-object v6, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    sget-object v7, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    if-eq v6, v7, :cond_14

    goto :goto_d

    :cond_14
    move v3, v4

    :goto_d
    iget-object v4, v1, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    invoke-interface {v0, v2, v5, v3, v4}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/android/car/protobuf/ByteString;ZLcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    .line 746
    sget-object v2, Lcom/android/car/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/car/protobuf/GeneratedMessageLite$MergeFromVisitor;

    .line 749
    return-object p0

    .line 730
    .end local v0    # "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    :pswitch_4
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;

    invoke-direct {v0, v1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;-><init>(Lcom/android/car/BLEStreamProtos/BLEMessageProto$1;)V

    return-object v0

    .line 727
    :pswitch_5
    return-object v1

    .line 724
    :pswitch_6
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    return-object v0

    .line 721
    :pswitch_7
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-direct {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getIsPayloadEncrypted()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    return v0
.end method

.method public getOperation()Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->forNumber(I)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    move-result-object v0

    .line 154
    .local v0, "result":Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->UNRECOGNIZED:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getOperationValue()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    return v0
.end method

.method public getPacketNumber()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    return v0
.end method

.method public getPayload()Lcom/android/car/protobuf/ByteString;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 361
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->memoizedSerializedSize:I

    .line 362
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 364
    :cond_0
    const/4 v0, 0x0

    .line 365
    iget v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    if-eqz v1, :cond_1

    .line 366
    const/4 v2, 0x1

    .line 367
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_1
    iget v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    sget-object v2, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->OPERATION_TYPE_UNKNOWN:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    invoke-virtual {v2}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 370
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    .line 371
    invoke-static {v1, v2}, Lcom/android/car/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_2
    iget v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    if-eqz v1, :cond_3

    .line 374
    const/4 v2, 0x3

    .line 375
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_3
    iget v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    if-eqz v1, :cond_4

    .line 378
    const/4 v2, 0x4

    .line 379
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_4
    iget-boolean v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    if-eqz v1, :cond_5

    .line 382
    const/4 v2, 0x5

    .line 383
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_5
    iget-object v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/car/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 386
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    .line 387
    invoke-static {v1, v2}, Lcom/android/car/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/car/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_6
    iput v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->memoizedSerializedSize:I

    .line 390
    return v0
.end method

.method public getTotalPackets()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    return v0
.end method

.method public writeTo(Lcom/android/car/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/android/car/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->version_:I

    if-eqz v0, :cond_0

    .line 341
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 343
    :cond_0
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    sget-object v1, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->OPERATION_TYPE_UNKNOWN:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    invoke-virtual {v1}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 344
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->operation_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/car/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 346
    :cond_1
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->packetNumber_:I

    if-eqz v0, :cond_2

    .line 347
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 349
    :cond_2
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->totalPackets_:I

    if-eqz v0, :cond_3

    .line 350
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 352
    :cond_3
    iget-boolean v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->isPayloadEncrypted_:Z

    if-eqz v0, :cond_4

    .line 353
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/car/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 356
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->payload_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/android/car/protobuf/CodedOutputStream;->writeBytes(ILcom/android/car/protobuf/ByteString;)V

    .line 358
    :cond_5
    return-void
.end method
