.class public interface abstract Landroid/car/ICarBugreportService;
.super Ljava/lang/Object;
.source "ICarBugreportService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarBugreportService$Stub;,
        Landroid/car/ICarBugreportService$Default;
    }
.end annotation


# virtual methods
.method public abstract requestBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
