.class final enum Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;
.super Ljava/lang/Enum;
.source "Ukey2Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HandshakeRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

.field public static final enum CLIENT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

.field public static final enum SERVER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 276
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    const/4 v1, 0x0

    const-string v2, "CLIENT"

    invoke-direct {v0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->CLIENT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    .line 277
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    const/4 v2, 0x1

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->SERVER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    .line 275
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->CLIENT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->SERVER:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 275
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;
    .locals 1

    .line 275
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeRole;

    return-object v0
.end method
