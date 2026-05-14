.class Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;
.super Ljava/lang/Object;
.source "DumpUsbScannerManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;


# direct methods
.method constructor <init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "DumpUsbScannerManager"

    const-string v1, "onBindingDied(): "

    .line 119
    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->access$000(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Landroid/media/IUsbScannerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->access$000(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Landroid/media/IUsbScannerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IUsbScannerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-static {v1}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->access$100(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 123
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->disconnect()V

    .line 124
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$1;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->connect()V

    .line 125
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
