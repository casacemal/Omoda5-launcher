.class public Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
.super Ljava/lang/Object;
.source "D2DDiffieHellmanKeyExchangeHandshake.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;
    }
.end annotation


# static fields
.field private static final INITIATOR_PURPOSE:Ljava/lang/String; = "initiator"

.field private static final RESPONDER_PURPOSE:Ljava/lang/String; = "responder"


# instance fields
.field private handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

.field private initiatorEncodeKey:Ljavax/crypto/SecretKey;

.field private isInitiator:Z

.field private ourKeyPair:Ljava/security/KeyPair;

.field private protocolVersionToUse:I

.field private responderEncodeKey:Ljavax/crypto/SecretKey;

.field private theirPublicKey:Ljava/security/PublicKey;


# direct methods
.method private constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;)V
    .locals 2
    .param p1, "state"    # Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->generateEcP256KeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->theirPublicKey:Ljava/security/PublicKey;

    .line 97
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    .line 98
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    .line 99
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 100
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->isInitiator:Z

    .line 101
    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    .line 102
    return-void
.end method

.method public static forInitiator()Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .locals 2

    .line 108
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;)V

    return-object v0
.end method

.method public static forResponder()Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .locals 2

    .line 115
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;)V

    return-object v0
.end method

.method private makeResponderHelloWithPayload([B)[B
    .locals 6
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 164
    if-eqz p1, :cond_2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 170
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->theirPublicKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->doKeyAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 173
    .local v0, "masterKey":Ljavax/crypto/SecretKey;
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 179
    const-string v1, "initiator"

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->deriveNewKeyForPurpose(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    .line 180
    const-string v1, "responder"

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->deriveNewKeyForPurpose(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    .line 181
    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected protocol version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .end local p1    # "payload":[B
    throw v1

    .line 175
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .restart local p1    # "payload":[B
    :cond_1
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    .line 176
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    .line 177
    nop

    .line 186
    :goto_0
    nop

    .line 187
    invoke-static {p1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->createDeviceToDeviceMessage([BI)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v1

    .line 189
    .local v1, "deviceToDeviceMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 191
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;-><init>(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;[B)V

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    iget-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 193
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    .line 189
    invoke-static {v2, v3, v4, v5}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->signcryptMessageAndResponderHello(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;Ljava/security/PublicKey;I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 195
    .end local v0    # "masterKey":Ljavax/crypto/SecretKey;
    .end local v1    # "deviceToDeviceMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    invoke-direct {v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Not expecting null payload"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseInitiatorHello([B)V
    .locals 3
    .param p1, "initiatorHello"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    move-result-object v0

    .line 263
    .local v0, "initiatorHelloProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->hasPublicDhKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parsePublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->theirPublicKey:Ljava/security/PublicKey;

    .line 270
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getProtocolVersion()I

    move-result v1

    .line 271
    .local v1, "protocolVersion":I
    if-nez v1, :cond_0

    .line 272
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    .line 276
    .end local v0    # "initiatorHelloProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .end local v1    # "protocolVersion":I
    :cond_0
    nop

    .line 277
    return-void

    .line 264
    .restart local v0    # "initiatorHelloProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    :cond_1
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Missing public key in initiator hello"

    invoke-direct {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .end local p1    # "initiatorHello":[B
    throw v1
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0    # "initiatorHelloProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .restart local p1    # "initiatorHello":[B
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    invoke-direct {v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private parseResponderHello([B)[B
    .locals 6
    .param p1, "responderHello"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 224
    nop

    .line 225
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->parseAndValidateResponderHello([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    move-result-object v0

    .line 228
    .local v0, "responderHelloProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->getProtocolVersion()I

    move-result v1

    .line 229
    .local v1, "protocolVersion":I
    if-nez v1, :cond_0

    .line 230
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 234
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v3

    .line 233
    invoke-static {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->deriveSharedKeyFromGenericPublicKey(Ljava/security/PrivateKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 237
    .local v2, "masterKey":Ljavax/crypto/SecretKey;
    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    if-nez v3, :cond_1

    .line 238
    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    .line 239
    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    goto :goto_0

    .line 241
    :cond_1
    const-string v3, "initiator"

    invoke-static {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->deriveNewKeyForPurpose(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    .line 242
    const-string v3, "responder"

    invoke-static {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->deriveNewKeyForPurpose(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    .line 245
    :goto_0
    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    .line 246
    invoke-static {v3, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->decryptResponderHelloMessage(Ljavax/crypto/SecretKey;[B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v3

    .line 248
    .local v3, "message":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getSequenceNumber()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 252
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getMessage()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 249
    :cond_2
    new-instance v4, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v5, "Incorrect sequence number in responder hello"

    invoke-direct {v4, v5}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .end local p1    # "responderHello":[B
    throw v4
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "responderHelloProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;
    .end local v1    # "protocolVersion":I
    .end local v2    # "masterKey":Ljavax/crypto/SecretKey;
    .end local v3    # "message":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
    .restart local p1    # "responderHello":[B
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    invoke-direct {v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public canSendPayloadInHandshakeMessage()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_AFTER_INITIATOR_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNextHandshakeMessage()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 126
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$D2DDiffieHellmanKeyExchangeHandshake$State:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->makeResponderHelloWithPayload([B)[B

    move-result-object v0

    .line 137
    .local v0, "responderHello":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 138
    return-object v0

    .line 141
    .end local v0    # "responderHello":[B
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get next message in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->INITIATOR_WAITING_FOR_RESPONDER_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 129
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 130
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodePublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->setProtocolVersion(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    .line 133
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->toByteArray()[B

    move-result-object v0

    .line 129
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

    .line 152
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_AFTER_INITIATOR_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    if-ne v0, v1, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->makeResponderHelloWithPayload([B)[B

    move-result-object v0

    .line 158
    .local v0, "responderHello":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 160
    return-object v0

    .line 153
    .end local v0    # "responderHello":[B
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get next message with payload in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isHandshakeComplete()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    if-ne v0, v1, :cond_0

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

.method public parseHandshakeMessage([B)[B
    .locals 3
    .param p1, "handshakeMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 202
    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$D2DDiffieHellmanKeyExchangeHandshake$State:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->parseInitiatorHello([B)V

    .line 214
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_AFTER_INITIATOR_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 215
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse message in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->parseResponderHello([B)[B

    move-result-object v0

    .line 209
    .local v0, "payload":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 210
    return-object v0

    .line 203
    .end local v0    # "payload":[B
    :cond_2
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Handshake message too short"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    if-eq v0, v1, :cond_4

    .line 285
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 291
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->protocolVersionToUse:I

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;-><init>(Ljavax/crypto/SecretKey;I)V

    return-object v0

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->isInitiator:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    .line 299
    .local v0, "encodeKey":Ljavax/crypto/SecretKey;
    :goto_0
    iget-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->isInitiator:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->responderEncodeKey:Ljavax/crypto/SecretKey;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->initiatorEncodeKey:Ljavax/crypto/SecretKey;

    .line 302
    .local v1, "decodeKey":Ljavax/crypto/SecretKey;
    :goto_1
    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;->isInitiator:Z

    xor-int/lit8 v3, v2, 0x1

    .line 303
    .local v3, "initialEncodeSequenceNumber":I
    nop

    .line 304
    .local v2, "initialDecodeSequenceNumber":I
    new-instance v4, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;II)V

    return-object v4

    .line 286
    .end local v0    # "encodeKey":Ljavax/crypto/SecretKey;
    .end local v1    # "decodeKey":Ljavax/crypto/SecretKey;
    .end local v2    # "initialDecodeSequenceNumber":I
    .end local v3    # "initialEncodeSequenceNumber":I
    :cond_3
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Handshake is not complete; cannot create connection context"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v1, "Cannot reuse handshake context; is has already been used"

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
