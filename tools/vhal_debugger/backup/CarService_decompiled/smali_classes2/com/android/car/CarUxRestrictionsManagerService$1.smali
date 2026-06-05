.class Lcom/android/car/CarUxRestrictionsManagerService$1;
.super Landroid/car/drivingstate/ICarDrivingStateChangeListener$Stub;
.source "CarUxRestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarUxRestrictionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarUxRestrictionsManagerService;


# direct methods
.method constructor <init>(Lcom/android/car/CarUxRestrictionsManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarUxRestrictionsManagerService;

    .line 653
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService$1;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-direct {p0}, Landroid/car/drivingstate/ICarDrivingStateChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Driving State Changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarUxRestrictionsManagerService;->access$100(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$1;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-static {v0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->access$300(Lcom/android/car/CarUxRestrictionsManagerService;Landroid/car/drivingstate/CarDrivingStateEvent;)V

    .line 658
    return-void
.end method
