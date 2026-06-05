.class public final enum Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
.super Ljava/lang/Enum;
.source "Ukey2Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandshakeCipher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

.field public static final enum P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;


# instance fields
.field private final value:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 184
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    const/4 v2, 0x0

    const-string v3, "P256_SHA512"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)V
    .locals 1
    .param p3, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    sget-object p1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    if-ne p3, p1, :cond_0

    .line 193
    iput-object p3, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->value:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    .line 197
    return-void

    .line 195
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown cipher value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;
    .locals 1

    .line 183
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    return-object v0
.end method


# virtual methods
.method public getValue()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->value:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    return-object v0
.end method
