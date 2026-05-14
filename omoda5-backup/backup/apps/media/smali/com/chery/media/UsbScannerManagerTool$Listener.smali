.class public interface abstract Lcom/chery/media/UsbScannerManagerTool$Listener;
.super Ljava/lang/Object;
.source "UsbScannerManagerTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/UsbScannerManagerTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onMounted(Ljava/lang/String;Z)V
.end method

.method public abstract onReady()V
.end method

.method public abstract onScanStatusChanged(I)V
.end method

.method public abstract onUnMounted()V
.end method
