.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleRsaPublicKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

.field public static final E_FIELD_NUMBER:I = 0x2

.field public static final N_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private e_:I

.field private memoizedIsInitialized:B

.field private n_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3689
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 3690
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->makeImmutable()V

    .line 3691
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3311
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3584
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->memoizedIsInitialized:B

    .line 3312
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 3313
    const v0, 0x10001

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    .line 3314
    return-void
.end method

.method static synthetic access$4200()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1

    .line 3306
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 3306
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->setN(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 3306
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->clearN()V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .param p1, "x1"    # I

    .line 3306
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->setE(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 3306
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->clearE()V

    return-void
.end method

.method private clearE()V
    .locals 1

    .line 3389
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    .line 3390
    const v0, 0x10001

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    .line 3391
    return-void
.end method

.method private clearN()V
    .locals 1

    .line 3360
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    .line 3361
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getN()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 3362
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1

    .line 3694
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    .locals 1

    .line 3484
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 3487
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3461
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3467
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3425
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3432
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3472
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3479
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3449
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3456
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3437
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3444
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;",
            ">;"
        }
    .end annotation

    .line 3700
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setE(I)V
    .locals 1
    .param p1, "value"    # I

    .line 3382
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    .line 3383
    iput p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    .line 3384
    return-void
.end method

.method private setN(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3346
    if-eqz p1, :cond_0

    .line 3349
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    .line 3350
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 3351
    return-void

    .line 3347
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

    .line 3588
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3682
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3673
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    monitor-enter v0

    .line 3674
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 3675
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 3677
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3679
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 3630
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 3632
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 3635
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 3636
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_6

    .line 3637
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 3638
    .local v4, "tag":I
    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    .line 3643
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3644
    const/4 v3, 0x1

    goto :goto_2

    .line 3654
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    .line 3655
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    goto :goto_2

    .line 3649
    :cond_3
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    or-int/2addr v5, v1

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    .line 3650
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3651
    goto :goto_2

    .line 3640
    :cond_4
    const/4 v3, 0x1

    .line 3641
    nop

    .line 3659
    .end local v4    # "tag":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 3666
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 3662
    :catch_0
    move-exception v1

    .line 3663
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3665
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 3660
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 3661
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3666
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 3667
    :cond_6
    nop

    .line 3670
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v0

    .line 3615
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 3616
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 3617
    .local v1, "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    nop

    .line 3618
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasN()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 3619
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasN()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 3617
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 3620
    nop

    .line 3621
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasE()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    .line 3622
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasE()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    .line 3620
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    .line 3623
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_7

    .line 3625
    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    .line 3627
    :cond_7
    return-object p0

    .line 3612
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;-><init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V

    return-object v0

    .line 3609
    :pswitch_5
    return-object v2

    .line 3593
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->memoizedIsInitialized:B

    .line 3594
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_8

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v1

    .line 3595
    :cond_8
    if-nez v0, :cond_9

    return-object v2

    .line 3597
    :cond_9
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3598
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasN()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3599
    if-eqz v3, :cond_a

    .line 3600
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->memoizedIsInitialized:B

    .line 3602
    :cond_a
    return-object v2

    .line 3604
    :cond_b
    if-eqz v3, :cond_c

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->memoizedIsInitialized:B

    .line 3605
    :cond_c
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    return-object v1

    .line 3590
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;-><init>()V

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

.method public getE()I
    .locals 1

    .line 3376
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    return v0
.end method

.method public getN()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3336
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3405
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->memoizedSerializedSize:I

    .line 3406
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3408
    :cond_0
    const/4 v0, 0x0

    .line 3409
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3410
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 3411
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3413
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3414
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    .line 3415
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3417
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3418
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->memoizedSerializedSize:I

    .line 3419
    return v0
.end method

.method public hasE()Z
    .locals 2

    .line 3370
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

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

.method public hasN()Z
    .locals 2

    .line 3326
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

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

    .line 3395
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3396
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->n_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3398
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3399
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->e_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3401
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3402
    return-void
.end method
