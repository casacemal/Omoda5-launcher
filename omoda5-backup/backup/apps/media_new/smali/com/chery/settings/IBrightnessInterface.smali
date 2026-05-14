.class public interface abstract Lcom/chery/settings/IBrightnessInterface;
.super Ljava/lang/Object;
.source "IBrightnessInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/settings/IBrightnessInterface$Stub;,
        Lcom/chery/settings/IBrightnessInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getBrightness()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallBack(Lcom/chery/settings/IBrightnessCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setBrightness(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallBack(Lcom/chery/settings/IBrightnessCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
