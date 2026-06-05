.class public interface abstract Landroid/car/test/ICarTest;
.super Ljava/lang/Object;
.source "ICarTest.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/test/ICarTest$Stub;,
        Landroid/car/test/ICarTest$Default;
    }
.end annotation


# virtual methods
.method public abstract startCarService(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopCarService(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
