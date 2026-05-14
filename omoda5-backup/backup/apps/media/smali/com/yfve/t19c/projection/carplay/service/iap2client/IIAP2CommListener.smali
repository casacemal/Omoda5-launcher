.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;
.super Ljava/lang/Object;
.source "IIAP2CommListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceStatus(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
