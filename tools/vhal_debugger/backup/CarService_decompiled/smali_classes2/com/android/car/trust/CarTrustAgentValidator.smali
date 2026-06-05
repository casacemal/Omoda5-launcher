.class final Lcom/android/car/trust/CarTrustAgentValidator;
.super Ljava/lang/Object;
.source "CarTrustAgentValidator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static isValidEnrollmentDeviceId([B)Z
    .locals 1
    .param p0, "value"    # [B

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method static isValidUnlockDeviceId([B)Z
    .locals 1
    .param p0, "value"    # [B

    .line 45
    const/4 v0, 0x1

    return v0
.end method
