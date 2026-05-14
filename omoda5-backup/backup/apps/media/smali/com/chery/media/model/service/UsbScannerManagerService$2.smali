.class Lcom/chery/media/model/service/UsbScannerManagerService$2;
.super Ljava/lang/Object;
.source "UsbScannerManagerService.java"

# interfaces
.implements Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;


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

    .line 95
    iput-object p1, p0, Lcom/chery/media/model/service/UsbScannerManagerService$2;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$2;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {v0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$000(Lcom/chery/media/model/service/UsbScannerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$2;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {v0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$400(Lcom/chery/media/model/service/UsbScannerManagerService;)Lcom/chery/media/util/DumpUsbScannerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/chery/media/util/DumpUsbScannerManager;->getScanStatus(II)I

    move-result v1

    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$2;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$100(Lcom/chery/media/model/service/UsbScannerManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$500(Lcom/chery/media/model/service/UsbScannerManagerService;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
