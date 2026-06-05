.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcP256PublicKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private x_:Lcom/google/protobuf/ByteString;

.field private y_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3254
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 3255
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->makeImmutable()V

    .line 3256
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2859
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3143
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->memoizedIsInitialized:B

    .line 2860
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    .line 2861
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    .line 2862
    return-void
.end method

.method static synthetic access$3600()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1

    .line 2854
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2854
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->setX(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 2854
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->clearX()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2854
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->setY(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 2854
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->clearY()V

    return-void
.end method

.method private clearX()V
    .locals 1

    .line 2912
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    .line 2913
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getX()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    .line 2914
    return-void
.end method

.method private clearY()V
    .locals 1

    .line 2944
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    .line 2945
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    .line 2946
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1

    .line 3259
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    .locals 1

    .line 3039
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 3042
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3016
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3022
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2980
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2987
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3027
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3034
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3004
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3011
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2992
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2999
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;",
            ">;"
        }
    .end annotation

    .line 3265
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setX(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2897
    if-eqz p1, :cond_0

    .line 2900
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    .line 2901
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    .line 2902
    return-void

    .line 2898
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setY(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2934
    if-eqz p1, :cond_0

    .line 2937
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    .line 2938
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    .line 2939
    return-void

    .line 2935
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

    .line 3147
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3238
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    monitor-enter v0

    .line 3239
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 3240
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 3242
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3244
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 3195
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 3197
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 3200
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 3201
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_6

    .line 3202
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 3203
    .local v4, "tag":I
    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 3208
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3209
    const/4 v3, 0x1

    goto :goto_2

    .line 3219
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    .line 3220
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 3214
    :cond_3
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    or-int/2addr v5, v1

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    .line 3215
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3216
    goto :goto_2

    .line 3205
    :cond_4
    const/4 v3, 0x1

    .line 3206
    nop

    .line 3224
    .end local v4    # "tag":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 3231
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 3227
    :catch_0
    move-exception v1

    .line 3228
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3230
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 3225
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 3226
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3231
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 3232
    :cond_6
    nop

    .line 3235
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v0

    .line 3180
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 3181
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 3182
    .local v1, "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    nop

    .line 3183
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasX()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    .line 3184
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasX()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    .line 3182
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    .line 3185
    nop

    .line 3186
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasY()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    .line 3187
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasY()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    .line 3185
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    .line 3188
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_7

    .line 3190
    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    .line 3192
    :cond_7
    return-object p0

    .line 3177
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;-><init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V

    return-object v0

    .line 3174
    :pswitch_5
    return-object v2

    .line 3152
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->memoizedIsInitialized:B

    .line 3153
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_8

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v1

    .line 3154
    :cond_8
    if-nez v0, :cond_9

    return-object v2

    .line 3156
    :cond_9
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3157
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasX()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_b

    .line 3158
    if-eqz v3, :cond_a

    .line 3159
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->memoizedIsInitialized:B

    .line 3161
    :cond_a
    return-object v2

    .line 3163
    :cond_b
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasY()Z

    move-result v4

    if-nez v4, :cond_d

    .line 3164
    if-eqz v3, :cond_c

    .line 3165
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->memoizedIsInitialized:B

    .line 3167
    :cond_c
    return-object v2

    .line 3169
    :cond_d
    if-eqz v3, :cond_e

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->memoizedIsInitialized:B

    .line 3170
    :cond_e
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    return-object v1

    .line 3149
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;-><init>()V

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

    .line 2960
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->memoizedSerializedSize:I

    .line 2961
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2963
    :cond_0
    const/4 v0, 0x0

    .line 2964
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2965
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    .line 2966
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2968
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2969
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    .line 2970
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2972
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2973
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->memoizedSerializedSize:I

    .line 2974
    return v0
.end method

.method public getX()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2886
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2928
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasX()Z
    .locals 2

    .line 2875
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasY()Z
    .locals 2

    .line 2922
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

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

    .line 2950
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->x_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2953
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2954
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->y_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2956
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2957
    return-void
.end method
