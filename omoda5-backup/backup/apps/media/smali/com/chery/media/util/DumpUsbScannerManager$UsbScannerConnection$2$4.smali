.class Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;
.super Ljava/lang/Object;
.source "DumpUsbScannerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->onMediaSyncInProgress(ILjava/lang/String;ILandroid/media/UsbScannerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;

.field final synthetic val$i:I

.field final synthetic val$i1:I

.field final synthetic val$s:Ljava/lang/String;

.field final synthetic val$usbScannerResult:Landroid/media/UsbScannerResult;


# direct methods
.method constructor <init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;ILjava/lang/String;ILandroid/media/UsbScannerResult;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->this$2:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;

    iput p2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$i:I

    iput-object p3, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$s:Ljava/lang/String;

    iput p4, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$i1:I

    iput-object p5, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$usbScannerResult:Landroid/media/UsbScannerResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->this$2:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->this$1:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, v0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->this$0:Lcom/chery/media/util/DumpUsbScannerManager;

    invoke-static {v0}, Lcom/chery/media/util/DumpUsbScannerManager;->access$200(Lcom/chery/media/util/DumpUsbScannerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;

    .line 180
    iget v2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$i:I

    iget-object v3, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$s:Ljava/lang/String;

    iget v4, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$i1:I

    iget-object v5, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$4;->val$usbScannerResult:Landroid/media/UsbScannerResult;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;->onMediaSyncInProgress(ILjava/lang/String;ILandroid/media/UsbScannerResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method
