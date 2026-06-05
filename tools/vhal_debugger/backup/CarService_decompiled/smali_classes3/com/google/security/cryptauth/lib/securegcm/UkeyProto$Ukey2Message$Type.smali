.class public final enum Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
.super Ljava/lang/Enum;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

.field public static final enum ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

.field public static final ALERT_VALUE:I = 0x1

.field public static final enum CLIENT_FINISH:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

.field public static final CLIENT_FINISH_VALUE:I = 0x4

.field public static final enum CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

.field public static final CLIENT_INIT_VALUE:I = 0x2

.field public static final enum SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

.field public static final SERVER_INIT_VALUE:I = 0x3

.field public static final enum UNKNOWN_DO_NOT_USE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

.field public static final UNKNOWN_DO_NOT_USE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 160
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_DO_NOT_USE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->UNKNOWN_DO_NOT_USE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 164
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    const/4 v2, 0x1

    const-string v3, "ALERT"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 168
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    const/4 v3, 0x2

    const-string v4, "CLIENT_INIT"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 172
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    const/4 v4, 0x3

    const-string v5, "SERVER_INIT"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 176
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    const/4 v5, 0x4

    const-string v6, "CLIENT_FINISH"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_FINISH:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->UNKNOWN_DO_NOT_USE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_FINISH:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 229
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->value:I

    .line 240
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    .locals 1
    .param p0, "value"    # I

    .line 214
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_FINISH:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    return-object v0

    .line 218
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    return-object v0

    .line 217
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    return-object v0

    .line 216
    :cond_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    return-object v0

    .line 215
    :cond_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->UNKNOWN_DO_NOT_USE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;",
            ">;"
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 155
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    .locals 1

    .line 155
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->value:I

    return v0
.end method
