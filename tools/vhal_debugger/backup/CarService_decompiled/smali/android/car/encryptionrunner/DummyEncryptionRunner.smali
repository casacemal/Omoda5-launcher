.class public Landroid/car/encryptionrunner/DummyEncryptionRunner;
.super Ljava/lang/Object;
.source "DummyEncryptionRunner.java"

# interfaces
.implements Landroid/car/encryptionrunner/EncryptionRunner;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;,
        Landroid/car/encryptionrunner/DummyEncryptionRunner$Mode;
    }
.end annotation


# static fields
.field public static final CLIENT_RESPONSE:Ljava/lang/String; = "clientResponse"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INIT:Ljava/lang/String; = "init"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INIT_RESPONSE:Ljava/lang/String; = "initResponse"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY:Ljava/lang/String; = "key"

.field public static final VERIFICATION_CODE:Ljava/lang/String; = "1234"


# instance fields
.field private mMode:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkRunnerIsNew()V
    .locals 2

    .line 83
    iget v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "runner already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public continueHandshake([B)Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 6
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation

    .line 90
    iget v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 93
    iget v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mMode:I

    const-string v2, "unexpected response: "

    const-string v3, "1234"

    const-string v4, "clientResponse"

    const/4 v5, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v5, :cond_1

    .line 95
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iput v5, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 99
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setVerificationCode(Ljava/lang/String;)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    iget v1, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    .line 99
    return-object v0

    .line 96
    :cond_0
    new-instance v0, Landroid/car/encryptionrunner/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/car/encryptionrunner/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "initResponse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iput v5, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 108
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    iget v1, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setNextMessage([B)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v3}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setVerificationCode(Ljava/lang/String;)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    .line 108
    return-object v0

    .line 105
    :cond_3
    new-instance v0, Landroid/car/encryptionrunner/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/car/encryptionrunner/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_4
    new-instance v0, Landroid/car/encryptionrunner/HandshakeException;

    const-string v1, "not waiting for response but got one"

    invoke-direct {v0, v1}, Landroid/car/encryptionrunner/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initHandshake()Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/car/encryptionrunner/DummyEncryptionRunner;->checkRunnerIsNew()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mMode:I

    .line 60
    iput v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 61
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    iget v1, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 63
    const-string v1, "init"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setNextMessage([B)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public invalidPin()V
    .locals 1

    .line 137
    const/4 v0, 0x4

    iput v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 138
    return-void
.end method

.method public keyOf([B)Landroid/car/encryptionrunner/Key;
    .locals 2
    .param p1, "serialized"    # [B

    .line 120
    new-instance v0, Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;-><init>(Landroid/car/encryptionrunner/DummyEncryptionRunner;Landroid/car/encryptionrunner/DummyEncryptionRunner$1;)V

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

    .line 70
    invoke-direct {p0}, Landroid/car/encryptionrunner/DummyEncryptionRunner;->checkRunnerIsNew()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mMode:I

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 76
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 78
    const-string v1, "initResponse"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setNextMessage([B)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    .line 76
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroid/car/encryptionrunner/HandshakeException;

    const-string v1, "Unexpected initialization request"

    invoke-direct {v0, v1}, Landroid/car/encryptionrunner/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPin()Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation

    .line 125
    iget v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v0, 0x3

    iput v0, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 129
    invoke-static {}, Landroid/car/encryptionrunner/HandshakeMessage;->newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    iget v1, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    .line 130
    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    new-instance v1, Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;-><init>(Landroid/car/encryptionrunner/DummyEncryptionRunner;Landroid/car/encryptionrunner/DummyEncryptionRunner$1;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->setKey(Landroid/car/encryptionrunner/Key;)Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->build()Landroid/car/encryptionrunner/HandshakeMessage;

    move-result-object v0

    .line 129
    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asking to verify pin, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
