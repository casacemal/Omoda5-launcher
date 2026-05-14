.class public Lcom/yfve/t19c/projection/androidauto/proxy/Call;
.super Ljava/lang/Object;
.source "Call.java"


# static fields
.field public static final PhoneStatus_State_CONFERENCED:I = 0x5

.field public static final PhoneStatus_State_INACTIVE:I = 0x3

.field public static final PhoneStatus_State_INCOMING:I = 0x4

.field public static final PhoneStatus_State_IN_CALL:I = 0x1

.field public static final PhoneStatus_State_MUTED:I = 0x6

.field public static final PhoneStatus_State_ON_HOLD:I = 0x2

.field public static final PhoneStatus_State_UNKNOWN:I


# instance fields
.field public call_duration_seconds:I

.field public caller_id:Ljava/lang/String;

.field public caller_number:Ljava/lang/String;

.field public caller_number_type:Ljava/lang/String;

.field public caller_thumbnail:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
