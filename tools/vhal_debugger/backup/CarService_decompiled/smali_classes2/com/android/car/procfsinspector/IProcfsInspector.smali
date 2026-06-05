.class public interface abstract Lcom/android/car/procfsinspector/IProcfsInspector;
.super Ljava/lang/Object;
.source "IProcfsInspector.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/procfsinspector/IProcfsInspector$Stub;,
        Lcom/android/car/procfsinspector/IProcfsInspector$Default;
    }
.end annotation


# virtual methods
.method public abstract readProcessTable()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/procfsinspector/ProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
