.class final enum Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;
.super Ljava/lang/Enum;
.source "Ukey2Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InternalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum CLIENT_AFTER_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum CLIENT_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum CLIENT_WAITING_FOR_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum HANDSHAKE_VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum HANDSHAKE_VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum SERVER_AFTER_CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum SERVER_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

.field public static final enum SERVER_WAITING_FOR_CLIENT_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 257
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v1, 0x0

    const-string v2, "CLIENT_START"

    invoke-direct {v0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 258
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v2, 0x1

    const-string v3, "CLIENT_WAITING_FOR_SERVER_INIT"

    invoke-direct {v0, v3, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_WAITING_FOR_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 259
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v3, 0x2

    const-string v4, "CLIENT_AFTER_SERVER_INIT"

    invoke-direct {v0, v4, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_AFTER_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 262
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v4, 0x3

    const-string v5, "SERVER_START"

    invoke-direct {v0, v5, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 263
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v5, 0x4

    const-string v6, "SERVER_AFTER_CLIENT_INIT"

    invoke-direct {v0, v6, v5}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_AFTER_CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 264
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v6, 0x5

    const-string v7, "SERVER_WAITING_FOR_CLIENT_FINISHED"

    invoke-direct {v0, v7, v6}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_WAITING_FOR_CLIENT_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 267
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v7, 0x6

    const-string v8, "HANDSHAKE_VERIFICATION_NEEDED"

    invoke-direct {v0, v8, v7}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 268
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/4 v8, 0x7

    const-string v9, "HANDSHAKE_VERIFICATION_IN_PROGRESS"

    invoke-direct {v0, v9, v8}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 269
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/16 v9, 0x8

    const-string v10, "HANDSHAKE_FINISHED"

    invoke-direct {v0, v10, v9}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 270
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/16 v10, 0x9

    const-string v11, "HANDSHAKE_ALREADY_USED"

    invoke-direct {v0, v11, v10}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 271
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    const/16 v11, 0xa

    const-string v12, "HANDSHAKE_ERROR"

    invoke-direct {v0, v12, v11}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    .line 255
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    sget-object v12, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v12, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_WAITING_FOR_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_AFTER_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_AFTER_CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_WAITING_FOR_CLIENT_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 255
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;
    .locals 1

    .line 255
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    return-object v0
.end method
