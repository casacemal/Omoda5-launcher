.class Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;
.super Ljava/lang/Object;
.source "D2DCryptoOps.java"


# static fields
.field static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->SALT:[B

    return-void

    :array_0
    .array-data 1
        -0x7et
        -0x56t
        0x55t
        -0x60t
        -0x2dt
        -0x69t
        -0x8t
        -0x7dt
        0x46t
        -0x36t
        0x1ct
        -0x12t
        -0x73t
        0x39t
        0x9t
        -0x47t
        0x5ft
        0x13t
        -0x6t
        0x7dt
        -0x15t
        0x1dt
        0x4at
        -0x4dt
        -0x7dt
        0x76t
        -0x48t
        0x25t
        0x6dt
        -0x58t
        0x55t
        0x10t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decryptResponderHelloMessage(Ljavax/crypto/SecretKey;[B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 3
    .param p0, "sharedKey"    # Ljavax/crypto/SecretKey;
    .param p1, "responderHelloAndPayload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-static {p1, p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->verifydecryptPayload([BLjavax/crypto/SecretKey;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;

    move-result-object v0

    .line 221
    .local v0, "payload":Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 222
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getPayloadType()Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getMessage()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v1

    return-object v1

    .line 223
    :cond_0
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "wrong message type in responder hello"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "sharedKey":Ljavax/crypto/SecretKey;
    .end local p1    # "responderHelloAndPayload":[B
    throw v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "payload":Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .restart local p0    # "sharedKey":Ljavax/crypto/SecretKey;
    .restart local p1    # "responderHelloAndPayload":[B
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 226
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 227
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static deriveNewKeyForPurpose(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p0, "masterKey"    # Ljavax/crypto/SecretKey;
    .param p1, "purpose"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 207
    .local v0, "info":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->SALT:[B

    invoke-static {p0, v1, v0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->hkdf(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securegcm/KeyEncoding;->parseMasterKey([B)Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method static deriveSharedKeyFromGenericPublicKey(Ljava/security/PrivateKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p0, "ourPrivateKey"    # Ljava/security/PrivateKey;
    .param p1, "theirGenericPublicKey"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parsePublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    .line 189
    .local v0, "theirPublicKey":Ljava/security/PublicKey;
    invoke-static {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->doKeyAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 192
    .end local v0    # "theirPublicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 190
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static parseAndValidateResponderHello([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;
    .locals 6
    .param p0, "signcryptedMessageFromResponder"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    if-eqz p0, :cond_2

    .line 133
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 134
    .local v0, "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->getUnverifiedHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v1

    .line 135
    .local v1, "messageHeader":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasDecryptionKeyId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDecryptionKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    .line 141
    .local v2, "encodedResponderHello":[B
    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    move-result-object v3

    .line 142
    .local v3, "responderHello":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->hasPublicDhKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    return-object v3

    .line 143
    :cond_0
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v5, "Missing public key in responder hello"

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .end local v2    # "encodedResponderHello":[B
    .end local v3    # "responderHello":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;
    :cond_1
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v3, "Missing decryption key id"

    invoke-direct {v2, v3}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local v1    # "messageHeader":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static signcryptMessageAndResponderHello(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;Ljava/security/PublicKey;I)[B
    .locals 2
    .param p0, "payload"    # Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .param p1, "sharedKey"    # Ljavax/crypto/SecretKey;
    .param p2, "publicDhKey"    # Ljava/security/PublicKey;
    .param p3, "protocolVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;

    move-result-object v0

    .line 74
    .local v0, "responderHello":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
    invoke-static {p2}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodePublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;

    .line 75
    invoke-virtual {v0, p3}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->setProtocolVersion(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;

    .line 76
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->signcryptPayload(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;[B)[B

    move-result-object v1

    return-object v1
.end method

.method static signcryptPayload(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;)[B
    .locals 1
    .param p0, "payload"    # Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->signcryptPayload(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static signcryptPayload(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;[B)[B
    .locals 8
    .param p0, "payload"    # Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .param p2, "responderHello"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 98
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 102
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;-><init>()V

    .line 103
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getPayloadType()Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    .line 107
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->toByteArray()[B

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setPublicMetadata([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    move-result-object v0

    .line 109
    .local v0, "secureMessageBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {v0, p2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->setDecryptionKeyId([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    .line 113
    :cond_0
    sget-object v4, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v6, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 118
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getMessage()[B

    move-result-object v7

    .line 113
    move-object v2, v0

    move-object v3, p1

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->buildSignCryptedMessage(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->toByteArray()[B

    move-result-object v1

    .line 113
    return-object v1

    .line 99
    .end local v0    # "secureMessageBuilder":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static verifydecryptPayload([BLjavax/crypto/SecretKey;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .locals 6
    .param p0, "signcryptedMessage"    # [B
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 154
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 158
    :try_start_0
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    .line 159
    .local v0, "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    invoke-static {v0, p1, v1, p1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->parseSignCryptedMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v1

    .line 165
    .local v1, "parsed":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasPublicMetadata()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getPublicMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    move-result-object v2

    .line 169
    .local v2, "metadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 172
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

    .line 170
    :cond_0
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Unsupported protocol version"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signcryptedMessage":[B
    .end local p1    # "masterKey":Ljavax/crypto/SecretKey;
    throw v3

    .line 166
    .end local v2    # "metadata":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
    .restart local p0    # "signcryptedMessage":[B
    .restart local p1    # "masterKey":Ljavax/crypto/SecretKey;
    :cond_1
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "missing metadata"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signcryptedMessage":[B
    .end local p1    # "masterKey":Ljavax/crypto/SecretKey;
    throw v2
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local v1    # "parsed":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .restart local p0    # "signcryptedMessage":[B
    .restart local p1    # "masterKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
