.class public Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
.super Ljava/lang/Object;
.source "Ukey2Handshake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;,
        Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;,
        Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;,
        Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;,
        Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;
    }
.end annotation


# static fields
.field private static final NEXT_PROTOCOL:Ljava/lang/String; = "AES_256_CBC-HMAC_SHA256"

.field private static final NONCE_LENGTH_IN_BYTES:I = 0x20

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final VERSION:I = 0x1


# instance fields
.field private derivedSecretKey:Ljavax/crypto/SecretKey;

.field private final handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

.field private final handshakeRole:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

.field private handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field private final ourKeyPair:Ljava/security/KeyPair;

.field private rawMessage1:[B

.field private rawMessage2:[B

.field private final rawMessage3Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;",
            "[B>;"
        }
    .end annotation
.end field

.field private theirCommitment:[B

.field private theirPublicKey:Ljava/security/PublicKey;


# direct methods
.method private constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)V
    .locals 2
    .param p1, "state"    # Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;
    .param p2, "cipher"    # Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage3Map:Ljava/util/HashMap;

    .line 288
    if-nez p2, :cond_0

    .line 289
    const-string v0, "Invalid handshake cipher"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 291
    :cond_0
    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    .line 293
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 301
    const-string v0, "Invalid handshake state"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeRole:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    goto :goto_0

    .line 298
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->SERVER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeRole:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    .line 299
    goto :goto_0

    .line 295
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->CLIENT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeRole:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    .line 296
    nop

    .line 304
    :goto_0
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 306
    invoke-direct {p0, p2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->genKeyPair(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 307
    return-void
.end method

.method public static forInitiator(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
    .locals 2
    .param p0, "cipher"    # Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-direct {v0, v1, p0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;-><init>(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)V

    return-object v0
.end method

.method public static forResponder(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
    .locals 2
    .param p0, "cipher"    # Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-direct {v0, v1, p0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;-><init>(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)V

    return-object v0
.end method

.method private genKeyPair(Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;)Ljava/security/KeyPair;
    .locals 2
    .param p1, "cipher"    # Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 588
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$HandshakeCipher:[I

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown cipher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x0

    return-object v0

    .line 590
    :cond_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->generateEcP256KeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method private generateP256SHA512ClientFinished(Ljava/security/KeyPair;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 6
    .param p1, "p256KeyPair"    # Ljava/security/KeyPair;

    .line 910
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodePublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->toByteArray()[B

    move-result-object v0

    .line 912
    .local v0, "encodedKey":[B
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;

    move-result-object v1

    .line 913
    .local v1, "clientFinished":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->setPublicKey(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;

    .line 915
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage3Map:Ljava/util/HashMap;

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_FINISH:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 917
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->toByteArray()[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->makeUkey2Message(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;[B)[B

    move-result-object v4

    .line 915
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v2
.end method

.method private generateP256SHA512Commitment()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage3Map:Ljava/util/HashMap;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->ourKeyPair:Ljava/security/KeyPair;

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->generateP256SHA512ClientFinished(Ljava/security/KeyPair;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    .line 898
    :cond_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    move-result-object v0

    .line 899
    .local v0, "cipherCommitment":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->setHandshakeCipher(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 900
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage3Map:Ljava/util/HashMap;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    .line 901
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->sha512([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 900
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->setCommitment(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 903
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    return-object v1
.end method

.method private static generateRandomNonce()[B
    .locals 2

    .line 989
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 990
    .local v0, "rng":Ljava/security/SecureRandom;
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 991
    .local v1, "randomNonce":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 992
    return-object v1
.end method

.method private makeAlertMessage(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 2
    .param p1, "alertType"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .param p2, "loggableAdditionalData"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 958
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown alert type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :pswitch_0
    nop

    .line 975
    :goto_0
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;

    move-result-object v0

    .line 976
    .local v0, "alert":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->setType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;

    .line 978
    if-eqz p2, :cond_0

    .line 979
    invoke-virtual {v0, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;

    .line 982
    :cond_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeClientInitMessage()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 556
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    move-result-object v0

    .line 557
    .local v0, "clientInit":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    .line 558
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->generateRandomNonce()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->setRandom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    .line 559
    const-string v1, "AES_256_CBC-HMAC_SHA256"

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->setNextProtocol(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    .line 562
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->generateP256SHA512Commitment()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->addCipherCommitments(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;

    .line 564
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private makeServerInitMessage()[B
    .locals 2

    .line 571
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;

    move-result-object v0

    .line 572
    .local v0, "serverInit":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;

    .line 573
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->generateRandomNonce()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->setRandom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;

    .line 574
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->getValue()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->setHandshakeCipher(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;

    .line 575
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 576
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->encodePublicKey(Ljava/security/PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->setPublicKey(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;

    .line 578
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private makeUkey2Message(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;[B)[B
    .locals 3
    .param p1, "messageType"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    .param p2, "messageData"    # [B

    .line 927
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;

    move-result-object v0

    .line 929
    .local v0, "message":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Message$Type:[I

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :cond_0
    nop

    .line 939
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->setMessageType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;

    .line 942
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    if-eq p1, v1, :cond_3

    .line 943
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 944
    :cond_1
    const-string v1, "Cannot send empty message data for non-alert messages"

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 946
    :cond_2
    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->setMessageData(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;

    .line 949
    :cond_3
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private parseMessage1([B)V
    .locals 7
    .param p1, "handshakeMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, "message":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 612
    goto :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse message 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 615
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    if-eq v1, v2, :cond_1

    .line 616
    :cond_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v2, "Expected, but did not find ClientInit message type"

    invoke-direct {p0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 623
    :cond_1
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 624
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v2, "Expected message data, but didn\'t find it"

    invoke-direct {p0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 627
    :cond_2
    const/4 v1, 0x0

    .line 629
    .local v1, "clientInit":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
    :try_start_1
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 633
    goto :goto_1

    .line 630
    :catch_1
    move-exception v2

    .line 631
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v4, "Can\'t parse message data into ClientInit"

    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 636
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_1
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasVersion()Z

    move-result v2

    if-nez v2, :cond_3

    .line 637
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ClientInit missing version"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 639
    :cond_3
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 640
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ClientInit version mismatch"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 645
    :cond_4
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasRandom()Z

    move-result v2

    if-nez v2, :cond_5

    .line 646
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ClientInit missing random"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 648
    :cond_5
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getRandom()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_6

    .line 649
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ClientInit has incorrect nonce length"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 657
    :cond_6
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getCipherCommitmentsList()Ljava/util/List;

    move-result-object v2

    .line 658
    .local v2, "commitments":Ljava/util/List;, "Ljava/util/List<Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 659
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v4, "ClientInit is missing cipher commitments"

    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 662
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 663
    .local v4, "commitment":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->hasHandshakeCipher()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 664
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->hasCommitment()Z

    move-result v5

    if-nez v5, :cond_9

    .line 665
    :cond_8
    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v6, "ClientInit has improperly formatted cipher commitment"

    invoke-direct {p0, v5, v6}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 671
    :cond_9
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->getHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v5

    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->getValue()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v6

    if-ne v5, v6, :cond_a

    .line 672
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->getCommitment()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->theirCommitment:[B

    .line 674
    .end local v4    # "commitment":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;
    :cond_a
    goto :goto_2

    .line 675
    :cond_b
    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->theirCommitment:[B

    if-nez v3, :cond_c

    .line 676
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v4, "No acceptable commitments found"

    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 682
    :cond_c
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasNextProtocol()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getNextProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AES_256_CBC-HMAC_SHA256"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 683
    :cond_d
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_NEXT_PROTOCOL:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v4, "Incorrect next protocol"

    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 687
    :cond_e
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage1:[B

    .line 688
    return-void
.end method

.method private parseMessage2([B)V
    .locals 9
    .param p1, "handshakeMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, "message":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 703
    goto :goto_0

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse message 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 706
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v2, "Expected, but did not find message type"

    invoke-direct {p0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 710
    :cond_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    if-ne v1, v2, :cond_1

    .line 711
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 712
    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeMessageFromAlertMessage(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)V

    .line 714
    :cond_1
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    if-eq v1, v2, :cond_2

    .line 715
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v2, "Expected, but did not find SERVER_INIT message type"

    invoke-direct {p0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 722
    :cond_2
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageData()Z

    move-result v1

    if-nez v1, :cond_3

    .line 724
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v2, "Expected message data, but didn\'t find it"

    invoke-direct {p0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 727
    :cond_3
    const/4 v1, 0x0

    .line 729
    .local v1, "serverInit":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;
    :try_start_1
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 733
    goto :goto_1

    .line 730
    :catch_1
    move-exception v2

    .line 731
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v4, "Can\'t parse message data into ServerInit"

    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 736
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_1
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasVersion()Z

    move-result v2

    if-nez v2, :cond_4

    .line 737
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ServerInit missing version"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 739
    :cond_4
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 740
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ServerInit version mismatch"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 745
    :cond_5
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasRandom()Z

    move-result v2

    if-nez v2, :cond_6

    .line 746
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ServerInit missing random"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 748
    :cond_6
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getRandom()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_7

    .line 749
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "ServerInit has incorrect nonce length"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 754
    :cond_7
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasHandshakeCipher()Z

    move-result v2

    if-nez v2, :cond_8

    .line 755
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v3, "No handshake cipher found"

    invoke-direct {p0, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 757
    :cond_8
    const/4 v2, 0x0

    .line 758
    .local v2, "serverCipher":Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->values()[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_a

    aget-object v6, v3, v5

    .line 759
    .local v6, "cipher":Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->getValue()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v8

    if-ne v7, v8, :cond_9

    .line 760
    move-object v2, v6

    .line 761
    goto :goto_3

    .line 758
    .end local v6    # "cipher":Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 764
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    if-eq v2, v3, :cond_c

    .line 765
    :cond_b
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v4, "No acceptable handshake cipher found"

    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 771
    :cond_c
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasPublicKey()Z

    move-result v3

    if-nez v3, :cond_d

    .line 772
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_PUBLIC_KEY:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v4, "No public key found in ServerInit"

    invoke-direct {p0, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 774
    :cond_d
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->parseP256PublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->theirPublicKey:Ljava/security/PublicKey;

    .line 777
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage2:[B

    .line 778
    return-void
.end method

.method private parseMessage3([B)V
    .locals 3
    .param p1, "handshakeMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, "message":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 791
    goto :goto_0

    .line 789
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "Can\'t parse message 3"

    invoke-direct {p0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 794
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 797
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    if-ne v1, v2, :cond_0

    .line 798
    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeMessageFromAlertMessage(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)V

    .line 800
    :cond_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v1

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_FINISH:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    if-eq v1, v2, :cond_1

    .line 801
    const-string v1, "Expected, but did not find CLIENT_FINISH message type"

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    .line 806
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->verifyCommitment([B)V

    .line 810
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    const-string v1, "Expected message data, but didn\'t find it"

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    .line 813
    :cond_2
    const/4 v1, 0x0

    .line 815
    .local v1, "clientFinished":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    :try_start_1
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 818
    goto :goto_1

    .line 816
    :catch_1
    move-exception v2

    .line 817
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 822
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_1
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->hasPublicKey()Z

    move-result v2

    if-nez v2, :cond_3

    .line 823
    const-string v2, "No public key found in ClientFinished"

    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    .line 826
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->parseP256PublicKey([B)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->theirPublicKey:Ljava/security/PublicKey;
    :try_end_2
    .catch Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException; {:try_start_2 .. :try_end_2} :catch_2

    .line 830
    goto :goto_2

    .line 827
    :catch_2
    move-exception v2

    .line 829
    .local v2, "e":Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;
    invoke-direct {p0, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 831
    .end local v2    # "e":Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;
    :goto_2
    return-void

    .line 795
    .end local v1    # "clientFinished":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    :cond_4
    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string v2, "Expected, but did not find message type"

    invoke-direct {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseP256PublicKey([B)Ljava/security/PublicKey;
    .locals 4
    .param p1, "encodedPublicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 881
    :try_start_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;->parsePublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_PUBLIC_KEY:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-direct {p0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V

    .line 885
    const/4 v1, 0x0

    return-object v1
.end method

.method private sha512([B)[B
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 1001
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1002
    .local v0, "sha512":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1003
    .end local v0    # "sha512":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "No security provider initialized yet?"

    invoke-direct {p0, v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1005
    const/4 v1, 0x0

    return-object v1
.end method

.method private throwAlertException(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)V
    .locals 2
    .param p1, "alertType"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .param p2, "alertLogStatement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 1013
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 1014
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;

    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->makeAlertMessage(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;-><init>(Ljava/lang/String;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;)V

    throw v0
.end method

.method private throwHandshakeException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 1023
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 1024
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    invoke-direct {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private throwHandshakeException(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 1018
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 1019
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    invoke-direct {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwHandshakeException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 1028
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 1029
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    invoke-direct {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private throwHandshakeMessageFromAlertMessage(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)V
    .locals 3
    .param p1, "message"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 853
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    const/4 v0, 0x0

    .line 856
    .local v0, "alert":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 859
    goto :goto_0

    .line 857
    :catch_0
    move-exception v1

    .line 858
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "Cannot parse alert message"

    invoke-direct {p0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 861
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasType()Z

    move-result v1

    const-string v2, "Received Alert message. Type: "

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Error Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 862
    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    goto :goto_1

    .line 867
    :cond_0
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    .line 872
    .end local v0    # "alert":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    :cond_1
    :goto_1
    const-string v0, "Received empty Alert Message"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method private throwIllegalArgumentException(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 1038
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 1039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIllegalStateException(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 1033
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 1034
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyCommitment([B)V
    .locals 3
    .param p1, "handshakeMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "actualClientFinishHash":[B
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$HandshakeCipher:[I

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 841
    const-string v1, "Unexpected handshakeCipher"

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->sha512([B)[B

    move-result-object v0

    .line 838
    nop

    .line 846
    :goto_0
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->theirCommitment:[B

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 847
    const-string v1, "Commitment does not match"

    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/String;)V

    .line 849
    :cond_1
    return-void
.end method


# virtual methods
.method public getHandshakeState()Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;
    .locals 2

    .line 444
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 471
    const-string v0, "Unknown state"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    return-object v0

    .line 467
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0

    .line 464
    :pswitch_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0

    .line 461
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0

    .line 458
    :pswitch_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0

    .line 455
    :pswitch_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0

    .line 452
    :pswitch_5
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNextHandshakeMessage()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get next message in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage3Map:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client state is CLIENT_AFTER_SERVER_INIT, and cipher is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but no corresponding raw client finished message has been generated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 335
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 336
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage3Map:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeCipher:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 323
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->makeServerInitMessage()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->makeUkey2Message(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage2:[B

    .line 324
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_WAITING_FOR_CLIENT_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 325
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage2:[B

    return-object v0

    .line 318
    :cond_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->makeClientInitMessage()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->makeUkey2Message(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage1:[B

    .line 319
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_WAITING_FOR_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 320
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage1:[B

    return-object v0
.end method

.method public getVerificationString(I)[B
    .locals 5
    .param p1, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 353
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 354
    :cond_0
    const-string v0, "Minimum length is 1 byte, max is 32 bytes"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    if-eq v0, v1, :cond_2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 362
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->ourKeyPair:Ljava/security/KeyPair;

    .line 363
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->theirPublicKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/EnrollmentCryptoOps;->doKeyAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->derivedSecretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 369
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 371
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage1:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 372
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage2:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    goto :goto_1

    .line 373
    :catch_1
    move-exception v1

    .line 375
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 377
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 379
    .local v1, "info":[B
    const/4 v2, 0x0

    .line 382
    .local v2, "salt":[B
    :try_start_2
    const-string v3, "UKEY2 v1 auth"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 386
    goto :goto_2

    .line 383
    :catch_2
    move-exception v3

    .line 385
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-direct {p0, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 388
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/4 v3, 0x0

    .line 390
    .local v3, "authString":[B
    :try_start_3
    iget-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->derivedSecretKey:Ljavax/crypto/SecretKey;

    invoke-static {v4, v2, v1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->hkdf(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v4
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v4

    .line 394
    goto :goto_3

    .line 391
    :catch_3
    move-exception v4

    .line 393
    .local v4, "e":Ljava/security/GeneralSecurityException;
    invoke-direct {p0, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 396
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_3
    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 397
    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    return-object v4
.end method

.method public parseHandshakeMessage([B)V
    .locals 2
    .param p1, "handshakeMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse message in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->parseMessage3([B)V

    .line 432
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 433
    goto :goto_0

    .line 426
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->parseMessage2([B)V

    .line 427
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_AFTER_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 428
    goto :goto_0

    .line 421
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->parseMessage1([B)V

    .line 422
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_AFTER_CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 423
    nop

    .line 438
    :goto_0
    return-void
.end method

.method public toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation

    .line 483
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 498
    const-string v0, "Handshake is not complete; cannot create connection context"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_0
    const-string v0, "Cannot reuse handshake context; is has already been used"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 489
    return-object v2

    .line 495
    :cond_1
    nop

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->derivedSecretKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_2

    .line 502
    const-string v0, "Unexpected state error: derived key is null"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 505
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage1:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 508
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->rawMessage2:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_1

    .line 509
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 513
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 515
    .local v1, "info":[B
    const/4 v2, 0x0

    .line 517
    .local v2, "salt":[B
    :try_start_1
    const-string v3, "UKEY2 v1 next"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 521
    goto :goto_2

    .line 518
    :catch_1
    move-exception v3

    .line 520
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-direct {p0, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 523
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/4 v3, 0x0

    .line 525
    .local v3, "nextProtocolKey":Ljavax/crypto/SecretKey;
    :try_start_2
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->derivedSecretKey:Ljavax/crypto/SecretKey;

    invoke-static {v5, v2, v1}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;->hkdf(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 529
    goto :goto_3

    .line 526
    :catch_2
    move-exception v4

    .line 528
    .local v4, "e":Ljava/security/GeneralSecurityException;
    invoke-direct {p0, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 531
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_3
    const/4 v4, 0x0

    .line 532
    .local v4, "clientKey":Ljavax/crypto/SecretKey;
    const/4 v5, 0x0

    .line 534
    .local v5, "serverKey":Ljavax/crypto/SecretKey;
    :try_start_3
    const-string v6, "client"

    invoke-static {v3, v6}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->deriveNewKeyForPurpose(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    move-object v4, v6

    .line 535
    const-string v6, "server"

    invoke-static {v3, v6}, Lcom/google/security/cryptauth/lib/securegcm/D2DCryptoOps;->deriveNewKeyForPurpose(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .line 539
    goto :goto_4

    .line 536
    :catch_3
    move-exception v6

    .line 538
    .local v6, "e":Ljava/security/GeneralSecurityException;
    invoke-direct {p0, v6}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwHandshakeException(Ljava/lang/Exception;)V

    .line 541
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :goto_4
    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 543
    new-instance v6, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    .line 544
    iget-object v7, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeRole:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    sget-object v8, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->CLIENT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    if-ne v7, v8, :cond_3

    move-object v7, v4

    goto :goto_5

    :cond_3
    move-object v7, v5

    .line 545
    :goto_5
    iget-object v8, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeRole:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    sget-object v9, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->CLIENT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    if-ne v8, v9, :cond_4

    move-object v8, v5

    goto :goto_6

    :cond_4
    move-object v8, v4

    :goto_6
    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v9}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;II)V

    .line 543
    return-object v6

    .line 491
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "info":[B
    .end local v2    # "salt":[B
    .end local v3    # "nextProtocolKey":Ljavax/crypto/SecretKey;
    .end local v4    # "clientKey":Ljavax/crypto/SecretKey;
    .end local v5    # "serverKey":Ljavax/crypto/SecretKey;
    :cond_5
    const-string v0, "Handshake not verified, cannot create context"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 492
    return-object v2

    .line 485
    :cond_6
    const-string v0, "Cannot make context; handshake had error"

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 486
    return-object v2
.end method

.method public verifyHandshake()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    if-eq v0, v1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->throwIllegalStateException(Ljava/lang/String;)V

    .line 409
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;->handshakeState:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 410
    return-void
.end method
