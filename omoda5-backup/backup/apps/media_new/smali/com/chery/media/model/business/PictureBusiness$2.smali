.class Lcom/chery/media/model/business/PictureBusiness$2;
.super Ljava/lang/Object;
.source "PictureBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/PictureBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/PictureBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/PictureBusiness;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMountStatusChanged(IZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 145
    iget-object p2, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1, v0, v1}, Lcom/chery/media/model/business/PictureBusiness;->changePlaylist(IILjava/util/List;)V

    .line 147
    iget-object p2, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/PictureBusiness;->access$100(Lcom/chery/media/model/business/PictureBusiness;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 148
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->access$200(Lcom/chery/media/model/business/PictureBusiness;I)V

    :cond_0
    return-void
.end method

.method public onScanInfoUpdate(II)V
    .locals 2

    const/16 v0, 0x22

    if-eq p2, v0, :cond_0

    const/16 v0, 0x23

    if-ne p2, v0, :cond_2

    .line 157
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p2

    .line 158
    iget p2, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->picturesCount:I

    if-lez p2, :cond_2

    .line 159
    iget-object p2, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/PictureBusiness;->access$100(Lcom/chery/media/model/business/PictureBusiness;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 160
    iget-object p2, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/PictureBusiness;->access$200(Lcom/chery/media/model/business/PictureBusiness;I)V

    .line 163
    :cond_1
    iget-object p2, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getPictures(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1, v0}, Lcom/chery/media/model/business/PictureBusiness;->changePlaylist(IILjava/util/List;)V

    .line 164
    iget-object p2, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/PictureBusiness;->access$300(Lcom/chery/media/model/business/PictureBusiness;I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    if-nez p2, :cond_2

    .line 165
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$2;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-virtual {p0, p1, v1}, Lcom/chery/media/model/business/PictureBusiness;->changeCurrentPlaying(II)V

    :cond_2
    return-void
.end method
