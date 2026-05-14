.class public interface abstract Lcom/chery/libvr/apps/IVrFunctionBinderPool;
.super Ljava/lang/Object;
.source "IVrFunctionBinderPool.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/IVrFunctionBinderPool$Stub;,
        Lcom/chery/libvr/apps/IVrFunctionBinderPool$Default;
    }
.end annotation


# virtual methods
.method public abstract getVrInitStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryFunctionToolBinder(I)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerVrInitStatusCallback(Lcom/chery/libvr/apps/IVrInitStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterVrInitStatusCallback(Lcom/chery/libvr/apps/IVrInitStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
