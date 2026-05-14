.class public interface abstract Lcom/chery/libvr/apps/IVrInitStatusCallback;
.super Ljava/lang/Object;
.source "IVrInitStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/IVrInitStatusCallback$Stub;,
        Lcom/chery/libvr/apps/IVrInitStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onVrInitStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
