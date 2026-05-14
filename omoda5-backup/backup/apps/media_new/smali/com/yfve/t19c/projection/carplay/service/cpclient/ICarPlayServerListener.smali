.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener;
.super Ljava/lang/Object;
.source "ICarPlayServerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onSessionCreated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSessionFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSessionPluginInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
