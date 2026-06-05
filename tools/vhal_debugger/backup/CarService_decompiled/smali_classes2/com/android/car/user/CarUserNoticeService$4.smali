.class Lcom/android/car/user/CarUserNoticeService$4;
.super Landroid/car/user/IUserNotice$Stub;
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

    .line 158
    iput-object p1, p0, Lcom/android/car/user/CarUserNoticeService$4;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-direct {p0}, Landroid/car/user/IUserNotice$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDialogDismissed$0$CarUserNoticeService$4()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$4;->this$0:Lcom/android/car/user/CarUserNoticeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/user/CarUserNoticeService;->access$100(Lcom/android/car/user/CarUserNoticeService;Z)V

    return-void
.end method

.method public onDialogDismissed()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$4;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$000(Lcom/android/car/user/CarUserNoticeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$4$dQhG_b8712TpgvOi04Ba4w_9lEk;

    invoke-direct {v1, p0}, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$4$dQhG_b8712TpgvOi04Ba4w_9lEk;-><init>(Lcom/android/car/user/CarUserNoticeService$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method
