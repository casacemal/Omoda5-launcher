.class public Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;
.super Ljava/lang/Object;
.source "KeyEncoding.java"


# static fields
.field static final SYMMETRIC_KEY_ENCODING_ALG:Ljava/lang/String; = "AES"

.field private static simulateLegacyCryptoRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->simulateLegacyCryptoRequired:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeKeyAgreementPrivateKey(Ljava/security/PrivateKey;)[B
    .locals 1
    .param p0, "sk"    # Ljava/security/PrivateKey;

    .line 84
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->isLegacyPrivateKey(Ljava/security/PrivateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodeDh2048PrivateKey(Ljavax/crypto/interfaces/DHPrivateKey;)[B

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeKeyAgreementPublicKey(Ljava/security/PublicKey;)[B
    .locals 1
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 75
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeMasterKey(Ljavax/crypto/SecretKey;)[B
    .locals 1
    .param p0, "masterKey"    # Ljavax/crypto/SecretKey;

    .line 46
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method private static encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 1
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 143
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodePublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeSigningPrivateKey(Ljava/security/PrivateKey;)[B
    .locals 1
    .param p0, "sk"    # Ljava/security/PrivateKey;

    .line 108
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeSigningPublicKey(Ljava/security/PublicKey;)[B
    .locals 1
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 100
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeUserPrivateKey(Ljava/security/PrivateKey;)[B
    .locals 1
    .param p0, "sk"    # Ljava/security/PrivateKey;

    .line 58
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeUserPublicKey(Ljava/security/PublicKey;)[B
    .locals 1
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 54
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method static getEcKeyFactory()Ljava/security/KeyFactory;
    .locals 2

    .line 158
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getRsaKeyFactory()Ljava/security/KeyFactory;
    .locals 2

    .line 166
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isLegacyCryptoRequired()Z
    .locals 1

    .line 131
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->isLegacyCryptoRequired()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->simulateLegacyCryptoRequired:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLegacyPrivateKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "sk"    # Ljava/security/PrivateKey;

    .line 124
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isLegacyPublicKey(Ljava/security/PublicKey;)Z
    .locals 1
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 117
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static parseKeyAgreementPrivateKey([BZ)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "isLegacy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parseDh2048PrivateKey([B)Ljavax/crypto/interfaces/DHPrivateKey;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 96
    .local v0, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->getEcKeyFactory()Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1
.end method

.method public static parseKeyAgreementPublicKey([B)Ljava/security/PublicKey;
    .locals 1
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static parseMasterKey([B)Ljavax/crypto/SecretKey;
    .locals 2
    .param p0, "encodedMasterKey"    # [B

    .line 50
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static parsePublicKey([B)Ljava/security/PublicKey;
    .locals 3
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 148
    const-string v0, "Unable to parse GenericPublicKey"

    :try_start_0
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parsePublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 149
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static parseSigningPrivateKey([B)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 113
    .local v0, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->getEcKeyFactory()Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1
.end method

.method public static parseSigningPublicKey([B)Ljava/security/PublicKey;
    .locals 1
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static parseUserPrivateKey([BZ)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "encodedPrivateKey"    # [B
    .param p1, "isLegacy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 64
    .local v0, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    if-eqz p1, :cond_0

    .line 65
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->getRsaKeyFactory()Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->getEcKeyFactory()Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1
.end method

.method public static parseUserPublicKey([B)Ljava/security/PublicKey;
    .locals 1
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static setSimulateLegacyCrypto(Z)V
    .locals 0
    .param p0, "forceLegacy"    # Z

    .line 139
    sput-boolean p0, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->simulateLegacyCryptoRequired:Z

    .line 140
    return-void
.end method
