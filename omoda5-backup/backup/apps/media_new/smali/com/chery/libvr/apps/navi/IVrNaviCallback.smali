.class public interface abstract Lcom/chery/libvr/apps/navi/IVrNaviCallback;
.super Ljava/lang/Object;
.source "IVrNaviCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/navi/IVrNaviCallback$Stub;,
        Lcom/chery/libvr/apps/navi/IVrNaviCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
