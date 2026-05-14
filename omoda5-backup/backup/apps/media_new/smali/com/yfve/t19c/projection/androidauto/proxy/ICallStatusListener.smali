.class public interface abstract Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;
.super Ljava/lang/Object;
.source "ICallStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener$Stub;,
        Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onUpdateCallStatus(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
