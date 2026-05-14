.class Lcom/chery/media/UsbScannerManagerTool$1$3$3;
.super Ljava/lang/Object;
.source "UsbScannerManagerTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/UsbScannerManagerTool$1$3;->onUSbScanStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/chery/media/UsbScannerManagerTool$1$3;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/chery/media/UsbScannerManagerTool$1$3;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1$3$3;->this$2:Lcom/chery/media/UsbScannerManagerTool$1$3;

    iput p2, p0, Lcom/chery/media/UsbScannerManagerTool$1$3$3;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$3$3;->this$2:Lcom/chery/media/UsbScannerManagerTool$1$3;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1$3;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$600(Lcom/chery/media/UsbScannerManagerTool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/UsbScannerManagerTool$Listener;

    .line 128
    iget v2, p0, Lcom/chery/media/UsbScannerManagerTool$1$3$3;->val$status:I

    invoke-interface {v1, v2}, Lcom/chery/media/UsbScannerManagerTool$Listener;->onScanStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
