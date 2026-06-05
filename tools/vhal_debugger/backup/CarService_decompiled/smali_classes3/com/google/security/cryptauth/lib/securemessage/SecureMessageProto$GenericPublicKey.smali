.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericPublicKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

.field public static final DH2048_PUBLIC_KEY_FIELD_NUMBER:I = 0x4

.field public static final EC_P256_PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final RSA2048_PUBLIC_KEY_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

.field private ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

.field private memoizedIsInitialized:B

.field private rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4816
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 4817
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->makeImmutable()V

    .line 4818
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4648
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedIsInitialized:B

    .line 4117
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    .line 4118
    return-void
.end method

.method static synthetic access$5200()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1

    .line 4111
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->setType(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 4111
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->clearType()V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->setEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->setEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->mergeEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 4111
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->clearEcP256PublicKey()V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->setRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->setRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->mergeRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 4111
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->clearRsa2048PublicKey()V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->setDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->setDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4111
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->mergeDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 4111
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->clearDh2048PublicKey()V

    return-void
.end method

.method private clearDh2048PublicKey()V
    .locals 1

    .line 4329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4330
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4331
    return-void
.end method

.method private clearEcP256PublicKey()V
    .locals 1

    .line 4201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4202
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4203
    return-void
.end method

.method private clearRsa2048PublicKey()V
    .locals 1

    .line 4253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4254
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4255
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 4149
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4150
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    .line 4151
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1

    .line 4821
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method private mergeDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4313
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    if-eqz v0, :cond_0

    .line 4314
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4315
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4316
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    goto :goto_0

    .line 4318
    :cond_0
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4320
    :goto_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4321
    return-void
.end method

.method private mergeEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4189
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    if-eqz v0, :cond_0

    .line 4190
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4191
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4192
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    goto :goto_0

    .line 4194
    :cond_0
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4196
    :goto_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4197
    return-void
.end method

.method private mergeRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4241
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    if-eqz v0, :cond_0

    .line 4242
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4243
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4244
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    goto :goto_0

    .line 4246
    :cond_0
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4248
    :goto_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4249
    return-void
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1

    .line 4438
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 4441
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4415
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4421
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4379
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4386
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4426
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4433
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4403
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4410
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4391
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4398
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;",
            ">;"
        }
    .end annotation

    .line 4827
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    .line 4302
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4303
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4304
    return-void
.end method

.method private setDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4287
    if-eqz p1, :cond_0

    .line 4290
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4291
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4292
    return-void

    .line 4288
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    .line 4182
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4183
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4184
    return-void
.end method

.method private setEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4171
    if-eqz p1, :cond_0

    .line 4174
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4175
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4176
    return-void

    .line 4172
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    .line 4234
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4235
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4236
    return-void
.end method

