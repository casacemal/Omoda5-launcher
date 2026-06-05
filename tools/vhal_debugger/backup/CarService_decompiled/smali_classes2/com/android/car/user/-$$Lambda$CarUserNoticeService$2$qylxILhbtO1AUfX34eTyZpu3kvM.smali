.class public final synthetic Lcom/android/car/user/-$$Lambda$CarUserNoticeService$2$qylxILhbtO1AUfX34eTyZpu3kvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/user/CarUserNoticeService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/user/CarUserNoticeService$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$2$qylxILhbtO1AUfX34eTyZpu3kvM;->f$0:Lcom/android/car/user/CarUserNoticeService$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$2$qylxILhbtO1AUfX34eTyZpu3kvM;->f$0:Lcom/android/car/user/CarUserNoticeService$2;

    invoke-virtual {v0}, Lcom/android/car/user/CarUserNoticeService$2;->lambda$onStateChanged$1$CarUserNoticeService$2()V

    return-void
.end method
