.class public Lcom/google/security/cryptauth/lib/securegcm/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
    }
.end annotation


# static fields
.field private static final Ed25519_D:Ljava/math/BigInteger;

.field private static final Ed25519_K:Ljava/math/BigInteger;

.field private static final Ed25519_P:Ljava/math/BigInteger;

.field private static final HEX_RADIX:I = 0x10

.field static final IDENTITY_POINT:[Ljava/math/BigInteger;

.field private static final POINT_SIZE_BITS:I = 0x100

.field private static final T:I = 0x3

.field private static final X:I = 0x0

.field private static final Y:I = 0x1

.field private static final Z:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    const-string v2, "7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    .line 36
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "52036CEE2B6FFE738CC740797779E89800700A4D4141D8AB75EB4DCA135978A3"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_D:Ljava/math/BigInteger;

    .line 40
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "2406D9DC56DFFCE7198E80F2EEF3D13000E0149A8283B156EBD69B9426B2F159"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_K:Ljava/math/BigInteger;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->IDENTITY_POINT:[Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAffinePoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 2
    .param p0, "p1"    # [Ljava/math/BigInteger;
    .param p1, "p2"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toExtended([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toExtended([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->addExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toAffine([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static addExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 15
    .param p0, "p1"    # [Ljava/math/BigInteger;
    .param p1, "p2"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 191
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V

    .line 194
    const/4 v0, 0x1

    aget-object v1, p0, v0

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget-object v3, p1, v0

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 195
    .local v1, "a":Ljava/math/BigInteger;
    aget-object v3, p0, v0

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, p1, v0

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 196
    .local v3, "b":Ljava/math/BigInteger;
    const/4 v4, 0x3

    aget-object v5, p0, v4

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_K:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 197
    .local v5, "c":Ljava/math/BigInteger;
    const/4 v6, 0x2

    aget-object v7, p0, v6

    aget-object v8, p0, v6

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    aget-object v8, p1, v6

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 198
    .local v7, "d":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 199
    .local v8, "e":Ljava/math/BigInteger;
    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 200
    .local v9, "f":Ljava/math/BigInteger;
    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 201
    .local v10, "g":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 203
    .local v11, "h":Ljava/math/BigInteger;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/math/BigInteger;

    .line 204
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v12, v2

    .line 205
    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v13, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v12, v0

    .line 206
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v12, v6

    .line 207
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v12, v4

    .line 203
    return-object v12
.end method

.method static checkPointIsInAffineRepresentation([Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "p"    # [Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 250
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;

    const-string v1, "Point is not in affine representation"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "p"    # [Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 238
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    .line 242
    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;

    const-string v1, "Point is not in extended representation"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doubleExtendedPoint([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 13
    .param p0, "p"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 157
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V

    .line 159
    const/4 v0, 0x3

    aget-object v1, p0, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_K:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 160
    .local v1, "c":Ljava/math/BigInteger;
    aget-object v3, p0, v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 161
    .local v3, "d":Ljava/math/BigInteger;
    aget-object v5, p0, v4

    const/4 v6, 0x0

    aget-object v7, p0, v6

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 162
    .local v5, "e":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 163
    .local v7, "f":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 164
    .local v8, "g":Ljava/math/BigInteger;
    aget-object v9, p0, v4

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v9

    aget-object v10, p0, v6

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 166
    .local v9, "h":Ljava/math/BigInteger;
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/math/BigInteger;

    .line 167
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v12, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    aput-object v11, v10, v6

    .line 168
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v10, v4

    .line 169
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v10, v2

    .line 170
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v10, v0

    .line 166
    return-object v10
.end method

.method public static scalarMultiplyAffinePoint([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # [Ljava/math/BigInteger;
    .param p1, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toExtended([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->scalarMultiplyExtendedPoint([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toAffine([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static scalarMultiplyExtendedPoint([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # [Ljava/math/BigInteger;
    .param p1, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V

    .line 120
    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_3

    .line 130
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->IDENTITY_POINT:[Ljava/math/BigInteger;

    .line 131
    .local v0, "q":[Ljava/math/BigInteger;
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->IDENTITY_POINT:[Ljava/math/BigInteger;

    .line 132
    .local v2, "r":[Ljava/math/BigInteger;
    move-object v3, p0

    .line 133
    .local v3, "doubleAccumulator":[Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 134
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    invoke-static {v0, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->addExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_0
    invoke-static {v0, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->addExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 139
    :goto_1
    const/16 v5, 0xff

    if-ge v4, v5, :cond_1

    .line 140
    invoke-static {v3}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->doubleExtendedPoint([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 133
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    .end local v4    # "i":I
    :cond_2
    invoke-static {v2, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->subtractExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 146
    .end local v2    # "r":[Ljava/math/BigInteger;
    .local v1, "r":[Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->addExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 147
    return-object v0

    .line 125
    .end local v0    # "q":[Ljava/math/BigInteger;
    .end local v1    # "r":[Ljava/math/BigInteger;
    .end local v3    # "doubleAccumulator":[Ljava/math/BigInteger;
    :cond_3
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;

    const-string v1, "Refuse to multiply point by scalar with more than 256 bits"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;

    const-string v1, "Can\'t multiply point by null"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static subtractAffinePoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 2
    .param p0, "p1"    # [Ljava/math/BigInteger;
    .param p1, "p2"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toExtended([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toExtended([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->subtractExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->toAffine([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static subtractExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "p1"    # [Ljava/math/BigInteger;
    .param p1, "p2"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 179
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V

    .line 180
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->addExtendedPoints([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static toAffine([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # [Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 226
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInExtendedRepresentation([Ljava/math/BigInteger;)V

    .line 228
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    aget-object v4, p0, v0

    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, p0, v2

    aget-object v0, p0, v0

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    .line 229
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v1, v2

    .line 228
    return-object v1
.end method

.method static toExtended([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 5
    .param p0, "p"    # [Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 216
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInAffineRepresentation([Ljava/math/BigInteger;)V

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aget-object v3, p0, v2

    aput-object v3, v0, v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static validateAffinePoint([Ljava/math/BigInteger;)V
    .locals 8
    .param p0, "p"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->checkPointIsInAffineRepresentation([Ljava/math/BigInteger;)V

    .line 93
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 94
    .local v0, "x":Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v2, p0, v1

    .line 96
    .local v2, "y":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 100
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    .line 104
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 105
    .local v1, "xx":Ljava/math/BigInteger;
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 106
    .local v3, "yy":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 107
    .local v4, "lhs":Ljava/math/BigInteger;
    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_D:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/Ed25519;->Ed25519_P:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 109
    .local v5, "rhs":Ljava/math/BigInteger;
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    new-instance v6, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;

    const-string v7, "Point does not lie on the expected curve"

    invoke-direct {v6, v7}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    .end local v1    # "xx":Ljava/math/BigInteger;
    .end local v3    # "yy":Ljava/math/BigInteger;
    .end local v4    # "lhs":Ljava/math/BigInteger;
    .end local v5    # "rhs":Ljava/math/BigInteger;
    :cond_1
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;

    const-string v3, "Point lies outside of the expected field"

    invoke-direct {v1, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_2
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;

    const-string v3, "Point encoding must use only positive integers"

    invoke-direct {v1, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ed25519$Ed25519Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
