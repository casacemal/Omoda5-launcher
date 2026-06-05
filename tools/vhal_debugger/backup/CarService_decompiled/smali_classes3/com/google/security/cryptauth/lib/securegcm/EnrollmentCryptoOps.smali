.class public Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;
.super Ljava/lang/Object;
.source "EnrollmentCryptoOps.java"


# static fields
.field private static final INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

.field private static final KA_ALG:Ljava/lang/String; = "ECDH"

.field private static final LEGACY_INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

.field private static final LEGACY_KA_ALG:Ljava/lang/String; = "DH"

.field private static final OUTER_ENC_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

.field private static final OUTER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->OUTER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 56
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->OUTER_ENC_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 61
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->ECDSA_P256_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 67
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->RSA2048_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->LEGACY_INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptEnrollmentMessage([BLjavax/crypto/SecretKey;Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 9
    .param p0, "enrollmentMessage"    # [B
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .param p2, "isLegacy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 180
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 191
    .local v0, "outerMsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->OUTER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->OUTER_ENC_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    invoke-static {v0, p1, v1, p1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->parseSignCryptedMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v1

    .line 193
    .local v1, "outerHeaderAndBody":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getPublicMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    move-result-object v2

    .line 195
    .local v2, "outerMetadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v3

    .line 196
    .local v3, "innerMsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    invoke-static {v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->getUnverifiedHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getVerificationKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    .line 198
    .local v4, "encodedUserPublicKey":[B
    invoke-static {v4}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->parseUserPublicKey([B)Ljava/security/PublicKey;

    move-result-object v5

    .line 199
    .local v5, "userPublicKey":Ljava/security/PublicKey;
    if-eqz p2, :cond_0

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->LEGACY_INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 200
    .local v6, "sigType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    :goto_0
    invoke-static {v3, v5, v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->parseSignedCleartextMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v7

    .line 202
    .local v7, "innerHeaderAndBody":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    invoke-virtual {v7}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-static {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v8
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .line 207
    .end local v3    # "innerMsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local v5    # "userPublicKey":Ljava/security/PublicKey;
    .end local v6    # "sigType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .local v0, "enrollmentInfo":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    nop

    .line 209
    nop

    .line 210
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v3

    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    .line 211
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getVersion()I

    move-result v3

    if-gt v3, v6, :cond_1

    .line 212
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getVerificationKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v7}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getPublicMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getUserPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->getMasterKeyHash(Ljavax/crypto/SecretKey;)[B

    move-result-object v3

    .line 217
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceMasterKeyHash()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    .line 216
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v3, v6

    .line 219
    .local v3, "verified":Z
    if-eqz v3, :cond_2

    .line 220
    return-object v0

    .line 222
    :cond_2
    new-instance v5, Ljava/security/SignatureException;

    invoke-direct {v5}, Ljava/security/SignatureException;-><init>()V

    throw v5

    .line 205
    .end local v0    # "enrollmentInfo":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .end local v1    # "outerHeaderAndBody":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .end local v2    # "outerMetadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .end local v3    # "verified":Z
    .end local v4    # "encodedUserPublicKey":[B
    .end local v7    # "innerHeaderAndBody":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 203
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 181
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static doKeyAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "myKey"    # Ljava/security/PrivateKey;
    .param p1, "peerKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 88
    const-string v0, "ECDH"

    .line 89
    .local v0, "alg":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->isLegacyPrivateKey(Ljava/security/PrivateKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v0, "DH"

    .line 94
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v1, "agreement":Ljavax/crypto/KeyAgreement;
    nop

    .line 99
    invoke-virtual {v1, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 101
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v2

    .line 104
    .local v2, "agreedKey":[B
    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->sha256([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->parseMasterKey([B)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 95
    .end local v1    # "agreement":Ljavax/crypto/KeyAgreement;
    .end local v2    # "agreedKey":[B
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static encryptEnrollmentMessage(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljavax/crypto/SecretKey;Ljava/security/PrivateKey;)[B
    .locals 10
    .param p0, "enrollmentInfo"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .param p2, "signingKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 139
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceMasterKeyHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 144
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->getMasterKeyHash(Ljavax/crypto/SecretKey;)[B

    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {p2}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->isLegacyPrivateKey(Ljava/security/PrivateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->LEGACY_INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->INNER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 151
    .local v0, "sigType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    :goto_0
    new-instance v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    invoke-direct {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;-><init>()V

    .line 152
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getUserPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setVerificationKeyId([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v1

    .line 153
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->buildSignedCleartextMessage(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v1

    .line 156
    .local v1, "innerMsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    new-instance v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    invoke-direct {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 157
    invoke-virtual {v2, v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setVerificationKeyId([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v2

    .line 158
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 159
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 160
    invoke-virtual {v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 162
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->toByteArray()[B

    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setPublicMetadata([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v4

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->OUTER_SIG_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v8, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->OUTER_ENC_TYPE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 164
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->toByteArray()[B

    move-result-object v9

    .line 163
    move-object v5, p1

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->buildSignCryptedMessage(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v2

    .line 165
    .local v2, "outerMsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 145
    .end local v0    # "sigType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .end local v1    # "innerMsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local v2    # "outerMsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DeviceMasterKeyHash not set correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static generateEnrollmentKeyAgreementKeyPair(Z)Ljava/security/KeyPair;
    .locals 1
    .param p0, "isLegacy"    # Z

    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->generateDh2048KeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->generateEcP256KeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static getMasterKeyHash(Ljavax/crypto/SecretKey;)[B
    .locals 1
    .param p0, "masterKey"    # Ljavax/crypto/SecretKey;

    .line 118
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->sha256([B)[B

    move-result-object v0

    return-object v0
.end method

.method static sha256([B)[B
    .locals 2
    .param p0, "input"    # [B

    .line 227
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 228
    .local v0, "sha256":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 229
    .end local v0    # "sha256":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
