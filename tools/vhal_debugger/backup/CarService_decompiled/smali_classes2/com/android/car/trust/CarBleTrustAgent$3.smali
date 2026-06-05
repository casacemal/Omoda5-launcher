.class Lcom/android/car/trust/CarBleTrustAgent$3;
.super Ljava/lang/Object;
.source "CarBleTrustAgent.java"

# interfaces
.implements Lcom/android/car/trust/CarTrustAgentUnlockService$CarTrustAgentUnlockDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/trust/CarBleTrustAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/trust/CarBleTrustAgent;


# direct methods
.method constructor <init>(Lcom/android/car/trust/CarBleTrustAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/trust/CarBleTrustAgent;

    .line 301
    iput-object p1, p0, Lcom/android/car/trust/CarBleTrustAgent$3;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockDataReceived(I[BJ)V
    .locals 4
    .param p1, "user"    # I
    .param p2, "token"    # [B
    .param p3, "handle"    # J

    .line 311
    invoke-static {}, Lcom/android/car/trust/CarBleTrustAgent;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/android/car/trust/CarBleTrustAgent;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnlockDataReceived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p2}, Lcom/android/car/Utils;->bytesToLong([B)J

    move-result-wide v2

    .line 312
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 319
    invoke-static {}, Lcom/android/car/trust/CarBleTrustAgent;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected User: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Presented User: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent$3;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/car/trust/CarBleTrustAgent;->access$200(Lcom/android/car/trust/CarBleTrustAgent;I[BJ)V

    .line 324
    const-string v0, "USER_UNLOCKED"

    invoke-static {v0}, Lcom/android/car/trust/EventLog;->logUnlockEvent(Ljava/lang/String;)V

    .line 327
    return-void
.end method
