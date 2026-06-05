.class public Landroid/car/encryptionrunner/HandshakeMessage;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/encryptionrunner/HandshakeMessage$Builder;,
        Landroid/car/encryptionrunner/HandshakeMessage$HandshakeState;
    }
.end annotation


# instance fields
.field private final mHandshakeState:I

.field private final mKey:Landroid/car/encryptionrunner/Key;

.field private final mNextMessage:[B

.field private final mVerificationCode:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILandroid/car/encryptionrunner/Key;[BLjava/lang/String;)V
    .locals 0
    .param p1, "handshakeState"    # I
    .param p2, "key"    # Landroid/car/encryptionrunner/Key;
    .param p3, "nextMessage"    # [B
    .param p4, "verificationCode"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mHandshakeState:I

    .line 86
    iput-object p2, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mKey:Landroid/car/encryptionrunner/Key;

    .line 87
    iput-object p3, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mNextMessage:[B

    .line 88
    iput-object p4, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mVerificationCode:Ljava/lang/String;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(ILandroid/car/encryptionrunner/Key;[BLjava/lang/String;Landroid/car/encryptionrunner/HandshakeMessage$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/car/encryptionrunner/Key;
    .param p3, "x2"    # [B
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/car/encryptionrunner/HandshakeMessage$1;

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/encryptionrunner/HandshakeMessage;-><init>(ILandroid/car/encryptionrunner/Key;[BLjava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Landroid/car/encryptionrunner/HandshakeMessage$Builder;
    .locals 1

    .line 74
    new-instance v0, Landroid/car/encryptionrunner/HandshakeMessage$Builder;

    invoke-direct {v0}, Landroid/car/encryptionrunner/HandshakeMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getHandshakeState()I
    .locals 1

    .line 104
    iget v0, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mHandshakeState:I

    return v0
.end method

.method public getKey()Landroid/car/encryptionrunner/Key;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mKey:Landroid/car/encryptionrunner/Key;

    return-object v0
.end method

.method public getNextMessage()[B
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mNextMessage:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public getVerificationCode()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/car/encryptionrunner/HandshakeMessage;->mVerificationCode:Ljava/lang/String;

    return-object v0
.end method
