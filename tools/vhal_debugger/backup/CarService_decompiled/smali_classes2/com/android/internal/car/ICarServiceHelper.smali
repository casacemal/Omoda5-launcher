.class public interface abstract Lcom/android/internal/car/ICarServiceHelper;
.super Ljava/lang/Object;
.source "ICarServiceHelper.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/car/ICarServiceHelper$Stub;,
        Lcom/android/internal/car/ICarServiceHelper$Default;
    }
.end annotation


# virtual methods
.method public abstract forceSuspend(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
