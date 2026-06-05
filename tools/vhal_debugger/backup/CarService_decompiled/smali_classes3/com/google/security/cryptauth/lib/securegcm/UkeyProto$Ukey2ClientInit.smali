.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ukey2ClientInit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;,
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;,
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitmentOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInitOrBuilder;"
    }
.end annotation


# static fields
.field public static final CIPHER_COMMITMENTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

.field public static final NEXT_PROTOCOL_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOM_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;",
            ">;"
        }
    .end annotation
.end field

.field private nextProtocol_:Ljava/lang/String;

.field private random_:Lcom/google/protobuf/ByteString;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2567
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 2568
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->makeImmutable()V

    .line 2569
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1386
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    .line 1387
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 1388
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 1390
    return-void
.end method

.method static synthetic access$1900()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1

    .line 1380
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # I

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->setVersion(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 1380
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->clearVersion()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->setRandom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 1380
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->clearRandom()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->setCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->setCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->addCipherCommitments(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->addCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->addCipherCommitments(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->addCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->addAllCipherCommitments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 1380
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->clearCipherCommitments()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # I

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->removeCipherCommitments(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->setNextProtocol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 1380
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->clearNextProtocol()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1380
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->setNextProtocolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllCipherCommitments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;",
            ">;)V"
        }
    .end annotation

    .line 1979
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;>;"
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1980
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1982
    return-void
.end method

.method private addCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 1971
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1972
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1973
    return-void
.end method

.method private addCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 1952
    if-eqz p2, :cond_0

    .line 1955
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1956
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1957
    return-void

    .line 1953
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addCipherCommitments(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 1963
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1964
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1965
    return-void
.end method

.method private addCipherCommitments(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 1941
    if-eqz p1, :cond_0

    .line 1944
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1945
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1946
    return-void

    .line 1942
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearCipherCommitments()V
    .locals 1

    .line 1987
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1988
    return-void
.end method

.method private clearNextProtocol()V
    .locals 1

    .line 2053
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 2054
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getNextProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 2055
    return-void
.end method

.method private clearRandom()V
    .locals 1

    .line 1873
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 1874
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getRandom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 1875
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 1825
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 1826
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    .line 1827
    return-void
.end method

.method private ensureCipherCommitmentsIsMutable()V
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1914
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1916
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1

    .line 2572
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1

    .line 2177
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 2180
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2154
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2160
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2118
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2125
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2165
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2172
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2142
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2149
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2130
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2137
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;",
            ">;"
        }
    .end annotation

    .line 2578
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCipherCommitments(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1993
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1994
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1995
    return-void
.end method

.method private setCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 1934
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1935
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1936
    return-void
.end method

.method private setCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 1923
    if-eqz p2, :cond_0

    .line 1926
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->ensureCipherCommitmentsIsMutable()V

    .line 1927
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1928
    return-void

    .line 1924
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setNextProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2039
    if-eqz p1, :cond_0

    .line 2042
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 2043
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 2044
    return-void

    .line 2040
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setNextProtocolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2065
    if-eqz p1, :cond_0

    .line 2068
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 2069
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 2070
    return-void

    .line 2066
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setRandom(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1859
    if-eqz p1, :cond_0

    .line 1862
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 1863
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 1864
    return-void

    .line 1860
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setVersion(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1814
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 1815
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    .line 1816
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2459
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2560
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2551
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    monitor-enter v0

    .line 2552
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2553
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->PARSER:Lcom/google/protobuf/Parser;

    .line 2555
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2557
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2493
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2495
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2498
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 2499
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_9

    .line 2500
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2501
    .local v3, "tag":I
    if-eqz v3, :cond_7

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    const/16 v4, 0x12

    if-eq v3, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    .line 2506
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2507
    const/4 v2, 0x1

    goto :goto_2

    .line 2531
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2532
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 2533
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 2534
    goto :goto_2

    .line 2522
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2523
    iget-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2524
    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2526
    :cond_4
    iget-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2527
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 2526
    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 2528
    goto :goto_2

    .line 2517
    :cond_5
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 2518
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 2519
    goto :goto_2

    .line 2512
    :cond_6
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 2513
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2514
    goto :goto_2

    .line 2503
    :cond_7
    const/4 v2, 0x1

    .line 2504
    nop

    .line 2537
    .end local v3    # "tag":I
    :cond_8
    :goto_2
    goto :goto_1

    .line 2544
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 2540
    :catch_0
    move-exception v2

    .line 2541
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2543
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 2538
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 2539
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2544
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 2545
    :cond_9
    nop

    .line 2548
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0

    .line 2474
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2475
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 2476
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    nop

    .line 2477
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasVersion()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    .line 2478
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasVersion()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    .line 2476
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    .line 2479
    nop

    .line 2480
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasRandom()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 2481
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasRandom()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 2479
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 2482
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v3, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2483
    nop

    .line 2484
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasNextProtocol()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 2485
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasNextProtocol()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 2483
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    .line 2486
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_a

    .line 2488
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    .line 2490
    :cond_a
    return-object p0

    .line 2471
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V

    return-object v0

    .line 2467
    :pswitch_5
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 2468
    return-object v1

    .line 2464
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    return-object v0

    .line 2461
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;-><init>()V

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

.method public getCipherCommitments(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;
    .locals 1
    .param p1, "index"    # I

    .line 1902
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    return-object v0
.end method

.method public getCipherCommitmentsCount()I
    .locals 1

    .line 1896
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getCipherCommitmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;",
            ">;"
        }
    .end annotation

    .line 1883
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCipherCommitmentsOrBuilder(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitmentOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1909
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitmentOrBuilder;

    return-object v0
.end method

.method public getCipherCommitmentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNextProtocol()Ljava/lang/String;
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->nextProtocol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRandom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1849
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2090
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->memoizedSerializedSize:I

    .line 2091
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2093
    :cond_0
    const/4 v0, 0x0

    .line 2094
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2095
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    .line 2096
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2098
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2099
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    .line 2100
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2102
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2103
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2104
    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2106
    .end local v1    # "i":I
    :cond_3
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 2107
    nop

    .line 2108
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getNextProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2110
    :cond_4
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2111
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->memoizedSerializedSize:I

    .line 2112
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1804
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    return v0
.end method

.method public hasNextProtocol()Z
    .locals 2

    .line 2007
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

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

.method public hasRandom()Z
    .locals 2

    .line 1839
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 1794
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

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

    .line 2074
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2075
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->version_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2077
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2078
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->random_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2080
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2081
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->cipherCommitments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2080
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2083
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 2084
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getNextProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2086
    :cond_3
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2087
    return-void
.end method
