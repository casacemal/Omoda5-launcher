.class Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;
.super Ljava/lang/Object;
.source "Dialog_UsbConnect.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_UsbConnect;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMountStatusChanged(IZ)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->access$000(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)I

    move-result v0

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 79
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-static {p1}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->access$100(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2$1;-><init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onScanInfoUpdate(II)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-static {p2}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->access$000(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 92
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->updateView()V

    :cond_0
    return-void
.end method
