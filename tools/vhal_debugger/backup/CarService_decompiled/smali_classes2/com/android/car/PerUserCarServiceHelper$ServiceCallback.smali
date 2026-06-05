.class public interface abstract Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;
.super Ljava/lang/Object;
.source "PerUserCarServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/PerUserCarServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceCallback"
.end annotation


# virtual methods
.method public abstract onPreUnbind()V
.end method

.method public abstract onServiceConnected(Landroid/car/ICarUserService;)V
.end method

.method public abstract onServiceDisconnected()V
.end method
