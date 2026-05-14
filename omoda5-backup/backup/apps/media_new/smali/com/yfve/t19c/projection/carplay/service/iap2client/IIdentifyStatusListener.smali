.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIdentifyStatusListener;
.super Ljava/lang/Object;
.source "IIdentifyStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIdentifyStatusListener$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIdentifyStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onIAP2NodeStatus(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIdentifyStatusChanged(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
