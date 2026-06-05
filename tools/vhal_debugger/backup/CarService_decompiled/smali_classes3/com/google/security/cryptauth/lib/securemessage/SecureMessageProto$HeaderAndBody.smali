.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeaderAndBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyOrBuilder;"
    }
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private body_:Lcom/google/protobuf/ByteString;

.field private header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2308
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    .line 2309
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->makeImmutable()V

    .line 2310
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2185
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedIsInitialized:B

    .line 1831
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    .line 1832
    return-void
.end method

.method static synthetic access$2200()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1

    .line 1825
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1825
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->setHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 1825
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->setHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1825
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->mergeHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    .line 1825
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->clearHeader()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1825
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->setBody(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    .line 1825
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->clearBody()V

    return-void
.end method

.method private clearBody()V
    .locals 1

    .line 1954
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 1955
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    .line 1956
    return-void
.end method

.method private clearHeader()V
    .locals 1

    .line 1906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1907
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 1908
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1

    .line 2313
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method private mergeHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1890
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    if-eqz v0, :cond_0

    .line 1891
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1893
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    goto :goto_0

    .line 1895
    :cond_0
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1897
    :goto_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 1898
    return-void
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1

    .line 2049
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    .line 2052
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2026
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2032
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1990
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1997
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2037
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2044
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2014
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2021
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2002
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2009
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;",
            ">;"
        }
    .end annotation

    .line 2319
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBody(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1940
    if-eqz p1, :cond_0

    .line 1943
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 1944
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    .line 1945
    return-void

    .line 1941
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 1879
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1880
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 1881
    return-void
.end method

.method private setHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1864
    if-eqz p1, :cond_0

    .line 1867
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1868
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 1869
    return-void

    .line 1865
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

    .line 2189
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2292
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    monitor-enter v0

    .line 2293
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2294
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->PARSER:Lcom/google/protobuf/Parser;

    .line 2296
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2298
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2241
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2243
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2246
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 2247
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_8

    .line 2248
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 2249
    .local v4, "tag":I
    if-eqz v4, :cond_6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 2254
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2255
    const/4 v3, 0x1

    goto :goto_2

    .line 2273
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 2274
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 2260
    :cond_3
    const/4 v5, 0x0

    .line 2261
    .local v5, "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_4

    .line 2262
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    move-object v5, v6

    .line 2264
    :cond_4
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 2265
    if-eqz v5, :cond_5

    .line 2266
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v5, v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2267
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 2269
    :cond_5
    iget v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    or-int/2addr v6, v1

    iput v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2270
    goto :goto_2

    .line 2251
    .end local v5    # "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    :cond_6
    const/4 v3, 0x1

    .line 2252
    nop

    .line 2278
    .end local v4    # "tag":I
    :cond_7
    :goto_2
    goto :goto_1

    .line 2285
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 2281
    :catch_0
    move-exception v1

    .line 2282
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2284
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 2279
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 2280
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2285
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 2286
    :cond_8
    nop

    .line 2289
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v0

    .line 2228
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2229
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    .line 2230
    .local v1, "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    iget-object v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 2231
    nop

    .line 2232
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasBody()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    .line 2233
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasBody()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    .line 2231
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    .line 2234
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_9

    .line 2236
    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    .line 2238
    :cond_9
    return-object p0

    .line 2225
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;-><init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V

    return-object v0

    .line 2222
    :pswitch_5
    return-object v2

    .line 2194
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedIsInitialized:B

    .line 2195
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_a

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v1

    .line 2196
    :cond_a
    if-nez v0, :cond_b

    return-object v2

    .line 2198
    :cond_b
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2199
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasHeader()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_d

    .line 2200
    if-eqz v3, :cond_c

    .line 2201
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedIsInitialized:B

    .line 2203
    :cond_c
    return-object v2

    .line 2205
    :cond_d
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasBody()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2206
    if-eqz v3, :cond_e

    .line 2207
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedIsInitialized:B

    .line 2209
    :cond_e
    return-object v2

    .line 2211
    :cond_f
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_11

    .line 2212
    if-eqz v3, :cond_10

    .line 2213
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedIsInitialized:B

    .line 2215
    :cond_10
    return-object v2

    .line 2217
    :cond_11
    if-eqz v3, :cond_12

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedIsInitialized:B

    .line 2218
    :cond_12
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    return-object v1

    .line 2191
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;-><init>()V

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

    .line 1930
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->header_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1970
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedSerializedSize:I

    .line 1971
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1973
    :cond_0
    const/4 v0, 0x0

    .line 1974
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1975
    nop

    .line 1976
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1978
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1979
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    .line 1980
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1982
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1983
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->memoizedSerializedSize:I

    .line 1984
    return v0
.end method

.method public hasBody()Z
    .locals 2

    .line 1920
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

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

    .line 1844
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

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

    .line 1960
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1961
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1963
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1964
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->body_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1966
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1967
    return-void
.end method
