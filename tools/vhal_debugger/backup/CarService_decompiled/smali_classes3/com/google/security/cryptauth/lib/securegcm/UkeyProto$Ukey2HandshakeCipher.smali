.class public final enum Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
.super Ljava/lang/Enum;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ukey2HandshakeCipher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

.field public static final enum CURVE25519_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

.field public static final CURVE25519_SHA512_VALUE:I = 0xc8

.field public static final enum P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

.field public static final P256_SHA512_VALUE:I = 0x64

.field public static final enum RESERVED:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

.field public static final RESERVED_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    const/4 v1, 0x0

    const-string v2, "RESERVED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->RESERVED:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    .line 27
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    const/4 v2, 0x1

    const-string v3, "P256_SHA512"

    const/16 v4, 0x64

    invoke-direct {v0, v3, v2, v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    .line 35
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    const/4 v3, 0x2

    const-string v4, "CURVE25519_SHA512"

    const/16 v5, 0xc8

    invoke-direct {v0, v4, v3, v5}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->CURVE25519_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->RESERVED:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->CURVE25519_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    .line 86
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->value:I

    .line 97
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .locals 1
    .param p0, "value"    # I

    .line 73
    if-eqz p0, :cond_2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->CURVE25519_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    return-object v0

    .line 75
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    return-object v0

    .line 74
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->RESERVED:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;->value:I

    return v0
.end method
