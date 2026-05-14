.class public interface abstract Lcom/chery/power/IWakeLockListener;
.super Ljava/lang/Object;
.source "IWakeLockListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/power/IWakeLockListener$Stub;,
        Lcom/chery/power/IWakeLockListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onWakeLockRelease(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
