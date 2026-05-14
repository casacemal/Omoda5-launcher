.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;
.super Ljava/lang/Object;
.source "IIAP2LinkTransferDelegate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Default;
    }
.end annotation


# virtual methods
.method public abstract getConnectionInfo()Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerIAP2LinkDataReceiveListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendData([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterIAP2LinkDataReceiveListener()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
