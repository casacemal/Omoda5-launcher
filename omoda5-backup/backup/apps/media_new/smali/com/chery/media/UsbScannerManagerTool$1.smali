.class Lcom/chery/media/UsbScannerManagerTool$1;
.super Ljava/lang/Object;
.source "UsbScannerManagerTool.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/UsbScannerManagerTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/UsbScannerManagerTool;


# direct methods
.method constructor <init>(Lcom/chery/media/UsbScannerManagerTool;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    new-instance p1, Lcom/chery/media/UsbScannerManagerTool$1$1;

    invoke-direct {p1, p0}, Lcom/chery/media/UsbScannerManagerTool$1$1;-><init>(Lcom/chery/media/UsbScannerManagerTool$1;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {p2}, Lcom/chery/media/IMediaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/media/IMediaService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chery/media/UsbScannerManagerTool;->access$102(Lcom/chery/media/UsbScannerManagerTool;Lcom/chery/media/IMediaService;)Lcom/chery/media/IMediaService;

    .line 75
    :try_start_1
    iget-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    iget-object p2, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {p2}, Lcom/chery/media/UsbScannerManagerTool;->access$100(Lcom/chery/media/UsbScannerManagerTool;)Lcom/chery/media/IMediaService;

    move-result-object p2

    invoke-interface {p2}, Lcom/chery/media/IMediaService;->isUsbMounted()Z

    move-result p2

    iget-object v0, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {v0}, Lcom/chery/media/UsbScannerManagerTool;->access$100(Lcom/chery/media/UsbScannerManagerTool;)Lcom/chery/media/IMediaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/chery/media/IMediaService;->getUsbMountPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/chery/media/UsbScannerManagerTool;->access$400(Lcom/chery/media/UsbScannerManagerTool;ZLjava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    iget-object p2, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {p2}, Lcom/chery/media/UsbScannerManagerTool;->access$100(Lcom/chery/media/UsbScannerManagerTool;)Lcom/chery/media/IMediaService;

    move-result-object p2

    invoke-interface {p2}, Lcom/chery/media/IMediaService;->getUsbScanStatus()I

    move-result p2

    invoke-static {p1, p2}, Lcom/chery/media/UsbScannerManagerTool;->access$500(Lcom/chery/media/UsbScannerManagerTool;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    :goto_1
    iget-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {p1}, Lcom/chery/media/UsbScannerManagerTool;->access$700(Lcom/chery/media/UsbScannerManagerTool;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/UsbScannerManagerTool$1$2;

    invoke-direct {p2, p0}, Lcom/chery/media/UsbScannerManagerTool$1$2;-><init>(Lcom/chery/media/UsbScannerManagerTool$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :try_start_2
    iget-object p1, p0, Lcom/chery/media/UsbScannerManagerTool$1;->this$0:Lcom/chery/media/UsbScannerManagerTool;

    invoke-static {p1}, Lcom/chery/media/UsbScannerManagerTool;->access$100(Lcom/chery/media/UsbScannerManagerTool;)Lcom/chery/media/IMediaService;

    move-result-object p1

    new-instance p2, Lcom/chery/media/UsbScannerManagerTool$1$3;

    invoke-direct {p2, p0}, Lcom/chery/media/UsbScannerManagerTool$1$3;-><init>(Lcom/chery/media/UsbScannerManagerTool$1;)V

    invoke-interface {p1, p2}, Lcom/chery/media/IMediaService;->addListener(Lcom/chery/media/IMediaServiceListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 135
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 141
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
