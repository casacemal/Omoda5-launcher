.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureGcmProximityAuthProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallbackOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceProximityCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallbackOrBuilder;"
    }
.end annotation


# static fields
.field public static final CALLBACK_BLUETOOTH_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_VERSION_FIELD_NUMBER:I = 0x3

.field public static final SOURCE_DEVICE_TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private callbackBluetoothAddress_:Ljava/lang/String;

.field private protocolVersion_:I

.field private sourceDeviceType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1567
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    .line 1568
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->makeImmutable()V

    .line 1569
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 989
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 990
    const-string v0, ""

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    .line 991
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 992
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    .line 993
    return-void
.end method

.method static synthetic access$1200()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1

    .line 984
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .param p1, "x1"    # Ljava/lang/String;

    .line 984
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->setCallbackBluetoothAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    .line 984
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->clearCallbackBluetoothAddress()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 984
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->setCallbackBluetoothAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 984
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->setSourceDeviceType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    .line 984
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->clearSourceDeviceType()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .param p1, "x1"    # I

    .line 984
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->setProtocolVersion(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    .line 984
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->clearProtocolVersion()V

    return-void
.end method

.method private clearCallbackBluetoothAddress()V
    .locals 1

    .line 1056
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1057
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getCallbackBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    .line 1058
    return-void
.end method

.method private clearProtocolVersion()V
    .locals 1

    .line 1166
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1167
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    .line 1168
    return-void
.end method

.method private clearSourceDeviceType()V
    .locals 1

    .line 1121
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1122
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 1123
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1

    .line 1572
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1

    .line 1268
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    .line 1271
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1245
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1251
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1209
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1216
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1256
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1263
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1240
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1221
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1228
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;",
            ">;"
        }
    .end annotation

    .line 1578
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCallbackBluetoothAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1041
    if-eqz p1, :cond_0

    .line 1044
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1045
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    .line 1046
    return-void

    .line 1042
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setCallbackBluetoothAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1069
    if-eqz p1, :cond_0

    .line 1072
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1073
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    .line 1074
    return-void

    .line 1070
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setProtocolVersion(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1155
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1156
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    .line 1157
    return-void
.end method

.method private setSourceDeviceType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 1107
    if-eqz p1, :cond_0

    .line 1110
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1111
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 1112
    return-void

    .line 1108
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

    .line 1465
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1560
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1551
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    monitor-enter v0

    .line 1552
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 1553
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->PARSER:Lcom/google/protobuf/Parser;

    .line 1555
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1557
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 1496
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 1498
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 1501
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 1502
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_8

    .line 1503
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1504
    .local v3, "tag":I
    if-eqz v3, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_2

    .line 1509
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1510
    const/4 v2, 0x1

    goto :goto_2

    .line 1532
    :cond_2
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1533
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    goto :goto_2

    .line 1521
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 1522
    .local v4, "rawValue":I
    invoke-static {v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    move-result-object v5

    .line 1523
    .local v5, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    const/4 v6, 0x2

    if-nez v5, :cond_4

    .line 1524
    invoke-super {p0, v6, v4}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 1526
    :cond_4
    iget v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1527
    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 1529
    goto :goto_2

    .line 1515
    .end local v4    # "rawValue":I
    .end local v5    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1516
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1517
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1518
    goto :goto_2

    .line 1506
    .end local v4    # "s":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    .line 1507
    nop

    .line 1537
    .end local v3    # "tag":I
    :cond_7
    :goto_2
    goto :goto_1

    .line 1544
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 1540
    :catch_0
    move-exception v2

    .line 1541
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1543
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 1538
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1539
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1544
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 1545
    :cond_8
    nop

    .line 1548
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0

    .line 1479
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1480
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    .line 1481
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    nop

    .line 1482
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasCallbackBluetoothAddress()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    .line 1483
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasCallbackBluetoothAddress()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    .line 1481
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    .line 1484
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasSourceDeviceType()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 1485
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasSourceDeviceType()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 1484
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 1486
    nop

    .line 1487
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasProtocolVersion()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    .line 1488
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasProtocolVersion()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    .line 1486
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    .line 1489
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_9

    .line 1491
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    .line 1493
    :cond_9
    return-object p0

    .line 1476
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;)V

    return-object v0

    .line 1473
    :pswitch_5
    return-object v1

    .line 1470
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    return-object v0

    .line 1467
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;-><init>()V

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

.method public getCallbackBluetoothAddress()Ljava/lang/String;
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackBluetoothAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->callbackBluetoothAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1145
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1185
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->memoizedSerializedSize:I

    .line 1186
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1188
    :cond_0
    const/4 v0, 0x0

    .line 1189
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1190
    nop

    .line 1191
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getCallbackBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1193
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1194
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    .line 1195
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1197
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 1198
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    .line 1199
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1201
    :cond_3
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1202
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->memoizedSerializedSize:I

    .line 1203
    return v0
.end method

.method public getSourceDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 2

    .line 1096
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    move-result-object v0

    .line 1097
    .local v0, "result":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public hasCallbackBluetoothAddress()Z
    .locals 2

    .line 1006
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasProtocolVersion()Z
    .locals 2

    .line 1135
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

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

.method public hasSourceDeviceType()Z
    .locals 2

    .line 1086
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1172
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getCallbackBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1175
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1176
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->sourceDeviceType_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1178
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1179
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->protocolVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1182
    return-void
.end method
