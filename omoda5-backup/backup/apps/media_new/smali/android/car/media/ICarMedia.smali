.class public interface abstract Landroid/car/media/ICarMedia;
.super Ljava/lang/Object;
.source "ICarMedia.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarMedia$Stub;,
        Landroid/car/media/ICarMedia$Default;
    }
.end annotation


# virtual methods
.method public abstract getMediaSource()Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMediaSource(Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
