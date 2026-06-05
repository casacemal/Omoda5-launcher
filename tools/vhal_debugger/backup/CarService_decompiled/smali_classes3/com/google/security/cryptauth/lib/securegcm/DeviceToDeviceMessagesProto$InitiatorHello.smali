.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHelloOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitiatorHello"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHelloOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_VERSION_FIELD_NUMBER:I = 0x2

.field public static final PUBLIC_DH_KEY_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private protocolVersion_:I

.field private publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1054
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    .line 1055
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->makeImmutable()V

    .line 1056
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 584
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 941
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->memoizedIsInitialized:B

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    .line 586
    return-void
.end method

.method static synthetic access$1000(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    .line 579
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->clearPublicDhKey()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .param p1, "x1"    # I

    .line 579
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->setProtocolVersion(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    .line 579
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->clearProtocolVersion()V

    return-void
.end method

.method static synthetic access$600()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1

    .line 579
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 579
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    .line 579
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 579
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->mergePublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    return-void
.end method

.method private clearProtocolVersion()V
    .locals 1

    .line 705
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 706
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    .line 707
    return-void
.end method

.method private clearPublicDhKey()V
    .locals 1

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 661
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 662
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1

    .line 1059
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method private mergePublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 644
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    if-eqz v0, :cond_0

    .line 645
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 647
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    goto :goto_0

    .line 649
    :cond_0
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 651
    :goto_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 652
    return-void
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1

    .line 800
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    .line 803
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 741
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 748
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 753
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 760
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;",
            ">;"
        }
    .end annotation

    .line 1065
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setProtocolVersion(I)V
    .locals 1
    .param p1, "value"    # I

    .line 694
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 695
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    .line 696
    return-void
.end method

.method private setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    .line 633
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 634
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 635
    return-void
.end method

.method private setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 618
    if-eqz p1, :cond_0

    .line 621
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 622
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 623
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1047
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1038
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    monitor-enter v0

    .line 1039
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 1040
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->PARSER:Lcom/google/protobuf/Parser;

    .line 1042
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1044
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 987
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 989
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 992
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 993
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_8

    .line 994
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 995
    .local v4, "tag":I
    if-eqz v4, :cond_6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    .line 1000
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1001
    const/4 v3, 0x1

    goto :goto_2

    .line 1019
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 1020
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    goto :goto_2

    .line 1006
    :cond_3
    const/4 v5, 0x0

    .line 1007
    .local v5, "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_4

    .line 1008
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-object v5, v6

    .line 1010
    :cond_4
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 1011
    if-eqz v5, :cond_5

    .line 1012
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v5, v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1013
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 1015
    :cond_5
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1016
    goto :goto_2

    .line 997
    .end local v5    # "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    :cond_6
    const/4 v3, 0x1

    .line 998
    nop

    .line 1024
    .end local v4    # "tag":I
    :cond_7
    :goto_2
    goto :goto_1

    .line 1031
    .end local v3    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 1027
    :catch_0
    move-exception v2

    .line 1028
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1030
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 1025
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1026
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1031
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 1032
    :cond_8
    nop

    .line 1035
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v0

    .line 974
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 975
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    .line 976
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    iget-object v3, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 977
    nop

    .line 978
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->hasProtocolVersion()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    .line 979
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->hasProtocolVersion()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    .line 977
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    .line 980
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_9

    .line 982
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    .line 984
    :cond_9
    return-object p0

    .line 971
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V

    return-object v0

    .line 968
    :pswitch_5
    return-object v1

    .line 950
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->memoizedIsInitialized:B

    .line 951
    .local v0, "isInitialized":B
    if-ne v0, v2, :cond_a

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v1

    .line 952
    :cond_a
    if-nez v0, :cond_b

    return-object v1

    .line 954
    :cond_b
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 955
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->hasPublicDhKey()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 956
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_d

    .line 957
    if-eqz v3, :cond_c

    .line 958
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->memoizedIsInitialized:B

    .line 960
    :cond_c
    return-object v1

    .line 963
    :cond_d
    if-eqz v3, :cond_e

    iput-byte v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->memoizedIsInitialized:B

    .line 964
    :cond_e
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    return-object v1

    .line 947
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;-><init>()V

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

.method public getProtocolVersion()I
    .locals 1

    .line 684
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    return v0
.end method

.method public getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->publicDhKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 721
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->memoizedSerializedSize:I

    .line 722
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 724
    :cond_0
    const/4 v0, 0x0

    .line 725
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 726
    nop

    .line 727
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 730
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    .line 731
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 733
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->memoizedSerializedSize:I

    .line 735
    return v0
.end method

.method public hasProtocolVersion()Z
    .locals 2

    .line 674
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

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

.method public hasPublicDhKey()Z
    .locals 2

    .line 598
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

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
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 714
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 715
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->protocolVersion_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 718
    return-void
.end method
