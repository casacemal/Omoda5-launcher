.class public interface abstract Lcom/chery/libvr/apps/radio/IVrRadio;
.super Ljava/lang/Object;
.source "IVrRadio.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/apps/radio/IVrRadio$Stub;,
        Lcom/chery/libvr/apps/radio/IVrRadio$Default;
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

.method public abstract registerVrRadioCallback(Lcom/chery/libvr/apps/radio/IVrRadioCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterVrRadioCallback(Lcom/chery/libvr/apps/radio/IVrRadioCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
