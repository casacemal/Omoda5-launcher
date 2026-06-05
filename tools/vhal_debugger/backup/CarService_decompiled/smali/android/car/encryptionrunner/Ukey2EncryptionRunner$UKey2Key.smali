.class Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;
.super Ljava/lang/Object;
.source "Ukey2EncryptionRunner.java"

# interfaces
.implements Landroid/car/encryptionrunner/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/encryptionrunner/Ukey2EncryptionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UKey2Key"
.end annotation


# instance fields
.field private final mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;


# direct methods
.method constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;)V
    .locals 0
    .param p1, "connectionContext"    # Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    .line 145
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->saveSession()[B

    move-result-object v0

    return-object v0
.end method

.method public decryptData([B)[B
    .locals 1
    .param p1, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->decodeMessageFromPeer([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptData([B)[B
    .locals 1
    .param p1, "data"    # [B

    .line 154
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->encodeMessageToPeer([B)[B

    move-result-object v0

    return-object v0
.end method
