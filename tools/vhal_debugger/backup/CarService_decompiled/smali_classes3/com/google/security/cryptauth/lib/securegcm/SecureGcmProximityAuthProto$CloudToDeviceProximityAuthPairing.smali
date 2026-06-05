.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureGcmProximityAuthProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudToDeviceProximityAuthPairing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairingOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDITIONAL_METADATA_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

.field public static final EPHEMERAL_SYMMETRIC_KEY_FIELD_NUMBER:I = 0x3

.field public static final INITIATING_DEVICE_BT_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final INITIATING_DEVICE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private additionalMetadata_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

.field private initiatingDeviceBtAddress_:Ljava/lang/String;

.field private initiatingDeviceName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 893
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    .line 894
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->makeImmutable()V

    .line 895
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 129
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    .line 130
    return-void
.end method

.method static synthetic access$000()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1

    .line 120
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .param p1, "x1"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->setInitiatingDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    .line 120
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->clearAdditionalMetadata()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    .line 120
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->clearInitiatingDeviceName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->setInitiatingDeviceNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .param p1, "x1"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->setInitiatingDeviceBtAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    .line 120
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->clearInitiatingDeviceBtAddress()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->setInitiatingDeviceBtAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->setEphemeralSymmetricKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    .line 120
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->clearEphemeralSymmetricKey()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->setAdditionalMetadata(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAdditionalMetadata()V
    .locals 1

    .line 396
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 397
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getAdditionalMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    .line 398
    return-void
.end method

.method private clearEphemeralSymmetricKey()V
    .locals 1

    .line 344
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 345
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getEphemeralSymmetricKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 346
    return-void
.end method

.method private clearInitiatingDeviceBtAddress()V
    .locals 1

    .line 280
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 281
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceBtAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 282
    return-void
.end method

.method private clearInitiatingDeviceName()V
    .locals 1

    .line 198
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 199
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1

    .line 898
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1

    .line 505
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    .line 508
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 453
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 458
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;",
            ">;"
        }
    .end annotation

    .line 904
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdditionalMetadata(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 381
    if-eqz p1, :cond_0

    .line 384
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 385
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    .line 386
    return-void

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEphemeralSymmetricKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 330
    if-eqz p1, :cond_0

    .line 333
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 334
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 335
    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setInitiatingDeviceBtAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_0

    .line 268
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 269
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 270
    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setInitiatingDeviceBtAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 293
    if-eqz p1, :cond_0

    .line 296
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 297
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 298
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setInitiatingDeviceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 182
    if-eqz p1, :cond_0

    .line 185
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 186
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    .line 187
    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setInitiatingDeviceNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 212
    if-eqz p1, :cond_0

    .line 215
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 216
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    .line 217
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 787
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 886
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 877
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    monitor-enter v0

    .line 878
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 879
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->PARSER:Lcom/google/protobuf/Parser;

    .line 881
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 883
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 822
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 824
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 827
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 828
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_8

    .line 829
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 830
    .local v3, "tag":I
    if-eqz v3, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0x12

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    .line 835
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 836
    const/4 v2, 0x1

    goto :goto_2

    .line 858
    :cond_2
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 859
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 853
    :cond_3
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 854
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 855
    goto :goto_2

    .line 847
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 848
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 849
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 850
    goto :goto_2

    .line 841
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 842
    .restart local v4    # "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 843
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 844
    goto :goto_2

    .line 832
    .end local v4    # "s":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    .line 833
    nop

    .line 863
    .end local v3    # "tag":I
    :cond_7
    :goto_2
    goto :goto_1

    .line 870
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 866
    :catch_0
    move-exception v2

    .line 867
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 869
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 864
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 865
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 870
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 871
    :cond_8
    nop

    .line 874
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0

    .line 801
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 802
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    .line 803
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    nop

    .line 804
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasInitiatingDeviceName()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    .line 805
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasInitiatingDeviceName()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    .line 803
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    .line 806
    nop

    .line 807
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasInitiatingDeviceBtAddress()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 808
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasInitiatingDeviceBtAddress()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 806
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    .line 809
    nop

    .line 810
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasEphemeralSymmetricKey()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 811
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasEphemeralSymmetricKey()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 809
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 812
    nop

    .line 813
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasAdditionalMetadata()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    .line 814
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasAdditionalMetadata()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    .line 812
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    .line 815
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_9

    .line 817
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    .line 819
    :cond_9
    return-object p0

    .line 798
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;)V

    return-object v0

    .line 795
    :pswitch_5
    return-object v1

    .line 792
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    return-object v0

    .line 789
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;-><init>()V

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

.method public getAdditionalMetadata()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEphemeralSymmetricKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInitiatingDeviceBtAddress()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getInitiatingDeviceBtAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceBtAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInitiatingDeviceName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getInitiatingDeviceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->initiatingDeviceName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 418
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->memoizedSerializedSize:I

    .line 419
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    .line 422
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 423
    nop

    .line 424
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 427
    nop

    .line 428
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 431
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    .line 432
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_3
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 435
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    .line 436
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_4
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->memoizedSerializedSize:I

    .line 440
    return v0
.end method

.method public hasAdditionalMetadata()Z
    .locals 2

    .line 359
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

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

.method public hasEphemeralSymmetricKey()Z
    .locals 2

    .line 310
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

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

.method public hasInitiatingDeviceBtAddress()Z
    .locals 2

    .line 230
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

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

.method public hasInitiatingDeviceName()Z
    .locals 2

    .line 144
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 405
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceBtAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 408
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 409
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->ephemeralSymmetricKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 411
    :cond_2
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 412
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->additionalMetadata_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 415
    return-void
.end method
