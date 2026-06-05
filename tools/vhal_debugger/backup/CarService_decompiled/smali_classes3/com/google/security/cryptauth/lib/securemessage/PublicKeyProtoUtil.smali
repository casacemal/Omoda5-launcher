.class public Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;
.super Ljava/lang/Object;
.source "PublicKeyProtoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPrivateKeyShim;,
        Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPublicKeyShim;,
        Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;
    }
.end annotation


# static fields
.field public static final ANDROID_HONEYCOMB_SDK_INT:I = 0xb

.field private static final DH_ALG:Ljava/lang/String; = "DH"

.field public static final DH_G:Ljava/math/BigInteger;

.field public static final DH_LEN:I = 0x200

.field public static final DH_P:Ljava/math/BigInteger;

.field private static final EC_ALG:Ljava/lang/String; = "EC"

.field private static final EC_P256_A:Ljava/math/BigInteger;

.field private static final EC_P256_B:Ljava/math/BigInteger;

.field private static final EC_P256_COMMON_NAME:Ljava/lang/String; = "secp256r1"

.field private static final EC_P256_OPENSSL_NAME:Ljava/lang/String; = "prime256v1"

.field private static final EC_P256_P:Ljava/math/BigInteger;

.field private static final EC_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

.field private static final IS_LEGACY_CRYPTO_REQUIRED:Ljava/lang/Boolean;

.field private static final MAX_DH2048_ENCODING_BYTES:I = 0x101

.field private static final MAX_P256_ENCODING_BYTES:I = 0x21

.field private static final MAX_RSA2048_ENCODING_BYTES:I = 0x101

.field private static final ONE:Ljava/math/BigInteger;

.field private static final RSA2048_MODULUS_BITS:I = 0x800

