.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSourceStub;
.super Ljava/lang/Object;
.source "IAudioSourceStub.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSourceStub$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSourceStub$Default;
    }
.end annotation


# virtual methods
.method public abstract close(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract data(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract init(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
