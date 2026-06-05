.class public Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;
.super Ljava/lang/Object;
.source "D2DSpakeEd25519Handshake.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;
    }
.end annotation


# static fields
.field static final B:[Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KM:[Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KN:[Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final POINT_SIZE_BITS:I = 0x100

.field private static final SHA256:Ljava/lang/String; = "SHA-256"


# instance fields
.field private handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field private ourCommitmentPointAffine:[Ljava/math/BigInteger;

.field private ourCommitmentPointExtended:[Ljava/math/BigInteger;

.field private passwordHash:Ljava/math/BigInteger;

.field private pointX:[Ljava/math/BigInteger;

.field private sharedKey:[B

.field private theirCommitmentPointAffine:[Ljava/math/BigInteger;

.field private theirCommitmentPointExtended:[Ljava/math/BigInteger;

.field private valueX:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 154
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x20

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Ljava/math/BigInteger;

    new-array v5, v3, [B

    fill-array-data v5, :array_1

    invoke-direct {v2, v5}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Ljava/math/BigInteger;

    new-array v7, v3, [B

    fill-array-data v7, :array_2

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v7, 0x3

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->KM:[Ljava/math/BigInteger;

    .line 176
    new-array v1, v0, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    new-array v8, v3, [B

    fill-array-data v8, :array_3

    invoke-direct {v2, v8}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/math/BigInteger;

    new-array v8, v3, [B

    fill-array-data v8, :array_4

    invoke-direct {v2, v8}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v2, v1, v5

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v1, v6

    new-instance v2, Ljava/math/BigInteger;

    new-array v8, v3, [B

    fill-array-data v8, :array_5

    invoke-direct {v2, v8}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->KN:[Ljava/math/BigInteger;

    .line 199
    new-array v0, v0, [Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/math/BigInteger;

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v1, v0, v5

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v1, v0, v6

    new-instance v1, Ljava/math/BigInteger;

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->B:[Ljava/math/BigInteger;

    return-void

    :array_0
    .array-data 1
        0x19t
        -0x7ft
        -0x5t
        0x43t
        -0xft
        0x3t
        0x29t
        0xet
        -0x31t
        -0x69t
        0x72t
        0x2t
        0x2dt
        -0x48t
        -0x4ft
        -0x65t
        -0x6t
        -0xdt
        -0x77t
        0x5t
        0x7et
        -0x27t
        0x1et
        -0x7ct
        -0x7at
        -0x15t
        0x36t
        -0x79t
        0x63t
        0x43t
        0x59t
        0x25t
    .end array-data

    :array_1
    .array-data 1
        0xat
        0x71t
        0x4ct
        0x34t
        -0xdt
        -0x4bt
        -0x78t
        -0x56t
        -0x37t
        0x2ft
        -0x2et
        0x58t
        0x78t
        -0x7ct
        -0x5et
        0x9t
        0x64t
        -0x3t
        0x35t
        0x1at
        0x1ft
        0x14t
        0x7dt
        0x5ct
        0x4bt
        -0x41t
        0x5ct
        0x2ft
        0x37t
        -0x59t
        0x7ct
        0x36t
    .end array-data

    :array_2
    .array-data 1
        0x4t
        -0x71t
        -0x3ft
        -0x32t
        -0x1bt
        -0x7dt
        -0x67t
        0x25t
        -0x1bt
        -0x65t
        -0x80t
        -0x16t
        -0x53t
        -0x7et
        -0x54t
        0xat
        0x3ct
        -0x2t
        -0x3bt
        0x60t
        -0x6dt
        0x59t
        -0x75t
        0x48t
        0x44t
        -0x23t
        0x2at
        0x3et
        0x24t
        0x5dt
        -0x78t
        0x33t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x1at
        0x18t
        0x4ft
        0x47t
        -0x27t
        -0x59t
        -0x69t
        0x38t
        -0x6ft
        -0x2ft
        0x48t
        -0x1dt
        -0x2ft
        -0x38t
        0x64t
        -0x28t
        0x8t
        0x45t
        0x47t
        0x13t
        0x1ct
        0x2ct
        0x1ct
        -0x11t
        -0x49t
        -0x12t
        -0x43t
        0x26t
        -0x3at
        0x35t
        0x67t
    .end array-data

    :array_4
    .array-data 1
        0x6dt
        -0x5et
        -0x2dt
        -0x4ft
        -0x72t
        -0x3ct
        -0x7t
        -0x56t
        0x3bt
        0x8t
        -0x1dt
        -0x64t
        -0x67t
        0x7ct
        -0x28t
        -0x41t
        0x6et
        -0x67t
        0x48t
        -0x1t
        -0x2ct
        -0x2t
        -0x1t
        -0x14t
        -0x51t
        -0x73t
        -0x30t
        -0x4dt
        -0x2at
        0x48t
        -0x49t
        -0x18t
    .end array-data

    :array_5
    .array-data 1
        0x16t
        0x40t
        -0x13t
        0x5at
        0x54t
        -0x6t
        0xbt
        0x7t
        0x22t
        -0x7at
        -0x17t
        -0x2et
        0x2ft
        0x46t
        0x47t
        0x63t
        -0x5t
        -0xat
        0xdt
        0x79t
        0x1dt
        0x37t
        -0x47t
        0x9t
        0x3bt
        0x58t
        0x4dt
        -0xct
        -0x37t
        -0x6bt
        -0x9t
        -0x7ft
    .end array-data

    :array_6
    .array-data 1
        0x21t
        0x69t
        0x36t
        -0x2dt
        -0x33t
        0x6et
        0x53t
        -0x2t
        -0x40t
        -0x5ct
        -0x1et
        0x31t
        -0x3t
        -0x2at
        -0x24t
        0x5ct
        0x69t
        0x2ct
        -0x39t
        0x60t
        -0x6bt
        0x25t
        -0x59t
        -0x4et
        -0x37t
        0x56t
        0x2dt
        0x60t
        -0x71t
        0x25t
        -0x2bt
        0x1at
    .end array-data

    :array_7
    .array-data 1
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x66t
        0x58t
    .end array-data

    :array_8
    .array-data 1
        0x67t
        -0x79t
        0x5ft
        0xft
        -0x29t
        -0x75t
        0x76t
        0x65t
        0x66t
        -0x16t
        0x4et
        -0x72t
        0x64t
        -0x55t
        -0x1dt
        0x7dt
        0x20t
        -0x10t
        -0x61t
        -0x80t
        0x77t
        0x51t
        0x52t
        -0xbt
        0x6dt
        -0x22t
        -0x76t
        -0x4dt
        -0x5bt
        -0x49t
        -0x23t
        -0x5dt
    .end array-data
.end method

.method constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;[B)V
    .locals 3
    .param p1, "state"    # Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;
    .param p2, "password"    # [B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 273
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 274
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->hash([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->passwordHash:Ljava/math/BigInteger;

    .line 277
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x100

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->valueX:Ljava/math/BigInteger;

    .line 278
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->valueX:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :try_start_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->B:[Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->valueX:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->scalarMultiplyExtendedPoint([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->pointX:[Ljava/math/BigInteger;
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    nop

    .line 285
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Could not make public key point"

    invoke-direct {v1, v2, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 270
    .end local v0    # "e":Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
    :cond_1
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Passwords must be at least 4 bytes"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeOurKeyHash(Z)[B
    .locals 5
    .param p1, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 417
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 418
    xor-int/lit8 v3, p1, 0x1

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->theirCommitmentPointAffine:[Ljava/math/BigInteger;

    .line 419
    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->pointToByteArray([Ljava/math/BigInteger;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointAffine:[Ljava/math/BigInteger;

    .line 420
    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->pointToByteArray([Ljava/math/BigInteger;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->sharedKey:[B

    aput-object v2, v0, v1

    .line 417
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->concat([[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method private computeTheirKeyHash(Z)[B
    .locals 5
    .param p1, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 425
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 426
    int-to-byte v3, p1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointAffine:[Ljava/math/BigInteger;

    .line 427
    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->pointToByteArray([Ljava/math/BigInteger;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->theirCommitmentPointAffine:[Ljava/math/BigInteger;

    .line 428
    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->pointToByteArray([Ljava/math/BigInteger;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->sharedKey:[B

    aput-object v2, v0, v1

    .line 425
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->concat([[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static varargs concat([[B)[B
    .locals 8
    .param p0, "arrays"    # [[B

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "length":I
    .local v3, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p0, v0

    .line 614
    .local v4, "array":[B
    array-length v5, v4

    add-int/2addr v3, v5

    .line 613
    .end local v4    # "array":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    new-array v0, v3, [B

    .line 618
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 619
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v6, p0, v1

    .line 620
    .local v6, "array":[B
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    array-length v7, v6

    add-int/2addr v5, v7

    .line 619
    .end local v6    # "array":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 624
    :cond_1
    return-object v0
.end method

.method private static constantTimeArrayEquals([B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 636
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 639
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 640
    return v1

    .line 642
    :cond_1
    const/4 v2, 0x0

    .line 643
    .local v2, "result":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 644
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v2, v4

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 646
    .end local v3    # "i":I
    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 637
    .end local v2    # "result":B
    :cond_4
    :goto_2
    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    return v0
.end method

.method public static forInitiator([B)Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;
    .locals 2
    .param p0, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-direct {v0, v1, p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;[B)V

    return-object v0
.end method

.method public static forResponder([B)Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;
    .locals 2
    .param p0, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-direct {v0, v1, p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;[B)V

    return-object v0
.end method

.method private static hash([B)[B
    .locals 3
    .param p0, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 629
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Error performing hash"

    invoke-direct {v1, v2, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private makeCommitmentPointMessage(Z)[B
    .locals 4
    .param p1, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 352
    nop

    .line 353
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->KM:[Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->KN:[Ljava/math/BigInteger;

    :goto_0
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->passwordHash:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->scalarMultiplyExtendedPoint([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointExtended:[Ljava/math/BigInteger;

    .line 354
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointExtended:[Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->pointX:[Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->addExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointExtended:[Ljava/math/BigInteger;

    .line 355
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointExtended:[Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toAffine([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointAffine:[Ljava/math/BigInteger;

    .line 357
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    move-result-object v0

    .line 359
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;->ED_25519:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    .line 360
    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->setCurve(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointAffine:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 361
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->setX(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->ourCommitmentPointAffine:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 362
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->setY(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 358
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->setEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    move-result-object v0

    .line 364
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->setFlowNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    .line 366
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Could not make commitment point message"

    invoke-direct {v1, v2, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private makeSharedKey(Z)V
    .locals 4
    .param p1, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_WAITING_FOR_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot make shared key in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    :try_start_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->KN:[Ljava/math/BigInteger;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->KM:[Ljava/math/BigInteger;

    :goto_1
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->passwordHash:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->scalarMultiplyExtendedPoint([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 383
    .local v0, "kNMP":[Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->theirCommitmentPointExtended:[Ljava/math/BigInteger;

    .line 384
    invoke-static {v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->subtractExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 386
    .local v1, "theirPublicKey":[Ljava/math/BigInteger;
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->valueX:Ljava/math/BigInteger;

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->scalarMultiplyExtendedPoint([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 387
    .local v2, "sharedKeyPoint":[Ljava/math/BigInteger;
    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toAffine([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->pointToByteArray([Ljava/math/BigInteger;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->hash([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->sharedKey:[B
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0    # "kNMP":[Ljava/math/BigInteger;
    .end local v1    # "theirPublicKey":[Ljava/math/BigInteger;
    .end local v2    # "sharedKeyPoint":[Ljava/math/BigInteger;
    nop

    .line 391
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Error computing shared key"

    invoke-direct {v1, v2, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private makeSharedKeyHashMessage(Z[B)[B
    .locals 6
    .param p1, "isInitiator"    # Z
    .param p2, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 395
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    move-result-object v0

    .line 396
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->computeOurKeyHash(Z)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->setHashValue(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    move-result-object v0

    .line 397
    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->setFlowNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;

    move-result-object v0

    .line 399
    .local v0, "handshakeMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->canSendPayloadInHandshakeMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 400
    const/4 v1, 0x1

    .line 401
    invoke-static {p2, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->createDeviceToDeviceMessage([BI)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v1

    .line 403
    .local v1, "deviceToDeviceMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    :try_start_0
    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 406
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;-><init>(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;[B)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->sharedKey:[B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 404
    invoke-static {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->signcryptPayload(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;)[B

    move-result-object v2

    .line 403
    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_1

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v4, "Cannot set payload"

    invoke-direct {v3, v4, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 413
    .end local v1    # "deviceToDeviceMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private parseCommitmentMessage([BZ)V
    .locals 7
    .param p1, "handshakeMessage"    # [B
    .param p2, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 543
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 546
    .local v0, "commitmentMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    nop

    .line 549
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasFlowNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 552
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getFlowNumber()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-ne v1, v4, :cond_5

    .line 557
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasEcPoint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v1

    .line 561
    .local v1, "commitmentPoint":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasCurve()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 562
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getCurve()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    move-result-object v4

    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;->ED_25519:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    if-ne v4, v5, :cond_3

    .line 566
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasX()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 570
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasY()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 575
    new-array v2, v2, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    .line 576
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getX()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v5, v2, v4

    new-instance v4, Ljava/math/BigInteger;

    .line 577
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->theirCommitmentPointAffine:[Ljava/math/BigInteger;

    .line 582
    :try_start_1
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->theirCommitmentPointAffine:[Ljava/math/BigInteger;

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->validateAffinePoint([Ljava/math/BigInteger;)V

    .line 583
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->theirCommitmentPointAffine:[Ljava/math/BigInteger;

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toExtended([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->theirCommitmentPointExtended:[Ljava/math/BigInteger;
    :try_end_1
    .catch Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 586
    nop

    .line 587
    return-void

    .line 584
    :catch_0
    move-exception v2

    .line 585
    .local v2, "e":Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v4, "Error validating their commitment point"

    invoke-direct {v3, v4, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 571
    .end local v2    # "e":Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
    :cond_1
    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v3, "Commitment point missing y coordinate"

    invoke-direct {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_2
    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v3, "Commitment point missing x coordinate"

    invoke-direct {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :cond_3
    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v3, "Commitment message has wrong curve"

    invoke-direct {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    .end local v1    # "commitmentPoint":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    :cond_4
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Commitment message missing point"

    invoke-direct {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_5
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Commitment message has wrong flow number"

    invoke-direct {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_6
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Commitment message missing flow number"

    invoke-direct {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    .end local v0    # "commitmentMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    :catch_1
    move-exception v0

    .line 545
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Could not parse commitment message"

    invoke-direct {v1, v2, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private parseHashMessage([BZ)[B
    .locals 8
    .param p1, "handshakeMessage"    # [B
    .param p2, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 488
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    .local v0, "hashMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    nop

    .line 494
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasFlowNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 497
    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 498
    .local v1, "expectedFlowNumber":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getFlowNumber()I

    move-result v2

    .line 499
    .local v2, "actualFlowNumber":I
    if-ne v2, v1, :cond_5

    .line 505
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasHashValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 509
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getHashValue()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 510
    .local v3, "theirHash":[B
    invoke-direct {p0, p2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->computeTheirKeyHash(Z)[B

    move-result-object v4

    .line 512
    .local v4, "theirCorrectHash":[B
    invoke-static {v4, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->constantTimeArrayEquals([B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 516
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasPayload()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 518
    :try_start_1
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->sharedKey:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    .line 518
    invoke-static {v5, v6}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->decryptResponderHelloMessage(Ljavax/crypto/SecretKey;[B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v5

    .line 522
    .local v5, "message":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getSequenceNumber()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 526
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getMessage()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 523
    :cond_1
    new-instance v6, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v7, "Incorrect sequence number in responder hello"

    invoke-direct {v6, v7}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hashMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .end local v1    # "expectedFlowNumber":I
    .end local v2    # "actualFlowNumber":I
    .end local v3    # "theirHash":[B
    .end local v4    # "theirCorrectHash":[B
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;
    .end local p1    # "handshakeMessage":[B
    .end local p2    # "isInitiator":Z
    throw v6
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    .line 528
    .end local v5    # "message":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .restart local v0    # "hashMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    .restart local v1    # "expectedFlowNumber":I
    .restart local v2    # "actualFlowNumber":I
    .restart local v3    # "theirHash":[B
    .restart local v4    # "theirCorrectHash":[B
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;
    .restart local p1    # "handshakeMessage":[B
    .restart local p2    # "isInitiator":Z
    :catch_0
    move-exception v5

    .line 529
    .local v5, "e":Ljava/security/SignatureException;
    new-instance v6, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v7, "Error recovering payload from hash message"

    invoke-direct {v6, v7, v5}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 534
    .end local v5    # "e":Ljava/security/SignatureException;
    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [B

    return-object v5

    .line 513
    :cond_3
    new-instance v5, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v6, "Hash message had incorrect hash value"

    invoke-direct {v5, v6}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 506
    .end local v3    # "theirHash":[B
    .end local v4    # "theirCorrectHash":[B
    :cond_4
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v4, "Hash message missing hash value"

    invoke-direct {v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 500
    :cond_5
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hash message has flow number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", but expected flow number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 495
    .end local v1    # "expectedFlowNumber":I
    .end local v2    # "actualFlowNumber":I
    :cond_6
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Hash message missing flow number"

    invoke-direct {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    .end local v0    # "hashMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
    :catch_1
    move-exception v0

    .line 490
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Could not parse hash message"

    invoke-direct {v1, v2, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private pointToByteArray([Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "p"    # [Ljava/math/BigInteger;

    .line 433
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canSendPayloadInHandshakeMessage()Z
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_AFTER_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNextHandshakeMessage()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$D2DSpakeEd25519Handshake$State:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 321
    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->makeSharedKeyHashMessage(Z[B)[B

    move-result-object v0

    .line 322
    .local v0, "nextMessage":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 323
    goto :goto_0

    .line 326
    .end local v0    # "nextMessage":[B
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get next message in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    invoke-direct {p0, v2, v4}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->makeSharedKeyHashMessage(Z[B)[B

    move-result-object v0

    .line 317
    .restart local v0    # "nextMessage":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_WAITING_FOR_RESPONDER_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 318
    goto :goto_0

    .line 311
    .end local v0    # "nextMessage":[B
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->makeCommitmentPointMessage(Z)[B

    move-result-object v0

    .line 312
    .restart local v0    # "nextMessage":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_WAITING_FOR_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 313
    goto :goto_0

    .line 306
    .end local v0    # "nextMessage":[B
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->makeCommitmentPointMessage(Z)[B

    move-result-object v0

    .line 307
    .restart local v0    # "nextMessage":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_WAITING_FOR_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 308
    nop

    .line 329
    :goto_0
    return-object v0
.end method

.method public getNextHandshakeMessage([B)[B
    .locals 3
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$D2DSpakeEd25519Handshake$State:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->makeSharedKeyHashMessage(Z[B)[B

    move-result-object v0

    .line 339
    .local v0, "nextMessage":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 340
    nop

    .line 347
    return-object v0

    .line 343
    .end local v0    # "nextMessage":[B
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot send handshake message with payload in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isHandshakeComplete()Z
    .locals 3

    .line 289
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$D2DSpakeEd25519Handshake$State:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 296
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    return v1
.end method

.method public parseHandshakeMessage([B)[B
    .locals 4
    .param p1, "handshakeMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 443
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 449
    .local v1, "payload":[B
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$D2DSpakeEd25519Handshake$State:[I

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 476
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse message in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->parseHashMessage([BZ)[B

    move-result-object v1

    .line 472
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 473
    goto :goto_0

    .line 466
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->parseHashMessage([BZ)[B

    .line 467
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_AFTER_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 468
    goto :goto_0

    .line 459
    :pswitch_2
    invoke-direct {p0, p1, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->parseCommitmentMessage([BZ)V

    .line 460
    invoke-direct {p0, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->makeSharedKey(Z)V

    .line 461
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_AFTER_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 462
    goto :goto_0

    .line 452
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->parseCommitmentMessage([BZ)V

    .line 453
    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->makeSharedKey(Z)V

    .line 454
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_AFTER_INITIATOR_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 455
    nop

    .line 479
    :goto_0
    return-object v1

    .line 444
    .end local v1    # "payload":[B
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Handshake message too short"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    if-eq v0, v1, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 604
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;->sharedKey:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;-><init>(Ljavax/crypto/SecretKey;I)V

    return-object v0

    .line 596
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Handshake is not complete; cannot create connection context"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Cannot reuse handshake context; is has already been used"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
