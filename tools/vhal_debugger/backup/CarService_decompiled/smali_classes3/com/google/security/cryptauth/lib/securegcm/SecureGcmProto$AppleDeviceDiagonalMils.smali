.class public final enum Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;
.super Ljava/lang/Enum;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppleDeviceDiagonalMils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

.field public static final enum APPLE_PAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

.field public static final APPLE_PAD_VALUE:I = 0x1edc

.field public static final enum APPLE_PHONE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

.field public static final APPLE_PHONE_VALUE:I = 0xfa0

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    const/4 v1, 0x0

    const-string v2, "APPLE_PHONE"

    const/16 v3, 0xfa0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->APPLE_PHONE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    .line 36
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    const/4 v2, 0x1

    const-string v3, "APPLE_PAD"

    const/16 v4, 0x1edc

    invoke-direct {v0, v3, v2, v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->APPLE_PAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->APPLE_PHONE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->APPLE_PAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    .line 82
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->value:I

    .line 93
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;
    .locals 1
    .param p0, "value"    # I

    .line 70
    const/16 v0, 0xfa0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1edc

    if-eq p0, v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->APPLE_PAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    return-object v0

    .line 71
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->APPLE_PHONE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$AppleDeviceDiagonalMils;->value:I

    return v0
.end method
