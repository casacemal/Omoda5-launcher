.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecureMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

.field public static final HEADER_AND_BODY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private headerAndBody_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 724
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    .line 725
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->makeImmutable()V

    .line 726
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 613
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->memoizedIsInitialized:B

    .line 310
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    .line 311
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    .line 312
    return-void
.end method

.method static synthetic access$000()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1

    .line 304
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 304
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->setHeaderAndBody(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    .line 304
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->clearHeaderAndBody()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 304
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    .line 304
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->clearSignature()V

    return-void
.end method

.method private clearHeaderAndBody()V
    .locals 1

    .line 358
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    .line 359
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getHeaderAndBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    .line 360
    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 406
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    .line 407
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    .line 408
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1

    .line 729
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
    .locals 1

    .line 501
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    .line 504
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;",
            ">;"
        }
    .end annotation

    .line 735
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeaderAndBody(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 344
    if-eqz p1, :cond_0

    .line 347
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    .line 348
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    .line 349
    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSignature(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 392
    if-eqz p1, :cond_0

    .line 395
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    .line 396
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    .line 397
    return-void

    .line 393
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

    .line 617
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 717
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 708
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    monitor-enter v0

    .line 709
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 710
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 712
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 714
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 665
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 667
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 670
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 671
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_6

    .line 672
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 673
    .local v4, "tag":I
    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 678
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 679
    const/4 v3, 0x1

    goto :goto_2

    .line 689
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    .line 690
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 684
    :cond_3
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    or-int/2addr v5, v1

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    .line 685
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    goto :goto_2

    .line 675
    :cond_4
    const/4 v3, 0x1

    .line 676
    nop

    .line 694
    .end local v4    # "tag":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 701
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 700
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 695
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 696
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 701
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 702
    :cond_6
    nop

    .line 705
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v0

    .line 650
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 651
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    .line 652
    .local v1, "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    nop

    .line 653
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasHeaderAndBody()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    .line 654
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasHeaderAndBody()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    .line 652
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    .line 655
    nop

    .line 656
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasSignature()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    .line 657
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasSignature()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    .line 655
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    .line 658
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_7

    .line 660
    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    .line 662
    :cond_7
    return-object p0

    .line 647
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;-><init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V

    return-object v0

    .line 644
    :pswitch_5
    return-object v2

    .line 622
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->memoizedIsInitialized:B

    .line 623
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_8

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v1

    .line 624
    :cond_8
    if-nez v0, :cond_9

    return-object v2

    .line 626
    :cond_9
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 627
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasHeaderAndBody()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_b

    .line 628
    if-eqz v3, :cond_a

    .line 629
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->memoizedIsInitialized:B

    .line 631
    :cond_a
    return-object v2

    .line 633
    :cond_b
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasSignature()Z

    move-result v4

    if-nez v4, :cond_d

    .line 634
    if-eqz v3, :cond_c

    .line 635
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->memoizedIsInitialized:B

    .line 637
    :cond_c
    return-object v2

    .line 639
    :cond_d
    if-eqz v3, :cond_e

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->memoizedIsInitialized:B

    .line 640
    :cond_e
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    return-object v1

    .line 619
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;-><init>()V

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

.method public getHeaderAndBody()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 422
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->memoizedSerializedSize:I

    .line 423
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 426
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 427
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    .line 428
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 431
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    .line 432
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->memoizedSerializedSize:I

    .line 436
    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasHeaderAndBody()Z
    .locals 2

    .line 324
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSignature()Z
    .locals 2

    .line 372
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

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

    .line 412
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->headerAndBody_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 415
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 419
    return-void
.end method
