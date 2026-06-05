.class public final enum Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
.super Ljava/lang/Enum;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublicKeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

.field public static final enum DH2048_MODP:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

.field public static final DH2048_MODP_VALUE:I = 0x3

.field public static final enum EC_P256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

.field public static final EC_P256_VALUE:I = 0x1

.field public static final enum RSA2048:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

.field public static final RSA2048_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 188
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "EC_P256"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->EC_P256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 192
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    const/4 v3, 0x2

    const-string v4, "RSA2048"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->RSA2048:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 200
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    const/4 v4, 0x3

    const-string v5, "DH2048_MODP"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->DH2048_MODP:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 183
    new-array v0, v4, [Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    sget-object v4, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->EC_P256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->RSA2048:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->DH2048_MODP:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 247
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 257
    iput p3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->value:I

    .line 258
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    .locals 1
    .param p0, "value"    # I

    .line 234
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->DH2048_MODP:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    return-object v0

    .line 236
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->RSA2048:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    return-object v0

    .line 235
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->EC_P256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;",
            ">;"
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    .locals 1

    .line 183
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->value:I

    return v0
.end method
