.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeaderAndBodyInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternalOrBuilder;"
    }
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private body_:Lcom/google/protobuf/ByteString;

.field private header_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2800
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    .line 2801
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->makeImmutable()V

    .line 2802
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2377
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2689
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->memoizedIsInitialized:B

    .line 2378
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    .line 2379
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    .line 2380
    return-void
.end method

.method static synthetic access$3000()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1

    .line 2372
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2372
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->setHeader(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    .line 2372
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->clearHeader()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2372
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->setBody(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    .line 2372
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->clearBody()V

    return-void
.end method

.method private clearBody()V
    .locals 1

    .line 2474
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    .line 2475
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    .line 2476
    return-void
.end method

.method private clearHeader()V
    .locals 1

    .line 2426
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    .line 2427
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getHeader()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    .line 2428
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1

    .line 2805
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
    .locals 1

    .line 2569
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    .line 2572
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2546
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2552
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2510
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2517
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2557
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2564
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2534
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2541
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2522
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2529
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;",
            ">;"
        }
    .end annotation

    .line 2811
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBody(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2460
    if-eqz p1, :cond_0

    .line 2463
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    .line 2464
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    .line 2465
    return-void

    .line 2461
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setHeader(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2412
    if-eqz p1, :cond_0

    .line 2415
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    .line 2416
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    .line 2417
    return-void

    .line 2413
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

    .line 2693
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2793
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2784
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    monitor-enter v0

    .line 2785
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2786
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->PARSER:Lcom/google/protobuf/Parser;

    .line 2788
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2790
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2741
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2743
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2746
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 2747
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_6

    .line 2748
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 2749
    .local v4, "tag":I
    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 2754
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2755
    const/4 v3, 0x1

    goto :goto_2

    .line 2765
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    .line 2766
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 2760
    :cond_3
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    or-int/2addr v5, v1

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    .line 2761
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2762
    goto :goto_2

    .line 2751
    :cond_4
    const/4 v3, 0x1

    .line 2752
    nop

    .line 2770
    .end local v4    # "tag":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 2777
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 2773
    :catch_0
    move-exception v1

    .line 2774
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2776
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 2771
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 2772
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2777
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 2778
    :cond_6
    nop

    .line 2781
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v0

    .line 2726
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2727
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    .line 2728
    .local v1, "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    nop

    .line 2729
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasHeader()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    .line 2730
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasHeader()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    .line 2728
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    .line 2731
    nop

    .line 2732
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasBody()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    .line 2733
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasBody()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    .line 2731
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    .line 2734
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_7

    .line 2736
    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    .line 2738
    :cond_7
    return-object p0

    .line 2723
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;-><init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V

    return-object v0

    .line 2720
    :pswitch_5
    return-object v2

    .line 2698
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->memoizedIsInitialized:B

    .line 2699
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_8

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v1

    .line 2700
    :cond_8
    if-nez v0, :cond_9

    return-object v2

    .line 2702
    :cond_9
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2703
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasHeader()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_b

    .line 2704
    if-eqz v3, :cond_a

    .line 2705
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->memoizedIsInitialized:B

    .line 2707
    :cond_a
    return-object v2

    .line 2709
    :cond_b
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasBody()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2710
    if-eqz v3, :cond_c

    .line 2711
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->memoizedIsInitialized:B

    .line 2713
    :cond_c
    return-object v2

    .line 2715
    :cond_d
    if-eqz v3, :cond_e

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->memoizedIsInitialized:B

    .line 2716
    :cond_e
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    return-object v1

    .line 2695
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;-><init>()V

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

.method public getBody()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2450
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHeader()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2402
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2490
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->memoizedSerializedSize:I

    .line 2491
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2493
    :cond_0
    const/4 v0, 0x0

    .line 2494
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2495
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    .line 2496
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2498
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2499
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    .line 2500
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2502
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2503
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->memoizedSerializedSize:I

    .line 2504
    return v0
.end method

.method public hasBody()Z
    .locals 2

    .line 2440
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

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

.method public hasHeader()Z
    .locals 2

    .line 2392
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

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

    .line 2480
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2481
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->header_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2483
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2484
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->body_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2486
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2487
    return-void
.end method
