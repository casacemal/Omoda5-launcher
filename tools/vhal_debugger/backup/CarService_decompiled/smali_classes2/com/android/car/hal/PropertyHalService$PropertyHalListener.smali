.class public interface abstract Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
.super Ljava/lang/Object;
.source "PropertyHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/PropertyHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PropertyHalListener"
.end annotation


# virtual methods
.method public abstract onPropertyChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPropertySetError(II)V
.end method
