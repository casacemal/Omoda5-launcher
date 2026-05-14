.class public interface abstract Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;
.super Ljava/lang/Object;
.source "CarPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/power/CarPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarPowerStateListenerWithCompletion"
.end annotation


# virtual methods
.method public abstract onStateChanged(ILjava/util/concurrent/CompletableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
