.class Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;
.super Landroid/media/IUsbScannerEventListener$Stub;
.source "DumpUsbScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;-><init>(Lcom/chery/media/util/DumpUsbScannerManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

.field final synthetic val$this$0:Lcom/chery/media/util/DumpUsbScannerManager;


# direct methods
.method constructor <init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;Lcom/chery/media/util/DumpUsbScannerManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iput-object p2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->val$this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-direct {p0}, Landroid/media/IUsbScannerEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSyncCompleted(ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onMediaSyncCompleted %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$5;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaSyncInProgress(ILjava/lang/String;ILandroid/media/UsbScannerResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "onMediaSyncInProgress %s %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;ILjava/lang/String;ILandroid/media/UsbScannerResult;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaSyncStarted(ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onMediaSyncStarted %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMountReceived(ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onMountReceived %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$1;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnMountReceived(ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onUnMountReceived %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$2;-><init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
