.class public interface abstract Lcom/chery/power/IPowerWakeLock;
.super Ljava/lang/Object;
.source "IPowerWakeLock.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/power/IPowerWakeLock$Stub;,
        Lcom/chery/power/IPowerWakeLock$Default;
    }
.end annotation


# virtual methods
.method public abstract acquireWakeLock(Lcom/chery/power/IWakeLockListener;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasWakeLock(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releaseWakeLock(Lcom/chery/power/IWakeLockListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
