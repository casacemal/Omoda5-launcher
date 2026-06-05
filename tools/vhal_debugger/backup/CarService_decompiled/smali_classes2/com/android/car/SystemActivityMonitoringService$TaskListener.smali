.class Lcom/android/car/SystemActivityMonitoringService$TaskListener;
.super Landroid/app/TaskStackListener;
.source "SystemActivityMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/SystemActivityMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/SystemActivityMonitoringService;


# direct methods
.method private constructor <init>(Lcom/android/car/SystemActivityMonitoringService;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/car/SystemActivityMonitoringService$TaskListener;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p2, "x1"    # Lcom/android/car/SystemActivityMonitoringService$1;

    .line 479
    invoke-direct {p0, p1}, Lcom/android/car/SystemActivityMonitoringService$TaskListener;-><init>(Lcom/android/car/SystemActivityMonitoringService;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 2

    .line 482
    const-string v0, "CAR.AM"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "onTaskStackChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$TaskListener;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    invoke-static {v0}, Lcom/android/car/SystemActivityMonitoringService;->access$500(Lcom/android/car/SystemActivityMonitoringService;)Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->access$800(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;)V

    .line 486
    return-void
.end method
