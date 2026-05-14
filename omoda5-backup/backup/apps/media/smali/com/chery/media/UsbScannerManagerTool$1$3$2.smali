.class Lcom/chery/media/UsbScannerManagerTool$1$3$2;
.super Ljava/lang/Object;
.source "UsbScannerManagerTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/UsbScannerManagerTool$1$3;->onUsbUnMounted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/chery/media/UsbScannerManagerTool$1$3;


# direct methods
.method constructor <init>(Lcom/chery/media/UsbScannerManagerTool$1$3;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1$3$2;->this$2:Lcom/chery/media/UsbScannerManagerTool$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3$2;->this$2:Lcom/chery/media/UsbScannerManagerTool$1$3;

    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {p0}, Lcom/chery/media/UsbScannerManagerTool;->access$600(Lcom/chery/media/UsbScannerManagerTool;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/UsbScannerManagerTool$Listener;

    .line 114
    invoke-interface {v0}, Lcom/chery/media/UsbScannerManagerTool$Listener;->onUnMounted()V

    goto :goto_0

    :cond_0
    return-void
.end method
