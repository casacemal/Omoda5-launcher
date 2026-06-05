.class public interface abstract Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;
.super Ljava/lang/Object;
.source "BinderInterfaceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BinderInterfaceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BinderEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onBinderDeath(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "TT;>;)V"
        }
    .end annotation
.end method
