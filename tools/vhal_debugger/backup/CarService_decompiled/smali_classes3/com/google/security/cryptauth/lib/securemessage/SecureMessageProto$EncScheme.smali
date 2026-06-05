.class public final enum Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
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
    name = "EncScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

.field public static final enum AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

.field public static final AES_256_CBC_VALUE:I = 0x2

.field public static final enum NONE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

.field public static final NONE_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 114
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->NONE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 118
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    const/4 v3, 0x2

    const-string v4, "AES_256_CBC"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 105
    new-array v0, v3, [Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->NONE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 160
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->value:I

    .line 171
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .locals 1
    .param p0, "value"    # I

    .line 148
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    return-object v0

    .line 149
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->NONE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;",
            ">;"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 105
    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .locals 1

    .line 105
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->value:I

    return v0
.end method
