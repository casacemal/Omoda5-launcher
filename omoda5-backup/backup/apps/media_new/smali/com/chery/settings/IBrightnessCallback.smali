.class public interface abstract Lcom/chery/settings/IBrightnessCallback;
.super Ljava/lang/Object;
.source "IBrightnessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/settings/IBrightnessCallback$Stub;,
        Lcom/chery/settings/IBrightnessCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onBrightnessChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
