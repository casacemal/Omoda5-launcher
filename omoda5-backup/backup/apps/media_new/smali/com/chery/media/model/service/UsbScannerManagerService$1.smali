.class Lcom/chery/media/model/service/UsbScannerManagerService$1;
.super Lcom/chery/media/IMediaService$Stub;
.source "UsbScannerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/service/UsbScannerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/UsbScannerManagerService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/UsbScannerManagerService;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/chery/media/model/service/UsbScannerManagerService$1;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-direct {p0}, Lcom/chery/media/IMediaService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/chery/media/IMediaServiceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$1;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$300(Lcom/chery/media/model/service/UsbScannerManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public getUsbMountPath()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$1;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$100(Lcom/chery/media/model/service/UsbScannerManagerService;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsbScanStatus()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$1;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$200(Lcom/chery/media/model/service/UsbScannerManagerService;)I

    move-result p0

    return p0
.end method

.method public isUsbMounted()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$1;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$000(Lcom/chery/media/model/service/UsbScannerManagerService;)Z

    move-result p0

    return p0
.end method

.method public removeListener(Lcom/chery/media/IMediaServiceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$1;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$300(Lcom/chery/media/model/service/UsbScannerManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
