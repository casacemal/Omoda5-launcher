.class Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;
.super Ljava/lang/Object;
.source "DumpUsbScannerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;->onMediaSyncStarted(ILjava/lang/String;I)V
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


# direct methods
.method constructor <init>(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;ILjava/lang/String;I)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->this$2:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;

    iput p2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->val$i:I

    iput-object p3, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->val$s:Ljava/lang/String;

    iput p4, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->val$i1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->this$2:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2;

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

    .line 167
    iget v2, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->val$i:I

    iget-object v3, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->val$s:Ljava/lang/String;

    iget v4, p0, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection$2$3;->val$i1:I

    invoke-interface {v1, v2, v3, v4}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;->onMediaSyncStarted(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
