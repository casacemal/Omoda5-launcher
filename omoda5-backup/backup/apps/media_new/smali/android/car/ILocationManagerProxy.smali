.class public interface abstract Landroid/car/ILocationManagerProxy;
.super Ljava/lang/Object;
.source "ILocationManagerProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ILocationManagerProxy$Stub;,
        Landroid/car/ILocationManagerProxy$Default;
    }
.end annotation


# virtual methods
.method public abstract getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract injectLocation(Landroid/location/Location;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLocationEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
