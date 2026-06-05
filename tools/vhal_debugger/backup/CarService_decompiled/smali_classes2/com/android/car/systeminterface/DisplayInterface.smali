.class public interface abstract Lcom/android/car/systeminterface/DisplayInterface;
.super Ljava/lang/Object;
.source "DisplayInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
    }
.end annotation


# virtual methods
.method public abstract reconfigureSecondaryDisplays()V
.end method

.method public abstract refreshDisplayBrightness()V
.end method

.method public abstract setDisplayBrightness(I)V
.end method

.method public abstract setDisplayState(Z)V
.end method

.method public abstract startDisplayStateMonitoring(Lcom/android/car/CarPowerManagementService;)V
.end method

.method public abstract stopDisplayStateMonitoring()V
.end method
