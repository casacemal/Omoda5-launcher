.class public final enum Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;
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
    name = "InvocationReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final enum REASON_ADDRESS_CHANGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_ADDRESS_CHANGE_VALUE:I = 0xb

.field public static final enum REASON_CHANGED_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_CHANGED_ACCOUNT_VALUE:I = 0x8

.field public static final enum REASON_CUSTOM_KEY_INVALIDATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_CUSTOM_KEY_INVALIDATION_VALUE:I = 0xe

.field public static final enum REASON_EXPIRATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_EXPIRATION_VALUE:I = 0x5

.field public static final enum REASON_FAILURE_RECOVERY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_FAILURE_RECOVERY_VALUE:I = 0x6

.field public static final enum REASON_FAST_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_FAST_PERIODIC_VALUE:I = 0x4

.field public static final enum REASON_FEATURE_TOGGLED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_FEATURE_TOGGLED_VALUE:I = 0x9

.field public static final enum REASON_INITIALIZATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_INITIALIZATION_VALUE:I = 0x1

.field public static final enum REASON_MANUAL:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_MANUAL_VALUE:I = 0xd

.field public static final enum REASON_NEW_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_NEW_ACCOUNT_VALUE:I = 0x7

.field public static final enum REASON_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_PERIODIC_VALUE:I = 0x2

.field public static final enum REASON_PROXIMITY_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_PROXIMITY_PERIODIC_VALUE:I = 0xf

.field public static final enum REASON_SERVER_INITIATED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_SERVER_INITIATED_VALUE:I = 0xa

.field public static final enum REASON_SLOW_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_SLOW_PERIODIC_VALUE:I = 0x3

.field public static final enum REASON_SOFTWARE_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_SOFTWARE_UPDATE_VALUE:I = 0xc

.field public static final enum REASON_UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

.field public static final REASON_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 353
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v1, 0x0

    const-string v2, "REASON_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 361
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v2, 0x1

    const-string v3, "REASON_INITIALIZATION"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_INITIALIZATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 369
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v3, 0x2

    const-string v4, "REASON_PERIODIC"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 377
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v4, 0x3

    const-string v5, "REASON_SLOW_PERIODIC"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SLOW_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 385
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v5, 0x4

    const-string v6, "REASON_FAST_PERIODIC"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FAST_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 393
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v6, 0x5

    const-string v7, "REASON_EXPIRATION"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_EXPIRATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 401
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v7, 0x6

    const-string v8, "REASON_FAILURE_RECOVERY"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FAILURE_RECOVERY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 409
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/4 v8, 0x7

    const-string v9, "REASON_NEW_ACCOUNT"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_NEW_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 417
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v9, 0x8

    const-string v10, "REASON_CHANGED_ACCOUNT"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_CHANGED_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 425
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v10, 0x9

    const-string v11, "REASON_FEATURE_TOGGLED"

    invoke-direct {v0, v11, v10, v10}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FEATURE_TOGGLED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 433
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v11, 0xa

    const-string v12, "REASON_SERVER_INITIATED"

    invoke-direct {v0, v12, v11, v11}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SERVER_INITIATED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 441
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v12, 0xb

    const-string v13, "REASON_ADDRESS_CHANGE"

    invoke-direct {v0, v13, v12, v12}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_ADDRESS_CHANGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 449
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v13, 0xc

    const-string v14, "REASON_SOFTWARE_UPDATE"

    invoke-direct {v0, v14, v13, v13}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SOFTWARE_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 457
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v14, 0xd

    const-string v15, "REASON_MANUAL"

    invoke-direct {v0, v15, v14, v14}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_MANUAL:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 466
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v15, 0xe

    const-string v14, "REASON_CUSTOM_KEY_INVALIDATION"

    invoke-direct {v0, v14, v15, v15}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_CUSTOM_KEY_INVALIDATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 474
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const-string v14, "REASON_PROXIMITY_PERIODIC"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_PROXIMITY_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 348
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    sget-object v13, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v13, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_INITIALIZATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SLOW_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FAST_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_EXPIRATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FAILURE_RECOVERY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_NEW_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_CHANGED_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FEATURE_TOGGLED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SERVER_INITIATED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_ADDRESS_CHANGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SOFTWARE_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_MANUAL:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_CUSTOM_KEY_INVALIDATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_PROXIMITY_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    .line 643
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 652
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 653
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->value:I

    .line 654
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;
    .locals 1
    .param p0, "value"    # I

    .line 617
    packed-switch p0, :pswitch_data_0

    .line 634
    const/4 v0, 0x0

    return-object v0

    .line 633
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_PROXIMITY_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 632
    :pswitch_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_CUSTOM_KEY_INVALIDATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 631
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_MANUAL:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 630
    :pswitch_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SOFTWARE_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 629
    :pswitch_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_ADDRESS_CHANGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 628
    :pswitch_5
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SERVER_INITIATED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 627
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FEATURE_TOGGLED:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 626
    :pswitch_7
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_CHANGED_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 625
    :pswitch_8
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_NEW_ACCOUNT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 624
    :pswitch_9
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FAILURE_RECOVERY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 623
    :pswitch_a
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_EXPIRATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 622
    :pswitch_b
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_FAST_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 621
    :pswitch_c
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_SLOW_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 620
    :pswitch_d
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_PERIODIC:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 619
    :pswitch_e
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_INITIALIZATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    .line 618
    :pswitch_f
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->REASON_UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;",
            ">;"
        }
    .end annotation

    .line 640
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 348
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;
    .locals 1

    .line 348
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$InvocationReason;->value:I

    return v0
.end method
