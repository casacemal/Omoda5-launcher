.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;
.super Ljava/lang/Object;
.source "IIAP2LinkDataReceiveListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDataReceived([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
