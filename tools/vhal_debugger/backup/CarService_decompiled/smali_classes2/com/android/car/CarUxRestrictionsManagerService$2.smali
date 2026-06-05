.class Lcom/android/car/CarUxRestrictionsManagerService$2;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
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

    .line 696
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService$2;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 700
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v2

    if-nez v2, :cond_0

    .line 702
    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    const v3, 0x11600207

    if-ne v2, v3, :cond_0

    .line 704
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService$2;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->access$400(Lcom/android/car/CarUxRestrictionsManagerService;F)V

    .line 706
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_0
    goto :goto_0

    .line 707
    :cond_1
    return-void
.end method
