.class public final synthetic Lcom/android/car/user/-$$Lambda$CarUserNoticeService$1$MQz0FgPm-NIxIdRGinJEWg0Yfl8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/user/CarUserNoticeService$1;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/user/CarUserNoticeService$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$1$MQz0FgPm-NIxIdRGinJEWg0Yfl8;->f$0:Lcom/android/car/user/CarUserNoticeService$1;

    iput p2, p0, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$1$MQz0FgPm-NIxIdRGinJEWg0Yfl8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$1$MQz0FgPm-NIxIdRGinJEWg0Yfl8;->f$0:Lcom/android/car/user/CarUserNoticeService$1;

    iget v1, p0, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$1$MQz0FgPm-NIxIdRGinJEWg0Yfl8;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/car/user/CarUserNoticeService$1;->lambda$onSwitchUser$0$CarUserNoticeService$1(I)V

    return-void
.end method
