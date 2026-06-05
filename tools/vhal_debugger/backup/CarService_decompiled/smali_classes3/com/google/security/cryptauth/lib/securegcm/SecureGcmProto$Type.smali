.class public final enum Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
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
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final enum DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final DEVICE_INFO_UPDATE_VALUE:I = 0x7

.field public static final enum DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final DEVICE_PROXIMITY_CALLBACK_VALUE:I = 0xe

.field public static final enum DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final DEVICE_TO_DEVICE_MESSAGE_VALUE:I = 0xd

.field public static final enum DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD_VALUE:I = 0xc

.field public static final enum ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final ENROLLMENT_VALUE:I = 0x0

.field public static final enum GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final GCMV1_IDENTITY_ASSERTION_VALUE:I = 0xb

.field public static final enum LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final LOGIN_NOTIFICATION_VALUE:I = 0x65

.field public static final enum PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final PROXIMITYAUTH_PAIRING_VALUE:I = 0xa

.field public static final enum TICKLE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final TICKLE_VALUE:I = 0x1

.field public static final enum TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final TX_CANCEL_REQUEST_VALUE:I = 0x8

.field public static final enum TX_PING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final TX_PING_VALUE:I = 0x6

.field public static final enum TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final TX_REPLY_VALUE:I = 0x3

.field public static final enum TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final TX_REQUEST_VALUE:I = 0x2

.field public static final enum TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final TX_SYNC_REQUEST_VALUE:I = 0x4

.field public static final enum TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final TX_SYNC_RESPONSE_VALUE:I = 0x5

.field public static final enum UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

.field public static final UNLOCK_KEY_SIGNED_CHALLENGE_VALUE:I = 0xf

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 667
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v1, 0x0

    const-string v2, "ENROLLMENT"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 671
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v2, 0x1

    const-string v3, "TICKLE"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TICKLE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 675
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v3, 0x2

    const-string v4, "TX_REQUEST"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 679
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v4, 0x3

    const-string v5, "TX_REPLY"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 683
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v5, 0x4

    const-string v6, "TX_SYNC_REQUEST"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 687
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v6, 0x5

    const-string v7, "TX_SYNC_RESPONSE"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 691
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v7, 0x6

    const-string v8, "TX_PING"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_PING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 695
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v8, 0x7

    const-string v9, "DEVICE_INFO_UPDATE"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 699
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v9, 0x8

    const-string v10, "TX_CANCEL_REQUEST"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 707
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v10, 0xa

    const-string v11, "PROXIMITYAUTH_PAIRING"

    const/16 v12, 0x9

    invoke-direct {v0, v11, v12, v10}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 717
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v11, 0xb

    const-string v12, "GCMV1_IDENTITY_ASSERTION"

    invoke-direct {v0, v12, v10, v11}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 733
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v12, 0xc

    const-string v13, "DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD"

    invoke-direct {v0, v13, v11, v12}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 744
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v13, 0xd

    const-string v14, "DEVICE_TO_DEVICE_MESSAGE"

    invoke-direct {v0, v14, v12, v13}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 752
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v14, 0xe

    const-string v15, "DEVICE_PROXIMITY_CALLBACK"

    invoke-direct {v0, v15, v13, v14}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 763
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v15, 0xf

    const-string v13, "UNLOCK_KEY_SIGNED_CHALLENGE"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 771
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const-string v13, "LOGIN_NOTIFICATION"

    const/16 v14, 0x65

    invoke-direct {v0, v13, v15, v14}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 662
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    sget-object v13, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v13, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TICKLE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_PING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    aput-object v1, v0, v15

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 923
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 932
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 933
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->value:I

    .line 934
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .locals 1
    .param p0, "value"    # I

    .line 897
    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 914
    const/4 v0, 0x0

    return-object v0

    .line 912
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 911
    :pswitch_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 910
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 909
    :pswitch_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 908
    :pswitch_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 907
    :pswitch_5
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 906
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 905
    :pswitch_7
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 904
    :pswitch_8
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_PING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 903
    :pswitch_9
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 902
    :pswitch_a
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 901
    :pswitch_b
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 900
    :pswitch_c
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 899
    :pswitch_d
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TICKLE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 898
    :pswitch_e
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    .line 913
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
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
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;",
            ">;"
        }
    .end annotation

    .line 920
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 893
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 662
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .locals 1

    .line 662
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 885
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->value:I

    return v0
.end method
