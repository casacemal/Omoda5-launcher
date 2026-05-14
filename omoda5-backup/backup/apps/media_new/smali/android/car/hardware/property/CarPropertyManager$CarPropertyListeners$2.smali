.class Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onErrorEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

.field final synthetic val$value:Landroid/car/hardware/CarPropertyValue;


# direct methods
.method constructor <init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 634
    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iput-object p2, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorEvent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "property: "

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " areaId: "

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarPropertyManager"

    .line 638
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 634
    check-cast p1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
