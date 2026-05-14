.class public interface abstract Landroid/car/ICarBluetooth;
.super Ljava/lang/Object;
.source "ICarBluetooth.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarBluetooth$Stub;,
        Landroid/car/ICarBluetooth$Default;
    }
.end annotation


# virtual methods
.method public abstract connectDevices()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
