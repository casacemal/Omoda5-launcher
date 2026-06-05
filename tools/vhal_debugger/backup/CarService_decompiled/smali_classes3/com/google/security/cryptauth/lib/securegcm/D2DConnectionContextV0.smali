.class public Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;
.super Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
.source "D2DConnectionContextV0.java"


# static fields
.field public static final PROTOCOL_VERSION:I


# instance fields
.field private sequenceNumber:I

.field private final sharedKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Ljavax/crypto/SecretKey;I)V
    .locals 1
    .param p1, "sharedKey"    # Ljavax/crypto/SecretKey;
    .param p2, "initialSequenceNumber"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;-><init>(I)V

    .line 43
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sharedKey:Ljavax/crypto/SecretKey;

    .line 44
    iput p2, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    .line 45
    return-void
.end method


# virtual methods
.method getDecodeKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sharedKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method getEncodeKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sharedKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method getSequenceNumberForDecoding()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    return v0
.end method

.method getSequenceNumberForEncoding()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    return v0
.end method

.method public getSessionUnique()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sharedKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 55
    .local v0, "md":Ljava/security/MessageDigest;
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->SALT:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sharedKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1

    .line 50
    .end local v0    # "md":Ljava/security/MessageDigest;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not been correctly initialized; shared key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected incrementSequenceNumberForDecoding()V
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    .line 67
    return-void
.end method

.method protected incrementSequenceNumberForEncoding()V
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    .line 62
    return-void
.end method

.method public saveSession()[B
    .locals 3

    .line 99
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sequenceNumber:I

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->signedIntToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV0;->sharedKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    const/4 v2, 0x0

    return-object v2
.end method
