.class public interface abstract Lcom/avn/tools/usb/UsbWatcher$onConnectionStateListener;
.super Ljava/lang/Object;
.source "UsbWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avn/tools/usb/UsbWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onConnectionStateListener"
.end annotation


# virtual methods
.method public abstract onInserted(I)V
.end method

.method public abstract onMounted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRemoved(I)V
.end method
