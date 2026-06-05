.class public interface abstract Lcom/android/car/systeminterface/WakeLockInterface;
.super Ljava/lang/Object;
.source "WakeLockInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;
    }
.end annotation


# virtual methods
.method public abstract releaseAllWakeLocks()V
.end method

.method public abstract switchToFullWakeLock()V
.end method

.method public abstract switchToPartialWakeLock()V
.end method
