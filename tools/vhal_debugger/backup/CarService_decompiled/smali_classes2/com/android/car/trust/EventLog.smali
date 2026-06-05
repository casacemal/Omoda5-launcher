.class final Lcom/android/car/trust/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# static fields
.field static final BLUETOOTH_STATE_CHANGED:Ljava/lang/String; = "BLUETOOTH_STATE_CHANGED"

.field static final CLIENT_AUTHENTICATED:Ljava/lang/String; = "CLIENT_AUTHENTICATED"

.field static final ENCRYPTION_KEY_SAVED:Ljava/lang/String; = "ENCRYPTION_KEY_SAVED"

.field static final ENROLLMENT_ENCRYPTION_STATE:Ljava/lang/String; = "ENROLLMENT_ENCRYPTION_STATE"

.field static final ENROLLMENT_HANDSHAKE_ACCEPTED:Ljava/lang/String; = "ENROLLMENT_HANDSHAKE_ACCEPTED"

.field private static final ENROLL_TAG:Ljava/lang/String; = "CarTrustAgentEnrollmentEvent"

.field static final ESCROW_TOKEN_ADDED:Ljava/lang/String; = "ESCROW_TOKEN_ADDED"

.field static final RECEIVED_DEVICE_ID:Ljava/lang/String; = "RECEIVED_DEVICE_ID"

.field static final REMOTE_DEVICE_CONNECTED:Ljava/lang/String; = "REMOTE_DEVICE_CONNECTED"

.field static final SHOW_VERIFICATION_CODE:Ljava/lang/String; = "SHOW_VERIFICATION_CODE"

.field static final START_ENROLLMENT_ADVERTISING:Ljava/lang/String; = "START_ENROLLMENT_ADVERTISING"

.field static final START_UNLOCK_ADVERTISING:Ljava/lang/String; = "START_UNLOCK_ADVERTISING"

.field static final STOP_ENROLLMENT_ADVERTISING:Ljava/lang/String; = "STOP_ENROLLMENT_ADVERTISING"

.field static final STOP_UNLOCK_ADVERTISING:Ljava/lang/String; = "STOP_UNLOCK_ADVERTISING"

.field static final UNLOCK_CREDENTIALS_RECEIVED:Ljava/lang/String; = "UNLOCK_CREDENTIALS_RECEIVED"

.field static final UNLOCK_ENCRYPTION_STATE:Ljava/lang/String; = "UNLOCK_ENCRYPTION_STATE"

.field static final UNLOCK_SERVICE_INIT:Ljava/lang/String; = "UNLOCK_SERVICE_INIT"

.field private static final UNLOCK_TAG:Ljava/lang/String; = "CarTrustAgentUnlockEvent"

.field static final USER_UNLOCKED:Ljava/lang/String; = "USER_UNLOCKED"

.field static final WAITING_FOR_CLIENT_AUTH:Ljava/lang/String; = "WAITING_FOR_CLIENT_AUTH"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static logEnrollmentEvent(Ljava/lang/String;)V
    .locals 5
    .param p0, "eventType"    # Ljava/lang/String;

    .line 85
    const-string v0, "CarTrustAgentEnrollmentEvent"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 86
    const-string v2, "timestamp: %d - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method

.method static logEnrollmentEvent(Ljava/lang/String;I)V
    .locals 5
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 96
    const-string v0, "CarTrustAgentEnrollmentEvent"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 97
    const-string v2, "timestamp: %d - %s: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method static logUnlockEvent(Ljava/lang/String;)V
    .locals 5
    .param p0, "eventType"    # Ljava/lang/String;

    .line 63
    const-string v0, "CarTrustAgentUnlockEvent"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "timestamp: %d - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method static logUnlockEvent(Ljava/lang/String;I)V
    .locals 5
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 74
    const-string v0, "CarTrustAgentUnlockEvent"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    const-string v2, "timestamp: %d - %s: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method
