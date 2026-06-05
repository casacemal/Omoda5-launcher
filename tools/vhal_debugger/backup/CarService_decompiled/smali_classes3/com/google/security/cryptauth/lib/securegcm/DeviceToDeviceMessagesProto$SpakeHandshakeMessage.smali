.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpakeHandshakeMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

.field public static final EC_POINT_FIELD_NUMBER:I = 0x2

.field public static final FLOW_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final HASH_VALUE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

.field private flowNumber_:I

.field private hashValue_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private payload_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2930
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 2931
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->makeImmutable()V

    .line 2932
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2801
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->memoizedIsInitialized:B

    .line 2240
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    .line 2241
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2242
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 2243
    return-void
.end method

.method static synthetic access$3000()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1

    .line 2234
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .param p1, "x1"    # I

    .line 2234
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->setFlowNumber(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 2234
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->clearFlowNumber()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2234
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->setEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    .line 2234
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->setEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2234
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->mergeEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 2234
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->clearEcPoint()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2234
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->setHashValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 2234
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->clearHashValue()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2234
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 2234
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->clearPayload()V

    return-void
.end method

.method private clearEcPoint()V
    .locals 1

    .line 2362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2363
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2364
    return-void
.end method

.method private clearFlowNumber()V
    .locals 1

    .line 2286
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2287
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    .line 2288
    return-void
.end method

.method private clearHashValue()V
    .locals 1

    .line 2410
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2411
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getHashValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2412
    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 2462
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2463
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 2464
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1

    .line 2935
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method private mergeEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2346
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    if-eqz v0, :cond_0

    .line 2347
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2349
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->newBuilder(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    goto :goto_0

    .line 2351
    :cond_0
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2353
    :goto_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2354
    return-void
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1

    .line 2571
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 2574
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2548
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2554
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2512
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2519
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2559
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2566
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2536
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2543
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2524
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2531
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;",
            ">;"
        }
    .end annotation

    .line 2941
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    .line 2335
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2336
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2337
    return-void
.end method

.method private setEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2320
    if-eqz p1, :cond_0

    .line 2323
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2324
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2325
    return-void

    .line 2321
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setFlowNumber(I)V
    .locals 1
    .param p1, "value"    # I

    .line 2275
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2276
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    .line 2277
    return-void
.end method

.method private setHashValue(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2396
    if-eqz p1, :cond_0

    .line 2399
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2400
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2401
    return-void

    .line 2397
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2447
    if-eqz p1, :cond_0

    .line 2450
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2451
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 2452
    return-void

    .line 2448
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2805
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2923
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2914
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    monitor-enter v0

    .line 2915
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2916
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 2918
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2920
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2853
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2855
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2858
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 2859
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_a

    .line 2860
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 2861
    .local v4, "tag":I
    if-eqz v4, :cond_8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    const/16 v6, 0x12

    if-eq v4, v6, :cond_4

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_3

    const/16 v6, 0x22

    if-eq v4, v6, :cond_2

    .line 2866
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2867
    const/4 v3, 0x1

    goto :goto_2

    .line 2895
    :cond_2
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2896
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 2890
    :cond_3
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2891
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2892
    goto :goto_2

    .line 2877
    :cond_4
    const/4 v5, 0x0

    .line 2878
    .local v5, "subBuilder":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    .line 2879
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    move-object v5, v6

    .line 2881
    :cond_5
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2882
    if-eqz v5, :cond_6

    .line 2883
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v5, v6}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2884
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2886
    :cond_6
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2887
    goto :goto_2

    .line 2872
    .end local v5    # "subBuilder":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    :cond_7
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/2addr v5, v1

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2873
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2874
    goto :goto_2

    .line 2863
    :cond_8
    const/4 v3, 0x1

    .line 2864
    nop

    .line 2900
    .end local v4    # "tag":I
    :cond_9
    :goto_2
    goto :goto_1

    .line 2907
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 2903
    :catch_0
    move-exception v1

    .line 2904
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2906
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 2901
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 2902
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2907
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 2908
    :cond_a
    nop

    .line 2911
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v0

    .line 2834
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2835
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 2836
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    nop

    .line 2837
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasFlowNumber()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    .line 2838
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasFlowNumber()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    .line 2836
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    .line 2839
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    iget-object v3, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2840
    nop

    .line 2841
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasHashValue()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2842
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasHashValue()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2840
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2843
    nop

    .line 2844
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasPayload()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 2845
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasPayload()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 2843
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 2846
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_b

    .line 2848
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    .line 2850
    :cond_b
    return-object p0

    .line 2831
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V

    return-object v0

    .line 2828
    :pswitch_5
    return-object v2

    .line 2810
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->memoizedIsInitialized:B

    .line 2811
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_c

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v1

    .line 2812
    :cond_c
    if-nez v0, :cond_d

    return-object v2

    .line 2814
    :cond_d
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2815
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasEcPoint()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2816
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2817
    if-eqz v3, :cond_e

    .line 2818
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->memoizedIsInitialized:B

    .line 2820
    :cond_e
    return-object v2

    .line 2823
    :cond_f
    if-eqz v3, :cond_10

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->memoizedIsInitialized:B

    .line 2824
    :cond_10
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    return-object v1

    .line 2807
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;-><init>()V

    return-object v0

    nop

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

.method public getEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1

    .line 2310
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->ecPoint_:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFlowNumber()I
    .locals 1

    .line 2265
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    return v0
.end method

.method public getHashValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2386
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2436
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2484
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->memoizedSerializedSize:I

    .line 2485
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2487
    :cond_0
    const/4 v0, 0x0

    .line 2488
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2489
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    .line 2490
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2492
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2493
    nop

    .line 2494
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2496
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 2497
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    .line 2498
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2500
    :cond_3
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2501
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 2502
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2504
    :cond_4
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2505
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->memoizedSerializedSize:I

    .line 2506
    return v0
.end method

.method public hasEcPoint()Z
    .locals 2

    .line 2300
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFlowNumber()Z
    .locals 2

    .line 2255
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasHashValue()Z
    .locals 2

    .line 2376
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPayload()Z
    .locals 2

    .line 2425
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2468
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2469
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->flowNumber_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2471
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2472
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2474
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 2475
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hashValue_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2477
    :cond_2
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2478
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->payload_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2480
    :cond_3
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2481
    return-void
.end method
