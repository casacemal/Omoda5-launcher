.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GcmMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private type_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7374
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 7375
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->makeImmutable()V

    .line 7376
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7264
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->memoizedIsInitialized:B

    .line 7027
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    .line 7028
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    .line 7029
    return-void
.end method

.method static synthetic access$9200()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1

    .line 7021
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 7021
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->setType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 7021
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->clearType()V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .param p1, "x1"    # I

    .line 7021
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->setVersion(I)V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 7021
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->clearVersion()V

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 7060
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    .line 7061
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    .line 7062
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 7089
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    .line 7090
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    .line 7091
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1

    .line 7379
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
    .locals 1

    .line 7184
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 7187
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7161
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7167
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7125
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7132
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7172
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7179
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7149
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7156
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7137
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7144
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;",
            ">;"
        }
    .end annotation

    .line 7385
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 7050
    if-eqz p1, :cond_0

    .line 7053
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    .line 7054
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    .line 7055
    return-void

    .line 7051
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setVersion(I)V
    .locals 1
    .param p1, "value"    # I

    .line 7082
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    .line 7083
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    .line 7084
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 7268
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 7367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7358
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    monitor-enter v0

    .line 7359
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 7360
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 7362
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7364
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 7309
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 7311
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 7314
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 7315
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_7

    .line 7316
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 7317
    .local v4, "tag":I
    if-eqz v4, :cond_5

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    .line 7322
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 7323
    const/4 v3, 0x1

    goto :goto_2

    .line 7339
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    .line 7340
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    goto :goto_2

    .line 7328
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 7329
    .local v5, "rawValue":I
    invoke-static {v5}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v6

    .line 7330
    .local v6, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    if-nez v6, :cond_4

    .line 7331
    invoke-super {p0, v2, v5}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 7333
    :cond_4
    iget v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    or-int/2addr v7, v2

    iput v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    .line 7334
    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7336
    goto :goto_2

    .line 7319
    .end local v5    # "rawValue":I
    .end local v6    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    :cond_5
    const/4 v3, 0x1

    .line 7320
    nop

    .line 7344
    .end local v4    # "tag":I
    :cond_6
    :goto_2
    goto :goto_1

    .line 7351
    .end local v3    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 7347
    :catch_0
    move-exception v2

    .line 7348
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 7350
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 7345
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 7346
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7351
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 7352
    :cond_7
    nop

    .line 7355
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v0

    .line 7295
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 7296
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 7297
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->hasType()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    .line 7298
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->hasType()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    .line 7297
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    .line 7299
    nop

    .line 7300
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->hasVersion()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    .line 7301
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->hasVersion()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    .line 7299
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    .line 7302
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_8

    .line 7304
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    .line 7306
    :cond_8
    return-object p0

    .line 7292
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V

    return-object v0

    .line 7289
    :pswitch_5
    return-object v1

    .line 7273
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->memoizedIsInitialized:B

    .line 7274
    .local v0, "isInitialized":B
    if-ne v0, v2, :cond_9

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v1

    .line 7275
    :cond_9
    if-nez v0, :cond_a

    return-object v1

    .line 7277
    :cond_a
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 7278
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->hasType()Z

    move-result v4

    if-nez v4, :cond_c

    .line 7279
    if-eqz v3, :cond_b

    .line 7280
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->memoizedIsInitialized:B

    .line 7282
    :cond_b
    return-object v1

    .line 7284
    :cond_c
    if-eqz v3, :cond_d

    iput-byte v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->memoizedIsInitialized:B

    .line 7285
    :cond_d
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    return-object v1

    .line 7270
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;-><init>()V

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

.method public getSerializedSize()I
    .locals 3

    .line 7105
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->memoizedSerializedSize:I

    .line 7106
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7108
    :cond_0
    const/4 v0, 0x0

    .line 7109
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7110
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    .line 7111
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7113
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 7114
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    .line 7115
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7117
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7118
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->memoizedSerializedSize:I

    .line 7119
    return v0
.end method

.method public getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .locals 2

    .line 7043
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v0

    .line 7044
    .local v0, "result":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getVersion()I
    .locals 1

    .line 7076
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    return v0
.end method

.method public hasType()Z
    .locals 2

    .line 7037
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVersion()Z
    .locals 2

    .line 7070
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

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

    .line 7095
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7096
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7098
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7099
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->version_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7101
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7102
    return-void
.end method
