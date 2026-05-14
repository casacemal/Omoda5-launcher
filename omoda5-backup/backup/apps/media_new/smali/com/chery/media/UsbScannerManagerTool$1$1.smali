.class Lcom/chery/media/UsbScannerManagerTool$1$1;
.super Ljava/lang/Object;
.source "UsbScannerManagerTool.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 58
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1$1;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$1;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$100(Lcom/chery/media/UsbScannerManagerTool;)Lcom/chery/media/IMediaService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$1;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$100(Lcom/chery/media/UsbScannerManagerTool;)Lcom/chery/media/IMediaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/chery/media/IMediaService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 64
    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1$1;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object v0, v0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$200(Lcom/chery/media/UsbScannerManagerTool;)V

    .line 65
    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool$1$1;->this$1:Lcom/chery/media/UsbScannerManagerTool$1;

    iget-object p0, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {p0}, Lcom/chery/media/UsbScannerManagerTool;->access$300(Lcom/chery/media/UsbScannerManagerTool;)V

    :cond_0
    return-void
.end method
