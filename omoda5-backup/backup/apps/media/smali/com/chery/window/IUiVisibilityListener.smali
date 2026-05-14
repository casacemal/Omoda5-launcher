.class public interface abstract Lcom/chery/window/IUiVisibilityListener;
.super Ljava/lang/Object;
.source "IUiVisibilityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/window/IUiVisibilityListener$Stub;,
        Lcom/chery/window/IUiVisibilityListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onUiVisibilityChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
