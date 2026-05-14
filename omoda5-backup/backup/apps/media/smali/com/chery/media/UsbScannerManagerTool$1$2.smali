.class Lcom/chery/media/UsbScannerManagerTool$1$2;
.super Ljava/lang/Object;
.source "UsbScannerManagerTool.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 81
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1$2;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool$1$2;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

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

    .line 85
    invoke-interface {v0}, Lcom/chery/media/UsbScannerManagerTool$Listener;->onReady()V

    goto :goto_0

    :cond_0
    return-void
.end method
