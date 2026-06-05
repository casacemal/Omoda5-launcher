.class Lcom/android/car/trust/CarBleTrustAgent$2;
.super Ljava/lang/Object;
.source "CarBleTrustAgent.java"

# interfaces
.implements Lcom/android/car/trust/CarTrustAgentEnrollmentService$CarTrustAgentEnrollmentRequestDelegate;


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

    .line 269
    iput-object p1, p0, Lcom/android/car/trust/CarBleTrustAgent$2;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BI)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "uid"    # I

    .line 272
    invoke-static {}, Lcom/android/car/trust/CarBleTrustAgent;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/android/car/trust/CarBleTrustAgent;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEscrowToken. uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {p1}, Lcom/android/car/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent$2;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/car/trust/CarBleTrustAgent;->addEscrowToken([BLandroid/os/UserHandle;)V

    .line 279
    return-void
.end method

.method public isEscrowTokenActive(JI)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "uid"    # I

    .line 294
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent$2;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/car/trust/CarBleTrustAgent;->isEscrowTokenActive(JLandroid/os/UserHandle;)V

    .line 295
    return-void
.end method

.method public removeEscrowToken(JI)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "uid"    # I

    .line 283
    invoke-static {}, Lcom/android/car/trust/CarBleTrustAgent;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/android/car/trust/CarBleTrustAgent;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeEscrowToken. uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent$2;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    .line 289
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 288
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/car/trust/CarBleTrustAgent;->removeEscrowToken(JLandroid/os/UserHandle;)V

    .line 290
    return-void
.end method
