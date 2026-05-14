.class public interface abstract Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;
.super Ljava/lang/Object;
.source "DumpUsbScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/util/DumpUsbScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UsbScannerListener"
.end annotation


# virtual methods
.method public abstract onMediaSyncCompleted(ILjava/lang/String;I)V
.end method

.method public abstract onMediaSyncInProgress(ILjava/lang/String;ILandroid/media/UsbScannerResult;)V
.end method

.method public abstract onMediaSyncStarted(ILjava/lang/String;I)V
.end method

.method public abstract onMountReceived(ILjava/lang/String;I)V
.end method

.method public abstract onUnMountReceived(ILjava/lang/String;I)V
.end method
