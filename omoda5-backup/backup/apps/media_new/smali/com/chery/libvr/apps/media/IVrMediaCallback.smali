.class public interface abstract Lcom/chery/libvr/apps/media/IVrMediaCallback;
.super Ljava/lang/Object;
.source "IVrMediaCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/media/IVrMediaCallback$Stub;,
        Lcom/chery/libvr/apps/media/IVrMediaCallback$Default;
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
