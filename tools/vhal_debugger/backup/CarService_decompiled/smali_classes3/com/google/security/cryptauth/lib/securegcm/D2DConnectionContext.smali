.class public abstract Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
.super Ljava/lang/Object;
.source "D2DConnectionContext.java"


# static fields
.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final protocolVersion:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "protocolVersion"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->protocolVersion:I

    .line 44
    return-void
.end method

.method static bytesToSignedInt([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .line 250
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 255
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 4 bytes to encode int, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createDeviceToDeviceMessage([BI)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 2
    .param p0, "message"    # [B
    .param p1, "sequenceNumber"    # I

    .line 143
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;

    move-result-object v0

    .line 144
    .local v0, "deviceToDeviceMessage":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;
    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;->setSequenceNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;

    .line 145
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;->setMessage(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;

    .line 146
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v1
.end method

.method public static fromSavedSession([B)Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .locals 8
    .param p0, "savedSessionInfo"    # [B

    .line 207
    if-eqz p0, :cond_4

    array-length v0, p0

    if-eqz v0, :cond_4

    .line 211
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 213
    .local v0, "protocolVersion":I
    const-string v1, "AES"

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    .line 228
    array-length v4, p0

    const/16 v5, 0x49

    if-ne v4, v5, :cond_0

    .line 231
    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->bytesToSignedInt([B)I

    move-result v2

    .line 232
    .local v2, "encodeSequenceNumber":I
    const/16 v4, 0x9

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->bytesToSignedInt([B)I

    move-result v3

    .line 233
    .local v3, "decodeSequenceNumber":I
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 234
    const/16 v7, 0x29

    invoke-static {p0, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v6, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v4, v6

    .line 235
    .local v4, "encodeKey":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 236
    invoke-static {p0, v7, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v6, v5, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v1, v6

    .line 237
    .local v1, "decodeKey":Ljavax/crypto/SecretKey;
    new-instance v5, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    invoke-direct {v5, v4, v1, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;II)V

    return-object v5

    .line 229
    .end local v1    # "decodeKey":Ljavax/crypto/SecretKey;
    .end local v2    # "encodeSequenceNumber":I
    .end local v3    # "decodeSequenceNumber":I
    .end local v4    # "encodeKey":Ljavax/crypto/SecretKey;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect data length for v1 protocol"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot rebuild context, unkown protocol version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_2
    array-length v4, p0

    const/16 v5, 0x25

    if-ne v4, v5, :cond_3

    .line 221
    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->bytesToSignedInt([B)I

    move-result v2

    .line 222
    .local v2, "sequenceNumber":I
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v4, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v1, v4

    .line 223
    .local v1, "sharedKey":Ljavax/crypto/SecretKey;
    new-instance v3, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;

    invoke-direct {v3, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;-><init>(Ljavax/crypto/SecretKey;I)V

    return-object v3

    .line 218
    .end local v1    # "sharedKey":Ljavax/crypto/SecretKey;
    .end local v2    # "sequenceNumber":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect data length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for v0 protocol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v0    # "protocolVersion":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "savedSessionInfo null or too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static signedIntToBytes(I)[B
    .locals 3
    .param p0, "val"    # I

    .line 265
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 267
    .local v0, "bytes":[B
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 268
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 269
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 270
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 272
    return-object v0
.end method


# virtual methods
.method public decodeMessageFromPeer([B)[B
    .locals 4
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->getDecodeKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->verifydecryptPayload([BLjavax/crypto/SecretKey;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;

    move-result-object v0

    .line 104
    .local v0, "payload":Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getPayloadType()Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->getMessage()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v1

    .line 109
    .local v1, "messageProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->incrementSequenceNumberForDecoding()V

    .line 110
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->getSequenceNumberForDecoding()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getMessage()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 111
    :cond_0
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Incorrect sequence number"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .end local p1    # "message":[B
    throw v2

    .line 105
    .end local v1    # "messageProto":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .restart local p1    # "message":[B
    :cond_1
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "wrong message type in device-to-device message"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .end local p1    # "message":[B
    throw v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "payload":Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .restart local p1    # "message":[B
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 117
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 115
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 116
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decodeMessageFromPeerAsString([B)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->decodeMessageFromPeer([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encodeMessageToPeer(Ljava/lang/String;)[B
    .locals 2
    .param p1, "payload"    # Ljava/lang/String;

    .line 86
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->encodeMessageToPeer([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encodeMessageToPeer([B)[B
    .locals 4
    .param p1, "payload"    # [B

    .line 60
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->incrementSequenceNumberForEncoding()V

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->getSequenceNumberForEncoding()I

    move-result v0

    .line 61
    invoke-static {p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->createDeviceToDeviceMessage([BI)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v0

    .line 64
    .local v0, "message":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    :try_start_0
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 66
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;-><init>(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;[B)V

    .line 67
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->getEncodeKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->signcryptPayload(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;Ljavax/crypto/SecretKey;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 68
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method abstract getDecodeKey()Ljavax/crypto/SecretKey;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method abstract getEncodeKey()Ljavax/crypto/SecretKey;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->protocolVersion:I

    return v0
.end method

.method abstract getSequenceNumberForDecoding()I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method abstract getSequenceNumberForEncoding()I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract getSessionUnique()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract incrementSequenceNumberForDecoding()V
.end method

.method protected abstract incrementSequenceNumberForEncoding()V
.end method

.method public abstract saveSession()[B
.end method
