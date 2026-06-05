.class public Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps;
.super Ljava/lang/Object;
.source "TransportCryptoOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;,
        Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedUserPublicKeyFor([B)[B
    .locals 2
    .param p0, "signcryptedClientMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    if-eqz p0, :cond_0

    .line 255
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 256
    .local v0, "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->getUnverifiedHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getVerificationKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 253
    .end local v0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static getKeyHandleFor([B)[B
    .locals 2
    .param p0, "signcryptedServerMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 145
    if-eqz p0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 149
    .local v0, "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->getUnverifiedHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getVerificationKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 146
    .end local v0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static getSigTypeFor(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .locals 2
    .param p0, "userPublicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 260
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->ECDSA_P256_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    return-object v0

    .line 262
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    .line 263
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->RSA2048_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    return-object v0

    .line 265
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signcryptClientMessage(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)[B
    .locals 8
    .param p0, "payload"    # Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .param p1, "userKeyPair"    # Ljava/security/KeyPair;
    .param p2, "masterKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 192
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 197
    .local v0, "userPublicKey":Ljava/security/PublicKey;
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    .line 199
    .local v7, "userPrivateKey":Ljava/security/PrivateKey;
    new-instance v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    invoke-direct {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;-><init>()V

    .line 200
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->encodeUserPublicKey(Ljava/security/PublicKey;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setVerificationKeyId([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v1

    .line 201
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getPayloadType()Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 203
    invoke-virtual {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 205
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->toByteArray()[B

    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setPublicMetadata([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v1

    .line 208
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps;->getSigTypeFor(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    move-result-object v3

    sget-object v5, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 211
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getMessage()[B

    move-result-object v6

    .line 206
    move-object v2, v7

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->buildSignCryptedMessage(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->toByteArray()[B

    move-result-object v1

    .line 199
    return-object v1

    .line 193
    .end local v0    # "userPublicKey":Ljava/security/PublicKey;
    .end local v7    # "userPrivateKey":Ljava/security/PrivateKey;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static signcryptServerMessage(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;[B)[B
    .locals 8
    .param p0, "payload"    # Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .param p2, "keyHandle"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 119
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 122
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;-><init>()V

    .line 123
    invoke-virtual {v0, p2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setVerificationKeyId([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getPayloadType()Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 128
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->toByteArray()[B

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setPublicMetadata([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v6, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 134
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getMessage()[B

    move-result-object v7

    .line 129
    move-object v3, p1

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->buildSignCryptedMessage(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->toByteArray()[B

    move-result-object v0

    .line 122
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static verifydecryptClientMessage([BLjava/security/PublicKey;Ljavax/crypto/SecretKey;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .locals 6
    .param p0, "signcryptedClientMessage"    # [B
    .param p1, "userPublicKey"    # Ljava/security/PublicKey;
    .param p2, "masterKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 224
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 228
    :try_start_0
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 229
    .local v0, "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    nop

    .line 232
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps;->getSigTypeFor(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 229
    invoke-static {v0, p1, v1, p2, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->parseSignCryptedMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v1

    .line 235
    .local v1, "parsed":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getPublicMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    move-result-object v2

    .line 236
    .local v2, "metadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 239
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v4

    invoke-static {v4}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->valueOf(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;-><init>(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;[B)V

    return-object v3

    .line 237
    :cond_0
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Unsupported protocol version"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signcryptedClientMessage":[B
    .end local p1    # "userPublicKey":Ljava/security/PublicKey;
    .end local p2    # "masterKey":Ljavax/crypto/SecretKey;
    throw v3
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local v1    # "parsed":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .end local v2    # "metadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .restart local p0    # "signcryptedClientMessage":[B
    .restart local p1    # "userPublicKey":Ljava/security/PublicKey;
    .restart local p2    # "masterKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static verifydecryptServerMessage([BLjavax/crypto/SecretKey;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .locals 6
    .param p0, "signcryptedServerMessage"    # [B
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 161
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 165
    :try_start_0
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 166
    .local v0, "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    invoke-static {v0, p1, v1, p1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->parseSignCryptedMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v1

    .line 172
    .local v1, "parsed":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getPublicMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    move-result-object v2

    .line 173
    .local v2, "metadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 176
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v4

    invoke-static {v4}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->valueOf(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;-><init>(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;[B)V

    return-object v3

    .line 174
    :cond_0
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Unsupported protocol version"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signcryptedServerMessage":[B
    .end local p1    # "masterKey":Ljavax/crypto/SecretKey;
    throw v3
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local v1    # "parsed":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .end local v2    # "metadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .restart local p0    # "signcryptedServerMessage":[B
    .restart local p1    # "masterKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
