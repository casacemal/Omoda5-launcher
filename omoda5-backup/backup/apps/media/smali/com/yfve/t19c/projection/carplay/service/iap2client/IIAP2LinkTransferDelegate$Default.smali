.class public Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Default;
.super Ljava/lang/Object;
.source "IIAP2LinkTransferDelegate.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectionInfo()Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerIAP2LinkDataReceiveListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sendData([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterIAP2LinkDataReceiveListener()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
