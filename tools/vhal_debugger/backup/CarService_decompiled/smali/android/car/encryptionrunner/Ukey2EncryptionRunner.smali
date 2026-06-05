.class public Landroid/car/encryptionrunner/Ukey2EncryptionRunner;
.super Ljava/lang/Object;
.source "Ukey2EncryptionRunner.java"

# interfaces
.implements Landroid/car/encryptionrunner/EncryptionRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;
    }
.end annotation


# static fields
.field private static final AUTH_STRING_LENGTH:I = 0x6

.field private static final CIPHER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;


# instance fields
.field private mRunnerIsInvalid:Z

.field private mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    sput-object v0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->CIPHER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkInitialized()V
    .locals 2

    .line 214
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    if-eqz v0, :cond_1

    .line 217
    iget-boolean v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mRunnerIsInvalid:Z

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "runner has been invalidated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "runner not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIsUkey2Key(Landroid/car/encryptionrunner/Key;)Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;
    .locals 2
    .param p1, "key"    # Landroid/car/encryptionrunner/Key;

    .line 207
    instance-of v0, p1, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;

    if-eqz v0, :cond_0

    .line 210
    move-object v0, p1

    check-cast v0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRunnerIsNew()V
    .locals 2

    .line 81
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This runner is already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getHandshakeState()I
    .locals 2

    .line 179
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->checkInitialized()V

    .line 180
    sget-object v0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$State:[I

    iget-object v1, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getHandshakeState()Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected handshake state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 187
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 185
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 183
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public continueHandshake([B)Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 4
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->checkInitialized()V

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getHandshakeState()Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    move-result-object v0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    if-ne v0, v1, :cond_2

    .line 95
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->parseHandshakeMessage([B)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "nextMessage":[B
    iget-object v1, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getHandshakeState()Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    if-ne v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getNextHandshakeMessage()[B

    move-result-object v1

    move-object v0, v1

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 106
    .local v1, "verificationCode":Ljava/lang/String;
    iget-object v2, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getHandshakeState()Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    move-result-object v2

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    if-ne v2, v3, :cond_1

    .line 107
    iget-object v2, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    const/4 v3, 0x6

    .line 108
    invoke-virtual {v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getVerificationString(I)[B

    move-result-object v2

    .line 107
    invoke-virtual {p0, v2}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->generateReadablePairingCode([B)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 110
    :cond_1
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v2

    .line 111
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->getHandshakeState()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setNextMessage([B)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setVerificationCode(Ljava/lang/String;)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v2

    .line 110
    return-object v2

    .line 92
    .end local v0    # "nextMessage":[B
    .end local v1    # "verificationCode":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake is not in progress, state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    .line 93
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getHandshakeState()Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/car/encryptionrunner/Ukey2EncryptionRunner;
    .end local p1    # "response":[B
    throw v0
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .restart local p0    # "this":Landroid/car/encryptionrunner/Ukey2EncryptionRunner;
    .restart local p1    # "response":[B
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/car/encryptionrunner/HandshakeException;

    invoke-direct {v1, v0}, Landroid/car/encryptionrunner/HandshakeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method generateReadablePairingCode([B)Ljava/lang/String;
    .locals 6
    .param p1, "verificationCode"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "outString":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 131
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    .line 132
    .local v4, "unsignedInt":I
    rem-int/lit8 v5, v4, 0xa

    .line 133
    .local v5, "digit":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .end local v3    # "b":B
    .end local v4    # "unsignedInt":I
    .end local v5    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initHandshake()Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 3

    .line 44
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->checkRunnerIsNew()V

    .line 46
    :try_start_0
    sget-object v0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->CIPHER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->forInitiator(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    move-result-object v0

    iput-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    .line 47
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 48
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->getHandshakeState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    .line 49
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getNextHandshakeMessage()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setNextMessage([B)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
    const-string v1, "EncryptionRunner"

    const-string v2, "unexpected exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public invalidPin()V
    .locals 1

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mRunnerIsInvalid:Z

    .line 204
    return-void
.end method

.method public keyOf([B)Landroid/car/encryptionrunner/Key;
    .locals 2
    .param p1, "serialized"    # [B

    .line 198
    new-instance v0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;

    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;->fromSavedSession([B)Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;)V

    return-object v0
.end method

.method public respondToInitRequest([B)Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 2
    .param p1, "initializationRequest"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->checkRunnerIsNew()V

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->CIPHER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->forResponder(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    move-result-object v0

    iput-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    .line 68
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->parseHandshakeMessage([B)V

    .line 69
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 70
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->getHandshakeState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    .line 71
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->getNextHandshakeMessage()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setNextMessage([B)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    .line 69
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot reuse encryption runners, this one is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/car/encryptionrunner/Ukey2EncryptionRunner;
    .end local p1    # "initializationRequest":[B
    throw v0
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .restart local p0    # "this":Landroid/car/encryptionrunner/Ukey2EncryptionRunner;
    .restart local p1    # "initializationRequest":[B
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/car/encryptionrunner/HandshakeException;

    invoke-direct {v1, v0}, Landroid/car/encryptionrunner/HandshakeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public verifyPin()Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->checkInitialized()V

    .line 166
    iget-object v0, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->verifyHandshake()V

    .line 168
    :try_start_0
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->getHandshakeState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    new-instance v1, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;

    iget-object v2, p0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;->mUkey2client:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    .line 170
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner$UKey2Key;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;)V

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setKey(Landroid/car/encryptionrunner/Key;)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
    new-instance v1, Landroid/car/encryptionrunner/HandshakeException;

    invoke-direct {v1, v0}, Landroid/car/encryptionrunner/HandshakeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
