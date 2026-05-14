.class public interface abstract Landroid/car/media/ICarMediaSourceListener;
.super Ljava/lang/Object;
.source "ICarMediaSourceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarMediaSourceListener$Stub;,
        Landroid/car/media/ICarMediaSourceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onMediaSourceChanged(Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
