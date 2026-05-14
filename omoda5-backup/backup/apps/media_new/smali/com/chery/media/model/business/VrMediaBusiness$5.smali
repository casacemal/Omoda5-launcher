.class Lcom/chery/media/model/business/VrMediaBusiness$5;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrMediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrMediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$5;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMountStatusChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 156
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$5;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$600(Lcom/chery/media/model/business/VrMediaBusiness;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->access$200(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onScanInfoUpdate(II)V
    .locals 2

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    .line 163
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p2

    iget p2, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    if-lez p2, :cond_0

    .line 164
    iget-object p2, p0, Lcom/chery/media/model/business/VrMediaBusiness$5;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$600(Lcom/chery/media/model/business/VrMediaBusiness;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$200(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Z)V

    .line 165
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$5;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$600(Lcom/chery/media/model/business/VrMediaBusiness;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$300(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
