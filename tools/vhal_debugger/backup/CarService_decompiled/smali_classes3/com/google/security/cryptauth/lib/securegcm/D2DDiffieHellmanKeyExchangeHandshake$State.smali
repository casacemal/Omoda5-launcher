.class final enum Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;
.super Ljava/lang/Enum;
.source "D2DDiffieHellmanKeyExchangeHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

.field public static final enum HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

.field public static final enum HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

.field public static final enum INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

.field public static final enum INITIATOR_WAITING_FOR_RESPONDER_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

.field public static final enum RESPONDER_AFTER_INITIATOR_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

.field public static final enum RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 82
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    const/4 v1, 0x0

    const-string v2, "INITIATOR_START"

    invoke-direct {v0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 83
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    const/4 v2, 0x1

    const-string v3, "INITIATOR_WAITING_FOR_RESPONDER_HELLO"

    invoke-direct {v0, v3, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->INITIATOR_WAITING_FOR_RESPONDER_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 86
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    const/4 v3, 0x2

    const-string v4, "RESPONDER_START"

    invoke-direct {v0, v4, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 87
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    const/4 v4, 0x3

    const-string v5, "RESPONDER_AFTER_INITIATOR_HELLO"

    invoke-direct {v0, v5, v4}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_AFTER_INITIATOR_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 90
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    const/4 v5, 0x4

    const-string v6, "HANDSHAKE_FINISHED"

    invoke-direct {v0, v6, v5}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 91
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    const/4 v6, 0x5

    const-string v7, "HANDSHAKE_ALREADY_USED"

    invoke-direct {v0, v7, v6}, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    sget-object v7, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->INITIATOR_WAITING_FOR_RESPONDER_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->RESPONDER_AFTER_INITIATOR_HELLO:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;
    .locals 1

    .line 80
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/D2DDiffieHellmanKeyExchangeHandshake$State;

    return-object v0
.end method
