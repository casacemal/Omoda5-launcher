.class Lcom/android/car/CarMediaService$3;
.super Ljava/lang/Object;
.source "CarMediaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/CarMediaService;->setUserLockStatus(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarMediaService;

.field final synthetic val$unlocked:Z

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/car/CarMediaService;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarMediaService;

    .line 289
    iput-object p1, p0, Lcom/android/car/CarMediaService$3;->this$0:Lcom/android/car/CarMediaService;

    iput p2, p0, Lcom/android/car/CarMediaService$3;->val$userHandle:I

    iput-boolean p3, p0, Lcom/android/car/CarMediaService$3;->val$unlocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    const-string v0, "CAR.MEDIA"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/CarMediaService$3;->val$userHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-boolean v2, p0, Lcom/android/car/CarMediaService$3;->val$unlocked:Z

    if-eqz v2, :cond_0

    const-string v2, "unlocked"

    goto :goto_0

    :cond_0
    const-string v2, "locked"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/android/car/CarMediaService$3;->val$unlocked:Z

    if-nez v0, :cond_2

    .line 298
    return-void

    .line 301
    :cond_2
    iget v0, p0, Lcom/android/car/CarMediaService$3;->val$userHandle:I

    if-eqz v0, :cond_5

    .line 302
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/car/CarMediaService$3;->this$0:Lcom/android/car/CarMediaService;

    .line 303
    invoke-static {v0}, Lcom/android/car/CarMediaService;->access$600(Lcom/android/car/CarMediaService;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/car/CarMediaService$3;->val$userHandle:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/android/car/CarMediaService$3;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v0}, Lcom/android/car/CarMediaService;->access$800(Lcom/android/car/CarMediaService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/android/car/CarMediaService$3;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v0}, Lcom/android/car/CarMediaService;->access$700(Lcom/android/car/CarMediaService;)V

    .line 308
    iget-object v0, p0, Lcom/android/car/CarMediaService$3;->this$0:Lcom/android/car/CarMediaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/CarMediaService;->access$802(Lcom/android/car/CarMediaService;Z)Z

    .line 310
    :cond_4
    return-void

    .line 304
    :cond_5
    :goto_1
    return-void
.end method
