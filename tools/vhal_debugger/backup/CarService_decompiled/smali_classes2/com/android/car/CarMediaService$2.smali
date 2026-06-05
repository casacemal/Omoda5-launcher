.class Lcom/android/car/CarMediaService$2;
.super Landroid/content/BroadcastReceiver;
.source "CarMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarMediaService;


# direct methods
.method constructor <init>(Lcom/android/car/CarMediaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarMediaService;

    .line 144
    iput-object p1, p0, Lcom/android/car/CarMediaService$2;->this$0:Lcom/android/car/CarMediaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/car/CarMediaService$2;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/CarMediaService;->access$502(Lcom/android/car/CarMediaService;I)I

    .line 148
    const-string v0, "CAR.MEDIA"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switched to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarMediaService$2;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v2}, Lcom/android/car/CarMediaService;->access$500(Lcom/android/car/CarMediaService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarMediaService$2;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v0}, Lcom/android/car/CarMediaService;->access$600(Lcom/android/car/CarMediaService;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarMediaService$2;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v1}, Lcom/android/car/CarMediaService;->access$500(Lcom/android/car/CarMediaService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/car/CarMediaService$2;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v0}, Lcom/android/car/CarMediaService;->access$700(Lcom/android/car/CarMediaService;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarMediaService$2;->this$0:Lcom/android/car/CarMediaService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/CarMediaService;->access$802(Lcom/android/car/CarMediaService;Z)Z

    .line 156
    :goto_0
    return-void
.end method
