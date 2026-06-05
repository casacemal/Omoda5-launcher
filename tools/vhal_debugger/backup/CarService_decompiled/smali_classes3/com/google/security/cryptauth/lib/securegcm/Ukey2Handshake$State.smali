.class public final enum Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;
.super Ljava/lang/Enum;
.source "Ukey2Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

.field public static final enum ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

.field public static final enum ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

.field public static final enum FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

.field public static final enum IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

.field public static final enum VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

.field public static final enum VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 162
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    const/4 v1, 0x0

    const-string v2, "IN_PROGRESS"

    invoke-direct {v0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    .line 163
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    const/4 v2, 0x1

    const-string v3, "VERIFICATION_NEEDED"

    invoke-direct {v0, v3, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    .line 164
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    const/4 v3, 0x2

    const-string v4, "VERIFICATION_IN_PROGRESS"

    invoke-direct {v0, v4, v3}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    .line 165
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    const/4 v4, 0x3

    const-string v5, "FINISHED"

    invoke-direct {v0, v5, v4}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    .line 166
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    const/4 v5, 0x4

    const-string v6, "ALREADY_USED"

    invoke-direct {v0, v6, v5}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    .line 167
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    invoke-direct {v0, v7, v6}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    .line 161
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    sget-object v7, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 161
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;
    .locals 1

    .line 161
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$State;

    return-object v0
.end method
