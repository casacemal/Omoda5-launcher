.class public interface abstract Landroid/car/hardware/power/ICarPowerStateListener;
.super Ljava/lang/Object;
.source "ICarPowerStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/power/ICarPowerStateListener$Stub;,
        Landroid/car/hardware/power/ICarPowerStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
