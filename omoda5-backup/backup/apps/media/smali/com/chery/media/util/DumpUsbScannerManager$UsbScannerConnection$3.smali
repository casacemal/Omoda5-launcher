.class Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;
.super Ljava/lang/Object;
.source "DumpUsbScannerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;Landroid/content/Intent;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iput-object p2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->access$400(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DumpUsbScannerManager"

    const-string v1, "Service not connected yet, to retry!"

    .line 212
    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->access$500(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 214
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$3;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
