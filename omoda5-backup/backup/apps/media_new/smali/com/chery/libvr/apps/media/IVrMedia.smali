.class public interface abstract Lcom/chery/libvr/apps/media/IVrMedia;
.super Ljava/lang/Object;
.source "IVrMedia.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/media/IVrMedia$Stub;,
        Lcom/chery/libvr/apps/media/IVrMedia$Default;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerVrMediaCallback(Lcom/chery/libvr/apps/media/IVrMediaCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterVrMediaCallback(Lcom/chery/libvr/apps/media/IVrMediaCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
