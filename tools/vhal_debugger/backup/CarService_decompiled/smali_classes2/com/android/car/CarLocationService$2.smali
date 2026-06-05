.class Lcom/android/car/CarLocationService$2;
.super Landroid/car/drivingstate/ICarDrivingStateChangeListener$Stub;
.source "CarLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarLocationService;


# direct methods
.method constructor <init>(Lcom/android/car/CarLocationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarLocationService;

    .line 135
    iput-object p1, p0, Lcom/android/car/CarLocationService$2;->this$0:Lcom/android/car/CarLocationService;

    invoke-direct {p0}, Landroid/car/drivingstate/ICarDrivingStateChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrivingStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$000(Ljava/lang/String;)V

    .line 139
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/car/CarLocationService$2;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$500(Lcom/android/car/CarLocationService;)V

    .line 142
    iget-object v0, p0, Lcom/android/car/CarLocationService$2;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$600(Lcom/android/car/CarLocationService;)Lcom/android/car/CarDrivingStateService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/car/CarLocationService$2;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$600(Lcom/android/car/CarLocationService;)Lcom/android/car/CarDrivingStateService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarLocationService$2;->this$0:Lcom/android/car/CarLocationService;

    .line 144
    invoke-static {v1}, Lcom/android/car/CarLocationService;->access$700(Lcom/android/car/CarLocationService;)Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/car/CarDrivingStateService;->unregisterDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    .line 147
    :cond_0
    return-void
.end method
