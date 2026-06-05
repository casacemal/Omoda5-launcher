.class public final enum Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
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
    name = "SoftwareFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final enum BETTER_TOGETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final BETTER_TOGETHER_CLIENT_VALUE:I = 0x2

.field public static final enum BETTER_TOGETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final BETTER_TOGETHER_HOST_VALUE:I = 0x1

.field public static final enum EASY_UNLOCK_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final EASY_UNLOCK_CLIENT_VALUE:I = 0x4

.field public static final enum EASY_UNLOCK_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final EASY_UNLOCK_HOST_VALUE:I = 0x3

.field public static final enum MAGIC_TETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final MAGIC_TETHER_CLIENT_VALUE:I = 0x6

.field public static final enum MAGIC_TETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final MAGIC_TETHER_HOST_VALUE:I = 0x5

.field public static final enum SMS_CONNECT_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final SMS_CONNECT_CLIENT_VALUE:I = 0x8

.field public static final enum SMS_CONNECT_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final SMS_CONNECT_HOST_VALUE:I = 0x7

.field public static final enum UNKNOWN_FEATURE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

.field public static final UNKNOWN_FEATURE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 217
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_FEATURE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->UNKNOWN_FEATURE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 221
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v2, 0x1

    const-string v3, "BETTER_TOGETHER_HOST"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->BETTER_TOGETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 225
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v3, 0x2

    const-string v4, "BETTER_TOGETHER_CLIENT"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->BETTER_TOGETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 229
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v4, 0x3

    const-string v5, "EASY_UNLOCK_HOST"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->EASY_UNLOCK_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 233
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v5, 0x4

    const-string v6, "EASY_UNLOCK_CLIENT"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->EASY_UNLOCK_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 237
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v6, 0x5

    const-string v7, "MAGIC_TETHER_HOST"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->MAGIC_TETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 241
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v7, 0x6

    const-string v8, "MAGIC_TETHER_CLIENT"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->MAGIC_TETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 245
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/4 v8, 0x7

    const-string v9, "SMS_CONNECT_HOST"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->SMS_CONNECT_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 249
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    const/16 v9, 0x8

    const-string v10, "SMS_CONNECT_CLIENT"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->SMS_CONNECT_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 212
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->UNKNOWN_FEATURE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v10, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->BETTER_TOGETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->BETTER_TOGETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->EASY_UNLOCK_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->EASY_UNLOCK_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->MAGIC_TETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->MAGIC_TETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->SMS_CONNECT_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->SMS_CONNECT_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 322
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 332
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->value:I

    .line 333
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 1
    .param p0, "value"    # I

    .line 303
    packed-switch p0, :pswitch_data_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 312
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->SMS_CONNECT_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 311
    :pswitch_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->SMS_CONNECT_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 310
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->MAGIC_TETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 309
    :pswitch_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->MAGIC_TETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 308
    :pswitch_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->EASY_UNLOCK_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 307
    :pswitch_5
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->EASY_UNLOCK_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 306
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->BETTER_TOGETHER_CLIENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 305
    :pswitch_7
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->BETTER_TOGETHER_HOST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    .line 304
    :pswitch_8
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->UNKNOWN_FEATURE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 212
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 1

    .line 212
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->value:I

    return v0
.end method
