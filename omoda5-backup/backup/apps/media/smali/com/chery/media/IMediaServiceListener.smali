.class public interface abstract Lcom/chery/media/IMediaServiceListener;
.super Ljava/lang/Object;
.source "IMediaServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/IMediaServiceListener$Stub;,
        Lcom/chery/media/IMediaServiceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onUSbScanStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUsbMounted(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUsbUnMounted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
