.class Lcom/chery/media/model/service/UsbScannerManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "UsbScannerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/UsbScannerManagerService;->onCreate()V
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

    .line 139
    iput-object p1, p0, Lcom/chery/media/model/service/UsbScannerManagerService$4;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 142
    invoke-static {}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$700()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "device"

    .line 143
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 144
    invoke-static {}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    iget-object p2, p0, Lcom/chery/media/model/service/UsbScannerManagerService$4;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {p2}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$800(Lcom/chery/media/model/service/UsbScannerManagerService;)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 150
    invoke-static {}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string p2, "delete attachedDeviceId"

    invoke-static {p1, p2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$4;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$802(Lcom/chery/media/model/service/UsbScannerManagerService;I)I

    :cond_1
    :goto_0
    return-void
.end method