.field private static final RSA_ALG:Ljava/lang/String; = "RSA"

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->determineIfLegacyCryptoRequired()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->IS_LEGACY_CRYPTO_REQUIRED:Ljava/lang/Boolean;

    .line 61
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->ONE:Ljava/math/BigInteger;

    .line 62
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->TWO:Ljava/math/BigInteger;

    .line 83
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->isLegacyCryptoRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->generateEcP256KeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    .line 89
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->isLegacyCryptoRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 90
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_P:Ljava/math/BigInteger;

    .line 95
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->isLegacyCryptoRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 96
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_A:Ljava/math/BigInteger;

    .line 101
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->isLegacyCryptoRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 102
    :cond_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v1

    :goto_3
    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_B:Ljava/math/BigInteger;

    .line 130
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    const-string v2, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_P:Ljava/math/BigInteger;

    .line 147
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->TWO:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_G:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineIfLegacyCryptoRequired()Z
    .locals 2

    .line 637
    :try_start_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->getEcKeyGen()Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    nop

    .line 641
    const/4 v0, 0x0

    return v0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public static encodeDh2048PrivateKey(Ljavax/crypto/interfaces/DHPrivateKey;)[B
    .locals 1
    .param p0, "sk"    # Ljavax/crypto/interfaces/DHPrivateKey;

    .line 380
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeDh2048PublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;
    .locals 3
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 223
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->pkToDHPublicKey(Ljava/security/PublicKey;)Ljavax/crypto/interfaces/DHPublicKey;

    move-result-object v0

    .line 224
    .local v0, "dhpk":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    move-result-object v1

    .line 225
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->setY(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 224
    return-object v1
.end method

.method public static encodeEcPublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 3
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 200
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->pkToECPublicKey(Ljava/security/PublicKey;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 201
    .local v0, "epk":Ljava/security/interfaces/ECPublicKey;
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    move-result-object v1

    .line 202
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->extractX(Ljava/security/interfaces/ECPublicKey;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->setX(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    move-result-object v1

    .line 203
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->extractY(Ljava/security/interfaces/ECPublicKey;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->setY(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 201
    return-object v1
.end method

.method public static encodePublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 2
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 172
    if-eqz p0, :cond_3

    .line 175
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->EC_P256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->setType(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    .line 178
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodeEcPublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->setEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 176
    return-object v0

    .line 181
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->RSA2048:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 183
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->setType(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    .line 184
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodeRsa2048PublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->setRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 182
    return-object v0

    .line 187
    :cond_1
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_2

    .line 188
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->DH2048_MODP:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->setType(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    .line 190
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodeDh2048PublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->setDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 188
    return-object v0

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported PublicKey type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static encodeRsa2048PublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 3
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 211
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->pkToRSAPublicKey(Ljava/security/PublicKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 212
    .local v0, "rpk":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    move-result-object v1

    .line 213
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->setN(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    move-result-object v1

    .line 214
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->setE(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 212
    return-object v1
.end method

.method private static extractX(Ljava/security/interfaces/ECPublicKey;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "epk"    # Ljava/security/interfaces/ECPublicKey;

    .line 475
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private static extractY(Ljava/security/interfaces/ECPublicKey;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "epk"    # Ljava/security/interfaces/ECPublicKey;

    .line 471
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static generateDh2048KeyPair()Ljava/security/KeyPair;
    .locals 7

    .line 362
    :try_start_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->getDhKeyGen()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_P:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_G:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 366
    .local v1, "spec":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x200

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 367
    .local v2, "x":Ljava/math/BigInteger;
    new-instance v3, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPrivateKeyShim;

    invoke-direct {v3, v2, v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPrivateKeyShim;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    .line 368
    .local v3, "privateKey":Ljavax/crypto/interfaces/DHPrivateKey;
    new-instance v4, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPublicKeyShim;

    sget-object v5, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_G:Ljava/math/BigInteger;

    sget-object v6, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_P:Ljava/math/BigInteger;

    invoke-virtual {v5, v2, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPublicKeyShim;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    .line 369
    .local v4, "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v5, Ljava/security/KeyPair;

    invoke-direct {v5, v4, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v5
.end method

.method public static generateEcP256KeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 346
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->getEcKeyGen()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static generateRSA2048KeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 353
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->getRsaKeyGen()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method private static getDhKeyGen()Ljava/security/KeyPairGenerator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 554
    :try_start_0
    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 555
    .local v0, "keygen":Ljava/security/KeyPairGenerator;
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_P:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_G:Ljava/math/BigInteger;

    const/16 v4, 0x200

    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    return-object v0

    .line 557
    .end local v0    # "keygen":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static getEcKeyGen()Ljava/security/KeyPairGenerator;
    .locals 4

    .line 514
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 517
    .local v0, "keygen":Ljava/security/KeyPairGenerator;
    nop

    .line 520
    :try_start_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    return-object v0

    .line 522
    :catch_0
    move-exception v1

    .line 526
    :try_start_2
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1

    .line 527
    return-object v0

    .line 528
    :catch_1
    move-exception v1

    .line 529
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to find the NIST P-256 curve"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    .end local v0    # "keygen":Ljava/security/KeyPairGenerator;
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v0

    .line 516
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getRsaKeyGen()Ljava/security/KeyPairGenerator;
    .locals 2

    .line 538
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 539
    .local v0, "keygen":Ljava/security/KeyPairGenerator;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    return-object v0

    .line 541
    .end local v0    # "keygen":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static isLegacyCryptoRequired()Z
    .locals 1

    .line 629
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->IS_LEGACY_CRYPTO_REQUIRED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static parseDh2048PrivateKey([B)Ljavax/crypto/interfaces/DHPrivateKey;
    .locals 5
    .param p0, "encodedX"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 388
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateDhEncoding([B)V

    .line 391
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .local v0, "x":Ljava/math/BigInteger;
    nop

    .line 395
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateDhGroupElement(Ljava/math/BigInteger;)V

    .line 396
    new-instance v1, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPrivateKeyShim;

    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_P:Ljava/math/BigInteger;

    sget-object v4, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_G:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPrivateKeyShim;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    return-object v1

    .line 392
    .end local v0    # "x":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v1
.end method

.method public static parseDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)Ljavax/crypto/interfaces/DHPublicKey;
    .locals 6
    .param p0, "pk"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->hasY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 326
    .local v0, "encodedY":[B
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateDhEncoding([B)V

    .line 329
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .local v1, "y":Ljava/math/BigInteger;
    nop

    .line 333
    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateDhGroupElement(Ljava/math/BigInteger;)V

    .line 335
    :try_start_1
    const-string v2, "DH"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/DHPublicKeySpec;

    sget-object v4, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_P:Ljava/math/BigInteger;

    sget-object v5, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_G:Ljava/math/BigInteger;

    invoke-direct {v3, v1, v4, v5}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 330
    .end local v1    # "y":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v2

    .line 323
    .end local v0    # "encodedY":[B
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "required field is missing"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseEcPublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)Ljava/security/interfaces/ECPublicKey;
    .locals 8
    .param p0, "p256pk"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->isLegacyCryptoRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getX()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 276
    .local v0, "encodedX":[B
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 278
    .local v1, "encodedY":[B
    :try_start_0
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateEcP256CoordinateEncoding([B)V

    .line 279
    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateEcP256CoordinateEncoding([B)V

    .line 280
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 281
    .local v2, "wX":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 282
    .local v3, "wY":Ljava/math/BigInteger;
    invoke-static {v2, v3}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateEcP256CurvePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 283
    const-string v4, "EC"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    new-instance v6, Ljava/security/spec/ECPoint;

    invoke-direct {v6, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v7, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v6, v7}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 285
    .end local v2    # "wX":Ljava/math/BigInteger;
    .end local v3    # "wY":Ljava/math/BigInteger;
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 273
    .end local v0    # "encodedX":[B
    .end local v1    # "encodedY":[B
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Elliptic Curve keys not supported on this platform"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key is missing a required coordinate"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parsePublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "gpk"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$1;->$SwitchMap$com$google$security$cryptauth$lib$securemessage$SecureMessageProto$PublicKeyType:[I

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasDh2048PublicKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parseDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)Ljavax/crypto/interfaces/DHPublicKey;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    goto :goto_0

    .line 256
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported GenericPublicKey type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasRsa2048PublicKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parseRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0

    .line 247
    :cond_3
    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasEcP256PublicKey()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parseEcPublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    return-object v0

    .line 242
    :cond_5
    nop

    .line 258
    :goto_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key object is missing for key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_6
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "GenericPublicKey.type is a required field"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 5
    .param p0, "pk"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getN()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 301
    .local v0, "encodedN":[B
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->validateSimpleRsaEncoding([B)V

    .line 302
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 303
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getE()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 308
    .local v2, "e":Ljava/math/BigInteger;
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 310
    :catch_0
    move-exception v3

    .line 311
    .local v3, "e1":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 304
    .end local v2    # "e":Ljava/math/BigInteger;
    .end local v3    # "e1":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v2

    .line 298
    .end local v0    # "encodedN":[B
    .end local v1    # "n":Ljava/math/BigInteger;
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "required field is missing"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static pkToDHPublicKey(Ljava/security/PublicKey;)Ljavax/crypto/interfaces/DHPublicKey;
    .locals 2
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 499
    if-eqz p0, :cond_1

    .line 502
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_0

    .line 505
    move-object v0, p0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    return-object v0

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a DH Public Key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static pkToECPublicKey(Ljava/security/PublicKey;)Ljava/security/interfaces/ECPublicKey;
    .locals 2
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 479
    if-eqz p0, :cond_1

    .line 482
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 485
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    return-object v0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an EC Public Key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static pkToRSAPublicKey(Ljava/security/PublicKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .param p0, "pk"    # Ljava/security/PublicKey;

    .line 489
    if-eqz p0, :cond_1

    .line 492
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 495
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    return-object v0

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an RSA Public Key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static squareMod(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "p"    # Ljava/math/BigInteger;

    .line 428
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static validateDhEncoding([B)V
    .locals 2
    .param p0, "y"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 455
    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    const/16 v1, 0x101

    if-gt v0, v1, :cond_0

    .line 458
    return-void

    .line 456
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0
.end method

.method private static validateDhGroupElement(Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->DH_P:Ljava/math/BigInteger;

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    .line 468
    return-void

    .line 466
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0
.end method

.method private static validateEcP256CoordinateEncoding([B)V
    .locals 2
    .param p0, "p"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 435
    array-length v0, p0

    if-eqz v0, :cond_1

    array-length v0, p0

    const/16 v1, 0x21

    if-gt v0, v1, :cond_1

    array-length v0, p0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    return-void

    .line 438
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0
.end method

.method private static validateEcP256CurvePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 408
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_P:Ljava/math/BigInteger;

    .line 409
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    .line 414
    invoke-static {p1, v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->squareMod(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 415
    .local v1, "lhs":Ljava/math/BigInteger;
    invoke-static {p0, v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->squareMod(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_A:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 416
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->EC_P256_B:Ljava/math/BigInteger;

    .line 417
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 418
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 419
    .local v2, "rhs":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    return-void

    .line 420
    :cond_0
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Point does not lie on the expected curve"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    .end local v1    # "lhs":Ljava/math/BigInteger;
    .end local v2    # "rhs":Ljava/math/BigInteger;
    :cond_1
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Point lies outside of the expected field"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    .end local v0    # "p":Ljava/math/BigInteger;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Point encoding must use only non-negative integers"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateSimpleRsaEncoding([B)V
    .locals 2
    .param p0, "n"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 446
    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    const/16 v1, 0x101

    if-gt v0, v1, :cond_0

    .line 449
    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0
.end method