.method private setRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4223
    if-eqz p1, :cond_0

    .line 4226
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4227
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4228
    return-void

    .line 4224
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setType(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 4139
    if-eqz p1, :cond_0

    .line 4142
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4143
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    .line 4144
    return-void

    .line 4140
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

    .line 4652
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4809
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4800
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    monitor-enter v0

    .line 4801
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 4802
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 4804
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4806
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 4717
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 4719
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 4722
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 4723
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_f

    .line 4724
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 4725
    .local v4, "tag":I
    if-eqz v4, :cond_d

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    const/16 v6, 0x12

    if-eq v4, v6, :cond_8

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_5

    const/16 v6, 0x22

    if-eq v4, v6, :cond_2

    .line 4730
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 4731
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 4773
    :cond_2
    const/4 v6, 0x0

    .line 4774
    .local v6, "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;
    iget v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_3

    .line 4775
    iget-object v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    invoke-virtual {v7}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v7

    check-cast v7, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    move-object v6, v7

    .line 4777
    :cond_3
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    iput-object v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4778
    if-eqz v6, :cond_4

    .line 4779
    iget-object v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    invoke-virtual {v6, v7}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4780
    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    iput-object v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4782
    :cond_4
    iget v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4783
    goto/16 :goto_2

    .line 4760
    .end local v6    # "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;
    :cond_5
    const/4 v5, 0x0

    .line 4761
    .local v5, "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_6

    .line 4762
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    move-object v5, v6

    .line 4764
    :cond_6
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4765
    if-eqz v5, :cond_7

    .line 4766
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v5, v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4767
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4769
    :cond_7
    iget v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4770
    goto :goto_2

    .line 4747
    .end local v5    # "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    :cond_8
    const/4 v5, 0x0

    .line 4748
    .local v5, "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_9

    .line 4749
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    move-object v5, v6

    .line 4751
    :cond_9
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4752
    if-eqz v5, :cond_a

    .line 4753
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v5, v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4754
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4756
    :cond_a
    iget v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4757
    goto :goto_2

    .line 4736
    .end local v5    # "subBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 4737
    .local v5, "rawValue":I
    invoke-static {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v6

    .line 4738
    .local v6, "value":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    if-nez v6, :cond_c

    .line 4739
    invoke-super {p0, v1, v5}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 4741
    :cond_c
    iget v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/2addr v7, v1

    iput v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4742
    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4744
    goto :goto_2

    .line 4727
    .end local v5    # "rawValue":I
    .end local v6    # "value":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    :cond_d
    const/4 v3, 0x1

    .line 4728
    nop

    .line 4786
    .end local v4    # "tag":I
    :cond_e
    :goto_2
    goto/16 :goto_1

    .line 4793
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 4789
    :catch_0
    move-exception v1

    .line 4790
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 4792
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 4787
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 4788
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4793
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 4794
    :cond_f
    nop

    .line 4797
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v0

    .line 4703
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 4704
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 4705
    .local v1, "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasType()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    .line 4706
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasType()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    .line 4705
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    .line 4707
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    iget-object v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4708
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    iget-object v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4709
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    iget-object v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4710
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_10

    .line 4712
    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    .line 4714
    :cond_10
    return-object p0

    .line 4700
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;-><init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V

    return-object v0

    .line 4697
    :pswitch_5
    return-object v2

    .line 4657
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedIsInitialized:B

    .line 4658
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_11

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v1

    .line 4659
    :cond_11
    if-nez v0, :cond_12

    return-object v2

    .line 4661
    :cond_12
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4662
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasType()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_14

    .line 4663
    if-eqz v3, :cond_13

    .line 4664
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedIsInitialized:B

    .line 4666
    :cond_13
    return-object v2

    .line 4668
    :cond_14
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasEcP256PublicKey()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4669
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4670
    if-eqz v3, :cond_15

    .line 4671
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedIsInitialized:B

    .line 4673
    :cond_15
    return-object v2

    .line 4676
    :cond_16
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasRsa2048PublicKey()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4677
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_18

    .line 4678
    if-eqz v3, :cond_17

    .line 4679
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedIsInitialized:B

    .line 4681
    :cond_17
    return-object v2

    .line 4684
    :cond_18
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasDh2048PublicKey()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4685
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 4686
    if-eqz v3, :cond_19

    .line 4687
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedIsInitialized:B

    .line 4689
    :cond_19
    return-object v2

    .line 4692
    :cond_1a
    if-eqz v3, :cond_1b

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedIsInitialized:B

    .line 4693
    :cond_1b
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    return-object v1

    .line 4654
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;-><init>()V

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

.method public getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;
    .locals 1

    .line 4277
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->dh2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1

    .line 4165
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->ecP256PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1

    .line 4217
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->rsa2048PublicKey_:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 4351
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedSerializedSize:I

    .line 4352
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4354
    :cond_0
    const/4 v0, 0x0

    .line 4355
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4356
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    .line 4357
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4359
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 4360
    nop

    .line 4361
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4363
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 4364
    const/4 v1, 0x3

    .line 4365
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4367
    :cond_3
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 4368
    nop

    .line 4369
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4371
    :cond_4
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4372
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->memoizedSerializedSize:I

    .line 4373
    return v0
.end method

.method public getType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    .locals 2

    .line 4132
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v0

    .line 4133
    .local v0, "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->EC_P256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public hasDh2048PublicKey()Z
    .locals 2

    .line 4267
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEcP256PublicKey()Z
    .locals 2

    .line 4159
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

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

.method public hasRsa2048PublicKey()Z
    .locals 2

    .line 4211
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 4126
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

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

    .line 4335
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4336
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4338
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4339
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4341
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 4342
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4344
    :cond_2
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 4345
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4347
    :cond_3
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4348
    return-void
.end method
