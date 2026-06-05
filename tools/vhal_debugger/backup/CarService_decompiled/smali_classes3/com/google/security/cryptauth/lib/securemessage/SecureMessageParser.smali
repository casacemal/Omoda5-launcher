.class public Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;
.super Ljava/lang/Object;
.source "SecureMessageParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnverifiedHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 4
    .param p0, "secmsg"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasHeaderAndBody()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getHeaderAndBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getHeaderAndBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    .line 62
    .local v0, "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasSignatureScheme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getSignatureScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->valueOf(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    nop

    .line 72
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasEncryptionScheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :try_start_1
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getEncryptionScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->valueOf(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v3, "Corrupt/unsupported EncryptionScheme"

    invoke-direct {v2, v3}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :catch_1
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v3, "Corrupt/unsupported SignatureScheme"

    invoke-direct {v2, v3}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v2, "Missing header field(s)"

    invoke-direct {v1, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    :cond_2
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Missing header"

    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Missing header and body"

    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSignCryptedMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 6
    .param p0, "secmsg"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .param p1, "verificationKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p3, "decryptionKey"    # Ljava/security/Key;
    .param p4, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 133
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->parseSignCryptedMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v0

    return-object v0
.end method

.method public static parseSignCryptedMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 10
    .param p0, "secmsg"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .param p1, "verificationKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p3, "decryptionKey"    # Ljava/security/Key;
    .param p4, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .param p5, "associatedData"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 153
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 160
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    if-eq p4, v0, :cond_4

    .line 164
    nop

    .line 165
    invoke-static {p1, p2, p3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->taggedPlaintextRequired(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;)Z

    move-result v0

    .line 167
    .local v0, "tagRequired":Z
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->verifyHeaderAndBody(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[BZ)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v1

    .line 176
    .local v1, "headerAndEncryptedBody":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v2

    .line 177
    .local v2, "header":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasIv()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    nop

    .line 182
    :try_start_0
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getIv()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 183
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    .line 181
    invoke-static {p3, p4, v3, v4}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->decrypt(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B[B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .local v3, "rawDecryptedBody":[B
    nop

    .line 192
    if-nez v0, :cond_0

    .line 194
    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    move-result-object v4

    .line 195
    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    .line 194
    return-object v4

    .line 202
    :cond_0
    nop

    .line 203
    :try_start_1
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getHeaderAndBody()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getHeader()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    .local v4, "headerBytes":[B
    nop

    .line 208
    const/4 v5, 0x0

    .line 209
    .local v5, "verifiedBinding":Z
    invoke-static {v4, p5}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->concat([B[B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->digest([B)[B

    move-result-object v6

    .line 210
    .local v6, "expectedTag":[B
    array-length v7, v3

    const/16 v8, 0x14

    if-lt v7, v8, :cond_1

    .line 211
    const/4 v7, 0x0

    invoke-static {v3, v7, v8}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->subarray([BII)[B

    move-result-object v7

    .line 212
    .local v7, "actualTag":[B
    invoke-static {v7, v6}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->constantTimeArrayEquals([B[B)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 213
    const/4 v5, 0x1

    .line 216
    .end local v7    # "actualTag":[B
    :cond_1
    if-eqz v5, :cond_2

    .line 220
    array-length v7, v3

    sub-int/2addr v7, v8

    .line 221
    .local v7, "bodyLen":I
    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    move-result-object v9

    .line 223
    invoke-static {v3, v8, v7}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;

    move-result-object v8

    .line 224
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    .line 221
    return-object v8

    .line 217
    .end local v7    # "bodyLen":I
    :cond_2
    new-instance v7, Ljava/security/SignatureException;

    invoke-direct {v7}, Ljava/security/SignatureException;-><init>()V

    throw v7

    .line 204
    .end local v4    # "headerBytes":[B
    .end local v5    # "verifiedBinding":Z
    .end local v6    # "expectedTag":[B
    :catch_0
    move-exception v4

    .line 206
    .local v4, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v5, Ljava/security/SignatureException;

    invoke-direct {v5, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 188
    .end local v3    # "rawDecryptedBody":[B
    .end local v4    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v3

    .line 189
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/SignatureException;

    invoke-direct {v4}, Ljava/security/SignatureException;-><init>()V

    throw v4

    .line 186
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v3

    .line 187
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/SignatureException;

    invoke-direct {v4}, Ljava/security/SignatureException;-><init>()V

    throw v4

    .line 184
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v3

    .line 185
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/SignatureException;

    invoke-direct {v4}, Ljava/security/SignatureException;-><init>()V

    throw v4

    .line 178
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_3
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3}, Ljava/security/SignatureException;-><init>()V

    throw v3

    .line 161
    .end local v0    # "tagRequired":Z
    .end local v1    # "headerAndEncryptedBody":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .end local v2    # "header":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    :cond_4
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Not a signcrypted message"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static parseSignedCleartextMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 1
    .param p0, "secmsg"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .param p1, "verificationKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->parseSignedCleartextMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v0

    return-object v0
.end method

.method public static parseSignedCleartextMessage(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 6
    .param p0, "secmsg"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .param p1, "verificationKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p3, "associatedData"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 106
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 109
    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageParser;->verifyHeaderAndBody(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[BZ)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static verifyHeaderAndBody(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[BZ)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .locals 10
    .param p0, "secmsg"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .param p1, "verificationKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p3, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .param p4, "associatedData"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "suppressAssociatedData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasHeaderAndBody()Z

    move-result v0

    const-string v1, "Signature failed verification"

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 238
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 239
    .local v0, "signature":[B
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getHeaderAndBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    .line 240
    .local v2, "data":[B
    if-eqz p5, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-static {v2, p4}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->concat([B[B)[B

    move-result-object v3

    .line 243
    .local v3, "signedData":[B
    :goto_0
    invoke-static {p1, p2, v0, v3}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->verify(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B[B)Z

    move-result v4

    .line 244
    .local v4, "verified":Z
    const/4 v5, 0x0

    .line 246
    .local v5, "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getHeaderAndBody()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-static {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v6

    move-object v5, v6

    .line 248
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasHeader()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasBody()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 251
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getSignatureScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->getSigScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v9

    :goto_1
    and-int/2addr v4, v6

    .line 252
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getEncryptionScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v6

    invoke-virtual {p3}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->getEncScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v7

    if-ne v6, v7, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    move v6, v9

    :goto_2
    and-int/2addr v4, v6

    .line 254
    sget-object v6, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    if-ne p3, v6, :cond_4

    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasDecryptionKeyId()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v6, v9

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v8

    :goto_4
    and-int/2addr v4, v6

    .line 257
    sget-object v6, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    if-eq p3, v6, :cond_6

    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->isPublicKeyScheme()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 258
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasVerificationKeyId()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move v6, v9

    goto :goto_6

    :cond_6
    :goto_5
    move v6, v8

    :goto_6
    and-int/2addr v4, v6

    .line 259
    if-nez p4, :cond_7

    move v6, v9

    goto :goto_7

    :cond_7
    array-length v6, p4

    .line 260
    .local v6, "associatedDataLength":I
    :goto_7
    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getAssociatedDataLength()I

    move-result v7

    if-ne v7, v6, :cond_8

    goto :goto_8

    :cond_8
    move v8, v9

    :goto_8
    and-int/2addr v4, v8

    .line 263
    .end local v6    # "associatedDataLength":I
    goto :goto_9

    .line 249
    :cond_9
    new-instance v6, Ljava/security/SignatureException;

    invoke-direct {v6, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signature":[B
    .end local v2    # "data":[B
    .end local v3    # "signedData":[B
    .end local v4    # "verified":Z
    .end local v5    # "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .end local p0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .end local p1    # "verificationKey":Ljava/security/Key;
    .end local p2    # "sigType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .end local p3    # "encType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .end local p4    # "associatedData":[B
    .end local p5    # "suppressAssociatedData":Z
    throw v6
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .restart local v0    # "signature":[B
    .restart local v2    # "data":[B
    .restart local v3    # "signedData":[B
    .restart local v4    # "verified":Z
    .restart local v5    # "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    .restart local p0    # "secmsg":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .restart local p1    # "verificationKey":Ljava/security/Key;
    .restart local p2    # "sigType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .restart local p3    # "encType":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .restart local p4    # "associatedData":[B
    .restart local p5    # "suppressAssociatedData":Z
    :catch_0
    move-exception v6

    .line 262
    .local v6, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const/4 v4, 0x0

    .line 265
    .end local v6    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_9
    if-eqz v4, :cond_a

    .line 266
    return-object v5

    .line 268
    :cond_a
    new-instance v6, Ljava/security/SignatureException;

    invoke-direct {v6, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 236
    .end local v0    # "signature":[B
    .end local v2    # "data":[B
    .end local v3    # "signedData":[B
    .end local v4    # "verified":Z
    .end local v5    # "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
    :cond_b
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
