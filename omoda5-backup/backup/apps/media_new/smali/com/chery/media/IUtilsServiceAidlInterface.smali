.class public interface abstract Lcom/chery/media/IUtilsServiceAidlInterface;
.super Ljava/lang/Object;
.source "IUtilsServiceAidlInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/IUtilsServiceAidlInterface$Stub;,
        Lcom/chery/media/IUtilsServiceAidlInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract basicTypes(IJZFDLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
