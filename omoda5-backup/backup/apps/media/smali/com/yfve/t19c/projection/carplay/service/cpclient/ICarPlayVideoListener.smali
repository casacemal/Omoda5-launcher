.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;
.super Ljava/lang/Object;
.source "ICarPlayVideoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
