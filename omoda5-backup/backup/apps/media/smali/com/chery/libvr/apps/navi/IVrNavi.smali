.class public interface abstract Lcom/chery/libvr/apps/navi/IVrNavi;
.super Ljava/lang/Object;
.source "IVrNavi.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/navi/IVrNavi$Stub;,
        Lcom/chery/libvr/apps/navi/IVrNavi$Default;
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

.method public abstract registerVrNaviCallback(Lcom/chery/libvr/apps/navi/IVrNaviCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterVrNaviCallback(Lcom/chery/libvr/apps/navi/IVrNaviCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
