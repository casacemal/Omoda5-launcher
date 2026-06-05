.class final enum Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;
.super Ljava/lang/Enum;
.source "D2DSpakeEd25519Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum INITIATOR_AFTER_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum INITIATOR_WAITING_FOR_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum INITIATOR_WAITING_FOR_RESPONDER_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum RESPONDER_AFTER_INITIATOR_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum RESPONDER_AFTER_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

.field public static final enum RESPONDER_WAITING_FOR_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 251
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v1, 0x0

    const-string v2, "INITIATOR_START"

    invoke-direct {v0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 252
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v2, 0x1

    const-string v3, "INITIATOR_WAITING_FOR_RESPONDER_COMMITMENT"

    invoke-direct {v0, v3, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_WAITING_FOR_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 253
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v3, 0x2

    const-string v4, "INITIATOR_AFTER_RESPONDER_COMMITMENT"

    invoke-direct {v0, v4, v3}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_AFTER_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 254
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v4, 0x3

    const-string v5, "INITIATOR_WAITING_FOR_RESPONDER_HASH"

    invoke-direct {v0, v5, v4}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_WAITING_FOR_RESPONDER_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 257
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v5, 0x4

    const-string v6, "RESPONDER_START"

    invoke-direct {v0, v6, v5}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 258
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v6, 0x5

    const-string v7, "RESPONDER_AFTER_INITIATOR_COMMITMENT"

    invoke-direct {v0, v7, v6}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_AFTER_INITIATOR_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 259
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v7, 0x6

    const-string v8, "RESPONDER_WAITING_FOR_INITIATOR_HASH"

    invoke-direct {v0, v8, v7}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_WAITING_FOR_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 260
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/4 v8, 0x7

    const-string v9, "RESPONDER_AFTER_INITIATOR_HASH"

    invoke-direct {v0, v9, v8}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_AFTER_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 263
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/16 v9, 0x8

    const-string v10, "HANDSHAKE_FINISHED"

    invoke-direct {v0, v10, v9}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 264
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    const/16 v10, 0x9

    const-string v11, "HANDSHAKE_ALREADY_USED"

    invoke-direct {v0, v11, v10}, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    .line 249
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v11, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_WAITING_FOR_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_AFTER_RESPONDER_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->INITIATOR_WAITING_FOR_RESPONDER_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_START:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_AFTER_INITIATOR_COMMITMENT:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_WAITING_FOR_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->RESPONDER_AFTER_INITIATOR_HASH:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 249
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;
    .locals 1

    .line 249
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/D2DSpakeEd25519Handshake$State;

    return-object v0
.end method
