.class public interface abstract Lcom/chery/libvr/apps/radio/IVrRadioCallback;
.super Ljava/lang/Object;
.source "IVrRadioCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/radio/IVrRadioCallback$Stub;,
        Lcom/chery/libvr/apps/radio/IVrRadioCallback$Default;
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
