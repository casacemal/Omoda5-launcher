.class public Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;
.super Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
.source "D2DConnectionContextV1.java"


# static fields
.field public static final PROTOCOL_VERSION:I = 0x1


# instance fields
.field private final decodeKey:Ljavax/crypto/SecretKey;

.field private decodeSequenceNumber:I

.field private final encodeKey:Ljavax/crypto/SecretKey;

.field private encodeSequenceNumber:I


# direct methods
.method constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;II)V
    .locals 1
    .param p1, "encodeKey"    # Ljavax/crypto/SecretKey;
    .param p2, "decodeKey"    # Ljavax/crypto/SecretKey;
    .param p3, "initialEncodeSequenceNumber"    # I
    .param p4, "initialDecodeSequenceNumber"    # I

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;-><init>(I)V

    .line 52
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeKey:Ljavax/crypto/SecretKey;

    .line 53
    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeKey:Ljavax/crypto/SecretKey;

    .line 54
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeSequenceNumber:I

    .line 55
    iput p4, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeSequenceNumber:I

    .line 56
    return-void
.end method


# virtual methods
.method getDecodeKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method getEncodeKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method getSequenceNumberForDecoding()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeSequenceNumber:I

    return v0
.end method

.method getSequenceNumberForEncoding()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeSequenceNumber:I

    return v0
.end method

.method public getSessionUnique()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeKey:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_2

    .line 67
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 68
    .local v0, "encodeKeyBytes":[B
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 69
    .local v1, "decodeKeyBytes":[B
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    .line 70
    .local v2, "encodeKeyHash":I
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    .line 71
    .local v3, "decodeKeyHash":I
    if-ge v2, v3, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 72
    .local v4, "firstKeyBytes":[B
    :goto_0
    if-ne v4, v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 74
    .local v5, "secondKeyBytes":[B
    :goto_1
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 75
    .local v6, "md":Ljava/security/MessageDigest;
    sget-object v7, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->SALT:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 78
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    return-object v7

    .line 61
    .end local v0    # "encodeKeyBytes":[B
    .end local v1    # "decodeKeyBytes":[B
    .end local v2    # "encodeKeyHash":I
    .end local v3    # "decodeKeyHash":I
    .end local v4    # "firstKeyBytes":[B
    .end local v5    # "secondKeyBytes":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not been correctly initialized; encode key or decode key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected incrementSequenceNumberForDecoding()V
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeSequenceNumber:I

    .line 89
    return-void
.end method

.method protected incrementSequenceNumberForEncoding()V
    .locals 1

    .line 83
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeSequenceNumber:I

    .line 84
    return-void
.end method

.method public saveSession()[B
    .locals 3

    .line 121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeSequenceNumber:I

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->signedIntToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 131
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeSequenceNumber:I

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->signedIntToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 138
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    const/4 v2, 0x0

    return-object v2
.end method
