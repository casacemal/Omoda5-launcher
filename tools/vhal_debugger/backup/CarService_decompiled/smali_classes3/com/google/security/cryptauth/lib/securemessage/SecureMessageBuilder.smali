.class public Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
.super Ljava/lang/Object;
.source "SecureMessageBuilder.java"


# instance fields
.field private associatedData:[B

.field private decryptionKeyId:Lcom/google/protobuf/ByteString;

.field private publicMetadata:Lcom/google/protobuf/ByteString;

.field private rng:Ljava/security/SecureRandom;

.field private verificationKeyId:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->reset()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;

    .line 50
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->rng:Ljava/security/SecureRandom;

    .line 51
    return-void
.end method

.method private buildHeader(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 2
    .param p1, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p2, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .param p3, "iv"    # [B

    .line 233
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->getSigScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->setSignatureScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->getEncScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->setEncryptionScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    move-result-object v0

    .line 236
    .local v0, "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->verificationKeyId:Lcom/google/protobuf/ByteString;

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->setVerificationKeyId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->decryptionKeyId:Lcom/google/protobuf/ByteString;

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->setDecryptionKeyId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->publicMetadata:Lcom/google/protobuf/ByteString;

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->setPublicMetadata(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->associatedData:[B

    if-eqz v1, :cond_3

    .line 246
    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->setAssociatedDataLength(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 248
    :cond_3
    if-eqz p3, :cond_4

    .line 249
    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->setIv(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 251
    :cond_4
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v1
.end method

.method private createSignedResult(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 3
    .param p1, "signingKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p3, "headerAndBody"    # [B
    .param p4, "associatedData"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->rng:Ljava/security/SecureRandom;

    .line 271
    invoke-static {p3, p4}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->concat([B[B)[B

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->sign(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Ljava/security/SecureRandom;[B)[B

    move-result-object v0

    .line 272
    .local v0, "sig":[B
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;

    move-result-object v1

    .line 273
    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->setHeaderAndBody(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;

    move-result-object v1

    .line 274
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    .line 272
    return-object v1
.end method

.method private serializeHeaderAndBody([B[B)[B
    .locals 2
    .param p1, "header"    # [B
    .param p2, "body"    # [B

    .line 260
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;

    move-result-object v0

    .line 261
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->setHeader(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;

    move-result-object v0

    .line 262
    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    .line 264
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->toByteArray()[B

    move-result-object v0

    .line 260
    return-object v0
.end method

.method static taggedPlaintextRequired(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;)Z
    .locals 2
    .param p0, "signingKey"    # Ljava/security/Key;
    .param p1, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p2, "encryptionKey"    # Ljava/security/Key;

    .line 225
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->isPublicKeyScheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 225
    :goto_1
    return v0
.end method


# virtual methods
.method public buildSignCryptedMessage(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 7
    .param p1, "signingKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p3, "encryptionKey"    # Ljava/security/Key;
    .param p4, "encType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .param p5, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 178
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 185
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    if-eq p4, v0, :cond_3

    .line 188
    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->isPublicKeyScheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->verificationKeyId:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set a verificationKeyId when using public key signature with encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->rng:Ljava/security/SecureRandom;

    invoke-static {p4, v0}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->generateIv(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;Ljava/security/SecureRandom;)[B

    move-result-object v0

    .line 194
    .local v0, "iv":[B
    invoke-direct {p0, p2, p4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->buildHeader(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->toByteArray()[B

    move-result-object v1

    .line 200
    .local v1, "header":[B
    invoke-static {p1, p2, p3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->taggedPlaintextRequired(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->associatedData:[B

    .line 204
    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->concat([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->digest([B)[B

    move-result-object v2

    .line 202
    invoke-static {v2, p5}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->concat([B[B)[B

    move-result-object v2

    .line 206
    .local v2, "taggedBody":[B
    const/4 v3, 0x0

    .local v3, "associatedDataToBeSigned":[B
    goto :goto_1

    .line 208
    .end local v2    # "taggedBody":[B
    .end local v3    # "associatedDataToBeSigned":[B
    :cond_2
    move-object v2, p5

    .line 209
    .restart local v2    # "taggedBody":[B
    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->associatedData:[B

    .line 213
    .restart local v3    # "associatedDataToBeSigned":[B
    :goto_1
    iget-object v4, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->rng:Ljava/security/SecureRandom;

    invoke-static {p3, p4, v4, v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->encrypt(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;Ljava/security/SecureRandom;[B[B)[B

    move-result-object v4

    .line 215
    .local v4, "encryptedBody":[B
    invoke-direct {p0, v1, v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->serializeHeaderAndBody([B[B)[B

    move-result-object v5

    .line 216
    .local v5, "headerAndBody":[B
    invoke-direct {p0, p1, p2, v5, v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->createSignedResult(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v6

    return-object v6

    .line 186
    .end local v0    # "iv":[B
    .end local v1    # "header":[B
    .end local v2    # "taggedBody":[B
    .end local v3    # "associatedDataToBeSigned":[B
    .end local v4    # "encryptedBody":[B
    .end local v5    # "headerAndBody":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not supported for encrypted messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public buildSignedCleartextMessage(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
    .locals 2
    .param p1, "signingKey"    # Ljava/security/Key;
    .param p2, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .param p3, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 141
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->decryptionKeyId:Lcom/google/protobuf/ByteString;

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p2, v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->buildHeader(Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->toByteArray()[B

    move-result-object v0

    .line 148
    invoke-direct {p0, v0, p3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->serializeHeaderAndBody([B[B)[B

    move-result-object v0

    .line 150
    .local v0, "headerAndBody":[B
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->associatedData:[B

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->createSignedResult(Ljava/security/Key;Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;[B[B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v1

    return-object v1

    .line 145
    .end local v0    # "headerAndBody":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set decryptionKeyId for a cleartext message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reset()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    .locals 1

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->publicMetadata:Lcom/google/protobuf/ByteString;

    .line 58
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->verificationKeyId:Lcom/google/protobuf/ByteString;

    .line 59
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->decryptionKeyId:Lcom/google/protobuf/ByteString;

    .line 60
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->associatedData:[B

    .line 61
    return-object p0
.end method

.method public setAssociatedData([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    .locals 0
    .param p1, "associatedData"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->associatedData:[B

    .line 119
    return-object p0
.end method

.method public setDecryptionKeyId([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    .locals 1
    .param p1, "decryptionKeyId"    # [B

    .line 99
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->decryptionKeyId:Lcom/google/protobuf/ByteString;

    .line 100
    return-object p0
.end method

.method public setPublicMetadata([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    .locals 1
    .param p1, "publicMetadata"    # [B

    .line 73
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->publicMetadata:Lcom/google/protobuf/ByteString;

    .line 74
    return-object p0
.end method

.method setRng(Ljava/security/SecureRandom;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    .locals 0
    .param p1, "rng"    # Ljava/security/SecureRandom;

    .line 124
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->rng:Ljava/security/SecureRandom;

    .line 125
    return-object p0
.end method

.method public setVerificationKeyId([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;
    .locals 1
    .param p1, "verificationKeyId"    # [B

    .line 88
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageBuilder;->verificationKeyId:Lcom/google/protobuf/ByteString;

    .line 89
    return-object p0
.end method
