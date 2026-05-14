.class public interface abstract Landroid/car/ICarProjectionStatusListener;
.super Ljava/lang/Object;
.source "ICarProjectionStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarProjectionStatusListener$Stub;,
        Landroid/car/ICarProjectionStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
