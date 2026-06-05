.class Landroid/car/encryptionrunner/HandshakeMessage$Builder;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/encryptionrunner/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field mHandshakeState:I

.field mKey:Landroid/car/encryptionrunner/Key;

.field mNextMessage:[B

.field mVerificationCode:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Landroid/car/encryptionrunner/HandshakeMessage;
    .locals 8

    .line 150
    iget v0, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mHandshakeState:I

    if-eqz v0, :cond_2

    .line 153
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mVerificationCode:Ljava/lang/String;

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "if state is verification needed, must have verification code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    :goto_0
    new-instance v0, Landroid/car/encryptionrunner/HandshakeMessage;

    iget v3, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mHandshakeState:I

    iget-object v4, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mKey:Landroid/car/encryptionrunner/Key;

    iget-object v5, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mNextMessage:[B

    iget-object v6, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mVerificationCode:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/car/encryptionrunner/HandshakeMessage;-><init>(ILandroid/car/encryptionrunner/Key;[BLjava/lang/String;Landroid/car/encryptionrunner/HandshakeMessage$1;)V

    return-object v0

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must set handshake state before calling build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHandshakeState(I)Landroid/car/encryptionrunner/HandshakeMessage$Builder;
    .locals 0
    .param p1, "handshakeState"    # I

    .line 130
    iput p1, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mHandshakeState:I

    .line 131
    return-object p0
.end method

.method setKey(Landroid/car/encryptionrunner/Key;)Landroid/car/encryptionrunner/HandshakeMessage$Builder;
    .locals 0
    .param p1, "key"    # Landroid/car/encryptionrunner/Key;

    .line 135
    iput-object p1, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mKey:Landroid/car/encryptionrunner/Key;

    .line 136
    return-object p0
.end method

.method setNextMessage([B)Landroid/car/encryptionrunner/HandshakeMessage$Builder;
    .locals 1
    .param p1, "nextMessage"    # [B

    .line 140
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mNextMessage:[B

    .line 141
    return-object p0
.end method

.method setVerificationCode(Ljava/lang/String;)Landroid/car/encryptionrunner/HandshakeMessage$Builder;
    .locals 0
    .param p1, "verificationCode"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;->mVerificationCode:Ljava/lang/String;

    .line 146
    return-object p0
.end method
