.class public Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;
.super Ljava/lang/Object;
.source "CryptoOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;,
        Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    }
.end annotation


# static fields
.field private static final CONSTANT_01:[B

.field static final DIGEST_LENGTH:I = 0x14

.field private static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    const-string v0, "SecureMessage"

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->sha256(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->SALT:[B

    .line 135
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->CONSTANT_01:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "b"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 425
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 426
    new-array v0, v0, [B

    return-object v0

    .line 428
    :cond_0
    if-nez p0, :cond_1

    .line 429
    return-object p1

    .line 431
    :cond_1
    if-nez p1, :cond_2

    .line 432
    return-object p0

    .line 434
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 435
    .local v1, "result":[B
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    return-object v1
.end method

.method static constantTimeArrayEquals([B[B)Z
    .locals 6
    .param p0, "a"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "b"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 330
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 333
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 334
    return v1

    .line 336
    :cond_1
    const/4 v2, 0x0

    .line 337
    .local v2, "result":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 338
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v2, v4

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "i":I
    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 331
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

.method static decrypt(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B[B)[B
    .locals 4
    .param p0, "decryptionKey"    # Ljava/security/Key;
    .param p1, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .param p2, "iv"    # [B
    .param p3, "ciphertext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 287
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 290
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    if-eq p1, v0, :cond_0

    .line 294
    :try_start_0
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 295
    .local v0, "decrypter":Ljavax/crypto/Cipher;
    nop

    .line 296
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getSecretKey(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getPurpose(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->deriveAes256KeyFor(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 297
    .local v1, "derivedKey":Ljavax/crypto/SecretKey;
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 298
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 299
    .end local v0    # "decrypter":Ljavax/crypto/Cipher;
    .end local v1    # "derivedKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 291
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot use NONE type here"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static deriveAes256KeyFor(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p0, "masterKey"    # Ljavax/crypto/SecretKey;
    .param p1, "purpose"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 398
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->SALT:[B

    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->utf8StringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->hkdf(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static digest([B)[B
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 309
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 310
    .local v0, "sha256":Ljava/security/MessageDigest;
    const/16 v1, 0x14

    new-array v2, v1, [B

    .line 311
    .local v2, "truncatedHash":[B
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    return-object v2
.end method

.method static encrypt(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;Ljava/security/SecureRandom;[B[B)[B
    .locals 4
    .param p0, "encryptionKey"    # Ljava/security/Key;
    .param p1, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .param p2, "rng"    # Ljava/security/SecureRandom;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "iv"    # [B
    .param p4, "plaintext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 247
    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 250
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    if-eq p1, v0, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 255
    .local v0, "encrypter":Ljavax/crypto/Cipher;
    nop

    .line 256
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getSecretKey(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getPurpose(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->deriveAes256KeyFor(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 257
    .local v1, "derivedKey":Ljavax/crypto/SecretKey;
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 258
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 265
    .end local v0    # "encrypter":Ljavax/crypto/Cipher;
    .end local v1    # "derivedKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 263
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 261
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v0

    .line 262
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 259
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v0

    .line 260
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 251
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot use NONE type here"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static generateIv(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;Ljava/security/SecureRandom;)[B
    .locals 2
    .param p0, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .param p1, "rng"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 220
    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 225
    .local v0, "encrypter":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 226
    .local v1, "iv":[B
    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-object v1

    .line 228
    .end local v0    # "encrypter":Ljavax/crypto/Cipher;
    .end local v1    # "iv":[B
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 221
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static getPurpose(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Ljava/lang/String;
    .locals 2
    .param p0, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->getEncScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPurpose(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;)Ljava/lang/String;
    .locals 2
    .param p0, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIG:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->getSigScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretKey(Ljava/security/Key;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 354
    instance-of v0, p0, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 357
    move-object v0, p0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Expected a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hkdf(Ljavax/crypto/SecretKey;[B[B)[B
    .locals 1
    .param p0, "inputKeyMaterial"    # Ljavax/crypto/SecretKey;
    .param p1, "salt"    # [B
    .param p2, "info"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 415
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 418
    invoke-static {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->hkdfSha256Extract(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->hkdfSha256Expand([B[B)[B

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static hkdfSha256Expand([B[B)[B
    .locals 3
    .param p0, "pseudoRandomKey"    # [B
    .param p1, "info"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 504
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 506
    .local v0, "macScheme":Ljavax/crypto/Mac;
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    nop

    .line 511
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 514
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->CONSTANT_01:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    return-object v1

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static hkdfSha256Extract(Ljavax/crypto/SecretKey;[B)[B
    .locals 4
    .param p0, "inputKeyMaterial"    # Ljavax/crypto/SecretKey;
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 478
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 480
    .local v0, "macScheme":Ljavax/crypto/Mac;
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    nop

    .line 486
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 487
    .local v1, "encodedKeyMaterial":[B
    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    return-object v2

    .line 488
    :cond_0
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot get encoded form of SecretKey"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 481
    .end local v1    # "encodedKeyMaterial":[B
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static sha256(Ljava/lang/String;)[B
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 378
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 379
    .local v0, "sha256":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->utf8StringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 380
    .end local v0    # "sha256":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No security provider initialized yet?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static sign(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Ljava/security/SecureRandom;[B)[B
    .locals 3
    .param p0, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p1, "signingKey"    # Ljava/security/Key;
    .param p2, "rng"    # Ljava/security/SecureRandom;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 148
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->isPublicKeyScheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    if-eqz p2, :cond_1

    .line 155
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 159
    .local v0, "sigScheme":Ljava/security/Signature;
    move-object v1, p1

    check-cast v1, Ljava/security/PrivateKey;

    invoke-virtual {v0, v1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 164
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->SALT:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 165
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 166
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/security/SignatureException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 156
    .end local v0    # "sigScheme":Ljava/security/Signature;
    .end local v1    # "e":Ljava/security/SignatureException;
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Expected a PrivateKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 173
    .local v0, "macScheme":Ljavax/crypto/Mac;
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getSecretKey(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getPurpose(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->deriveAes256KeyFor(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 174
    .local v1, "derivedKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 175
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    return-object v2

    .line 149
    .end local v0    # "macScheme":Ljavax/crypto/Mac;
    .end local v1    # "derivedKey":Ljavax/crypto/SecretKey;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static subarray([BII)[B
    .locals 3
    .param p0, "in"    # [B
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 448
    if-eqz p0, :cond_2

    .line 451
    sub-int v0, p2, p1

    .line 452
    .local v0, "length":I
    if-ltz v0, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    array-length v1, p0

    if-ge p1, v1, :cond_1

    array-length v1, p0

    if-gt p2, v1, :cond_1

    .line 459
    new-array v1, v0, [B

    .line 460
    .local v1, "result":[B
    if-lez v0, :cond_0

    .line 461
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    :cond_0
    return-object v1

    .line 457
    .end local v1    # "result":[B
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 449
    .end local v0    # "length":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static utf8StringToBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 366
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static verify(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B[B)Z
    .locals 3
    .param p0, "verificationKey"    # Ljava/security/Key;
    .param p1, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p2, "signature"    # [B
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 190
    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->isPublicKeyScheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    instance-of v0, p0, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 198
    .local v0, "sigScheme":Ljava/security/Signature;
    move-object v1, p0

    check-cast v1, Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 199
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->SALT:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 200
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 201
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1

    .line 195
    .end local v0    # "sigScheme":Ljava/security/Signature;
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Expected a PublicKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 204
    .local v0, "macScheme":Ljavax/crypto/Mac;
    nop

    .line 205
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getSecretKey(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->getPurpose(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->deriveAes256KeyFor(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 206
    .local v1, "derivedKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 207
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->constantTimeArrayEquals([B[B)Z

    move-result v2

    return v2

    .line 191
    .end local v0    # "macScheme":Ljavax/crypto/Mac;
    .end local v1    # "derivedKey":Ljavax/crypto/SecretKey;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
