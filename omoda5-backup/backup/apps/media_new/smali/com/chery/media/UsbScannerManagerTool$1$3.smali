.class Lcom/chery/media/UsbScannerManagerTool$1$3;
.super Lcom/chery/media/IMediaServiceListener$Stub;
.source "UsbScannerManagerTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/UsbScannerManagerTool$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/UsbScannerManagerTool$1;


# direct methods
.method constructor <init>(Lcom/chery/media/UsbScannerManagerTool$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    invoke-direct {p0}, Lcom/chery/media/IMediaServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUSbScanStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUSbScanStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0, p1}, Lcom/chery/media/UsbScannerManagerTool;->access$500(Lcom/chery/media/UsbScannerManagerTool;I)V

    .line 124
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$700(Lcom/chery/media/UsbScannerManagerTool;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/UsbScannerManagerTool$1$3$3;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/UsbScannerManagerTool$1$3$3;-><init>(Lcom/chery/media/UsbScannerManagerTool$1$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsbMounted(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbMounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/chery/media/UsbScannerManagerTool;->access$400(Lcom/chery/media/UsbScannerManagerTool;ZLjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$700(Lcom/chery/media/UsbScannerManagerTool;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/UsbScannerManagerTool$1$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chery/media/UsbScannerManagerTool$1$3$1;-><init>(Lcom/chery/media/UsbScannerManagerTool$1$3;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsbUnMounted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUsbUnMounted"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chery/media/UsbScannerManagerTool;->access$400(Lcom/chery/media/UsbScannerManagerTool;ZLjava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$700(Lcom/chery/media/UsbScannerManagerTool;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/UsbScannerManagerTool$1$3$2;

    invoke-direct {v1, p0}, Lcom/chery/media/UsbScannerManagerTool$1$3$2;-><init>(Lcom/chery/media/UsbScannerManagerTool$1$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
