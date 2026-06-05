.class public final Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
.super Lcom/android/car/protobuf/GeneratedMessageLite;
.source "VersionExchangeProto.java"

# interfaces
.implements Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BLEStreamProtos/VersionExchangeProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BLEVersionExchange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/protobuf/GeneratedMessageLite<",
        "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;",
        "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;",
        ">;",
        "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

.field public static final MAXSUPPORTEDMESSAGINGVERSION_FIELD_NUMBER:I = 0x2

.field public static final MAXSUPPORTEDSECURITYVERSION_FIELD_NUMBER:I = 0x4

.field public static final MINSUPPORTEDMESSAGINGVERSION_FIELD_NUMBER:I = 0x1

.field public static final MINSUPPORTEDSECURITYVERSION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/car/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/protobuf/Parser<",
            "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxSupportedMessagingVersion_:I

.field private maxSupportedSecurityVersion_:I

.field private minSupportedMessagingVersion_:I

.field private minSupportedSecurityVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 572
    new-instance v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-direct {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;-><init>()V

    sput-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 573
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->makeImmutable()V

    .line 574
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    .line 61
    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    .line 62
    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    .line 63
    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    .line 64
    return-void
.end method

.method static synthetic access$000()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->setMinSupportedMessagingVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 54
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->clearMinSupportedMessagingVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->setMaxSupportedMessagingVersion(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 54
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->clearMaxSupportedMessagingVersion()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->setMinSupportedSecurityVersion(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 54
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->clearMinSupportedSecurityVersion()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->setMaxSupportedSecurityVersion(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 54
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->clearMaxSupportedSecurityVersion()V

    return-void
.end method

.method private clearMaxSupportedMessagingVersion()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    .line 133
    return-void
.end method

.method private clearMaxSupportedSecurityVersion()V
    .locals 1

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    .line 203
    return-void
.end method

.method private clearMinSupportedMessagingVersion()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    .line 98
    return-void
.end method

.method private clearMinSupportedSecurityVersion()V
    .locals 1

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    .line 168
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1

    .line 577
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1

    .line 308
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 311
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    invoke-virtual {v0, p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->mergeFrom(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "data"    # Lcom/android/car/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[B)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0
.end method

.method public static parser()Lcom/android/car/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/car/protobuf/Parser<",
            "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;",
            ">;"
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->getParserForType()Lcom/android/car/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMaxSupportedMessagingVersion(I)V
    .locals 0
    .param p1, "value"    # I

    .line 121
    iput p1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    .line 122
    return-void
.end method

.method private setMaxSupportedSecurityVersion(I)V
    .locals 0
    .param p1, "value"    # I

    .line 191
    iput p1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    .line 192
    return-void
.end method

.method private setMinSupportedMessagingVersion(I)V
    .locals 0
    .param p1, "value"    # I

    .line 86
    iput p1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    .line 87
    return-void
.end method

.method private setMinSupportedSecurityVersion(I)V
    .locals 0
    .param p1, "value"    # I

    .line 156
    iput p1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    .line 157
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 565
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 556
    :pswitch_0
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->PARSER:Lcom/android/car/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    monitor-enter v0

    .line 557
    :try_start_0
    sget-object v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->PARSER:Lcom/android/car/protobuf/Parser;

    if-nez v1, :cond_0

    .line 558
    new-instance v1, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-direct {v1, v2}, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/car/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->PARSER:Lcom/android/car/protobuf/Parser;

    .line 560
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 562
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->PARSER:Lcom/android/car/protobuf/Parser;

    return-object v0

    .line 503
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/android/car/protobuf/CodedInputStream;

    .line 505
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 508
    .local v1, "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 509
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_8

    .line 510
    :try_start_1
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 511
    .local v3, "tag":I
    if-eqz v3, :cond_6

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x18

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    .line 516
    invoke-virtual {v0, v3}, Lcom/android/car/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 517
    const/4 v2, 0x1

    goto :goto_2

    .line 538
    :cond_2
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    goto :goto_2

    .line 533
    :cond_3
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    .line 534
    goto :goto_2

    .line 528
    :cond_4
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    .line 529
    goto :goto_2

    .line 523
    :cond_5
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 524
    goto :goto_2

    .line 513
    :cond_6
    const/4 v2, 0x1

    .line 514
    nop

    .line 542
    .end local v3    # "tag":I
    :cond_7
    :goto_2
    goto :goto_1

    .line 549
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 545
    :catch_0
    move-exception v2

    .line 546
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/android/car/protobuf/InvalidProtocolBufferException;

    .line 548
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/car/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .end local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 543
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .restart local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 544
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .end local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 549
    .end local v2    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .restart local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 550
    :cond_8
    nop

    .line 553
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0

    .line 487
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;

    .line 488
    .local v0, "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 489
    .local v1, "other":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    iget v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    iget v5, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    if-eqz v6, :cond_a

    move v6, v3

    goto :goto_5

    :cond_a
    move v6, v4

    :goto_5
    iget v7, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    invoke-interface {v0, v2, v5, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    .line 491
    iget v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_6

    :cond_b
    move v2, v4

    :goto_6
    iget v5, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    if-eqz v6, :cond_c

    move v6, v3

    goto :goto_7

    :cond_c
    move v6, v4

    :goto_7
    iget v7, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    invoke-interface {v0, v2, v5, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    .line 493
    iget v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_8

    :cond_d
    move v2, v4

    :goto_8
    iget v5, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_9

    :cond_e
    move v6, v4

    :goto_9
    iget v7, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    invoke-interface {v0, v2, v5, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    .line 495
    iget v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    if-eqz v2, :cond_f

    move v2, v3

    goto :goto_a

    :cond_f
    move v2, v4

    :goto_a
    iget v5, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    iget v6, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    if-eqz v6, :cond_10

    goto :goto_b

    :cond_10
    move v3, v4

    :goto_b
    iget v4, v1, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    invoke-interface {v0, v2, v5, v3, v4}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    .line 497
    sget-object v2, Lcom/android/car/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/car/protobuf/GeneratedMessageLite$MergeFromVisitor;

    .line 500
    return-object p0

    .line 484
    .end local v0    # "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    :pswitch_4
    new-instance v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    invoke-direct {v0, v1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;-><init>(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$1;)V

    return-object v0

    .line 481
    :pswitch_5
    return-object v1

    .line 478
    :pswitch_6
    sget-object v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->DEFAULT_INSTANCE:Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    return-object v0

    .line 475
    :pswitch_7
    new-instance v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-direct {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;-><init>()V

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

.method public getMaxSupportedMessagingVersion()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    return v0
.end method

.method public getMaxSupportedSecurityVersion()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    return v0
.end method

.method public getMinSupportedMessagingVersion()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    return v0
.end method

.method public getMinSupportedSecurityVersion()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 222
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->memoizedSerializedSize:I

    .line 223
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 226
    iget v1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    if-eqz v1, :cond_1

    .line 227
    const/4 v2, 0x1

    .line 228
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_1
    iget v1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    if-eqz v1, :cond_2

    .line 231
    const/4 v2, 0x2

    .line 232
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    :cond_2
    iget v1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    if-eqz v1, :cond_3

    .line 235
    const/4 v2, 0x3

    .line 236
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_3
    iget v1, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    if-eqz v1, :cond_4

    .line 239
    const/4 v2, 0x4

    .line 240
    invoke-static {v2, v1}, Lcom/android/car/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_4
    iput v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->memoizedSerializedSize:I

    .line 243
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

    .line 207
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedMessagingVersion_:I

    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 210
    :cond_0
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedMessagingVersion_:I

    if-eqz v0, :cond_1

    .line 211
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 213
    :cond_1
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->minSupportedSecurityVersion_:I

    if-eqz v0, :cond_2

    .line 214
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 216
    :cond_2
    iget v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->maxSupportedSecurityVersion_:I

    if-eqz v0, :cond_3

    .line 217
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/car/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 219
    :cond_3
    return-void
.end method
