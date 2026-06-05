.class Lcom/android/car/user/CarUserNoticeService$3;
.super Landroid/content/BroadcastReceiver;
.source "CarUserNoticeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/user/CarUserNoticeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/user/CarUserNoticeService;


# direct methods
.method constructor <init>(Lcom/android/car/user/CarUserNoticeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 136
    iput-object p1, p0, Lcom/android/car/user/CarUserNoticeService$3;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CAR.USER"

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$3;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$500(Lcom/android/car/user/CarUserNoticeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "SCREEN_OFF while display is already on"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 145
    :cond_0
    const-string v0, "Display off, stopping UI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$3;->this$0:Lcom/android/car/user/CarUserNoticeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/user/CarUserNoticeService;->access$100(Lcom/android/car/user/CarUserNoticeService;Z)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$3;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$500(Lcom/android/car/user/CarUserNoticeService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const-string v0, "SCREEN_ON while display is already off"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 152
    :cond_2
    const-string v0, "Display on, starting UI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$3;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$400(Lcom/android/car/user/CarUserNoticeService;)V

    .line 155
    :cond_3
    :goto_0
    return-void
.end method
