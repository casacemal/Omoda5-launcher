.class public interface abstract Lcom/chery/media/IMediaService;
.super Ljava/lang/Object;
.source "IMediaService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/IMediaService$Stub;,
        Lcom/chery/media/IMediaService$Default;
    }
.end annotation


# static fields
.field public static final USB_SCAN_COMPLETED:I = 0x23

.field public static final USB_SCAN_INCOMPLETE:I = 0x25

.field public static final USB_SCAN_IN_PROGRESS:I = 0x22

.field public static final USB_SCAN_NONE:I = 0x20

.field public static final USB_SCAN_STARTED:I = 0x21

.field public static final USB_SCAN_TIMEOUT:I = 0x24


# virtual methods
.method public abstract addListener(Lcom/chery/media/IMediaServiceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUsbMountPath()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUsbScanStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUsbMounted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/chery/media/IMediaServiceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
