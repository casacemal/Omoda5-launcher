.class Lcom/chery/media/model/service/UsbScannerManagerService$3;
.super Ljava/lang/Object;
.source "UsbScannerManagerService.java"

# interfaces
.implements Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;


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

    .line 108
    iput-object p1, p0, Lcom/chery/media/model/service/UsbScannerManagerService$3;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSyncCompleted(ILjava/lang/String;I)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$3;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/storage/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x23

    invoke-static {p0, p2, p1}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$500(Lcom/chery/media/model/service/UsbScannerManagerService;ILjava/lang/String;)V

    return-void
.end method

.method public onMediaSyncInProgress(ILjava/lang/String;ILandroid/media/UsbScannerResult;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$3;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/storage/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x22

    invoke-static {p0, p2, p1}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$500(Lcom/chery/media/model/service/UsbScannerManagerService;ILjava/lang/String;)V

    return-void
.end method

.method public onMediaSyncStarted(ILjava/lang/String;I)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$3;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/storage/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x21

    invoke-static {p0, p2, p1}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$500(Lcom/chery/media/model/service/UsbScannerManagerService;ILjava/lang/String;)V

    return-void
.end method

.method public onMountReceived(ILjava/lang/String;I)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$3;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/storage/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p2, p1}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$600(Lcom/chery/media/model/service/UsbScannerManagerService;ZLjava/lang/String;)V

    return-void
.end method

.method public onUnMountReceived(ILjava/lang/String;I)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/chery/media/model/service/UsbScannerManagerService$3;->this$0:Lcom/chery/media/model/service/UsbScannerManagerService;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/chery/media/model/service/UsbScannerManagerService;->access$600(Lcom/chery/media/model/service/UsbScannerManagerService;ZLjava/lang/String;)V

    return-void
.end method
