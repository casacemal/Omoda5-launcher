.class public final enum Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
.super Ljava/lang/Enum;
.source "TransportCryptoOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum TICKLE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum TX_PING:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

.field public static final enum UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;


# instance fields
.field private final type:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 45
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v2, 0x0

    const-string v3, "ENROLLMENT"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 46
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TICKLE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v3, 0x1

    const-string v4, "TICKLE"

    invoke-direct {v0, v4, v3, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TICKLE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 47
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v4, 0x2

    const-string v5, "TX_REQUEST"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 48
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v5, 0x3

    const-string v6, "TX_REPLY"

    invoke-direct {v0, v6, v5, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 49
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v6, 0x4

    const-string v7, "TX_SYNC_REQUEST"

    invoke-direct {v0, v7, v6, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 50
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v7, 0x5

    const-string v8, "TX_SYNC_RESPONSE"

    invoke-direct {v0, v8, v7, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 51
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_PING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v8, 0x6

    const-string v9, "TX_PING"

    invoke-direct {v0, v9, v8, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_PING:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 52
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/4 v9, 0x7

    const-string v10, "DEVICE_INFO_UPDATE"

    invoke-direct {v0, v10, v9, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 53
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v10, 0x8

    const-string v11, "TX_CANCEL_REQUEST"

    invoke-direct {v0, v11, v10, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 54
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v11, 0x9

    const-string v12, "LOGIN_NOTIFICATION"

    invoke-direct {v0, v12, v11, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 55
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v12, 0xa

    const-string v13, "PROXIMITYAUTH_PAIRING"

    invoke-direct {v0, v13, v12, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 56
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v13, 0xb

    const-string v14, "GCMV1_IDENTITY_ASSERTION"

    invoke-direct {v0, v14, v13, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 57
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v14, 0xc

    const-string v15, "DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD"

    invoke-direct {v0, v15, v14, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 59
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v15, 0xd

    const-string v14, "DEVICE_TO_DEVICE_MESSAGE"

    invoke-direct {v0, v14, v15, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 60
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const/16 v14, 0xe

    const-string v15, "DEVICE_PROXIMITY_CALLBACK"

    invoke-direct {v0, v15, v14, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 61
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    const-string v15, "UNLOCK_KEY_SIGNED_CHALLENGE"

    const/16 v14, 0xf

    invoke-direct {v0, v15, v14, v1}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->ENROLLMENT:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TICKLE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_REPLY:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_SYNC_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_SYNC_RESPONSE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_PING:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_INFO_UPDATE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->TX_CANCEL_REQUEST:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->LOGIN_NOTIFICATION:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->PROXIMITYAUTH_PAIRING:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->GCMV1_IDENTITY_ASSERTION:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_TO_DEVICE_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->DEVICE_PROXIMITY_CALLBACK:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->UNLOCK_KEY_SIGNED_CHALLENGE:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V
    .locals 0
    .param p3, "type"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->type:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 66
    return-void
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    .locals 5
    .param p0, "type"    # I

    .line 77
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->values()[Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    .local v3, "payloadType":Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->getNumber()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 79
    return-object v3

    .line 77
    .end local v3    # "payloadType":Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported payload type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    .locals 1
    .param p0, "type"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 73
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;->type:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    return-object v0
.end method
