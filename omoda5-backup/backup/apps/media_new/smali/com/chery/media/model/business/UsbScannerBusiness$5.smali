.class Lcom/chery/media/model/business/UsbScannerBusiness$5;
.super Ljava/lang/Object;
.source "UsbScannerBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbScannerBusiness;->updateMediaFiles(ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

.field final synthetic val$mountPath:Ljava/lang/String;

.field final synthetic val$musicInfoMap:Ljava/util/Map;

.field final synthetic val$musicInfos:Ljava/util/List;

.field final synthetic val$pictureInfoMap:Ljava/util/Map;

.field final synthetic val$pictureInfos:Ljava/util/List;

.field final synthetic val$scanStatus:I

.field final synthetic val$usbType:I

.field final synthetic val$videoInfoMap:Ljava/util/Map;

.field final synthetic val$videoInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;I)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    iput p2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    iput-object p3, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$mountPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$musicInfoMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$musicInfos:Ljava/util/List;

    iput-object p6, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$videoInfoMap:Ljava/util/Map;

    iput-object p7, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$videoInfos:Ljava/util/List;

    iput-object p8, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$pictureInfoMap:Ljava/util/Map;

    iput-object p9, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$pictureInfos:Ljava/util/List;

    iput p10, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$scanStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v0

    .line 362
    iget-boolean v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    if-nez v1, :cond_0

    .line 363
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "device not mounted any more!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 366
    :cond_0
    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$mountPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mount path not same any more!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$200(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$musicInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$800(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$musicInfos:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$videoInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$900(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$videoInfos:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$pictureInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1000(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$pictureInfos:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$musicInfos:Ljava/util/List;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$videoInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$pictureInfos:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1800(Lcom/chery/media/model/business/UsbScannerBusiness;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 382
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$usbType:I

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$mountPath:Ljava/lang/String;

    iget p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$5;->val$scanStatus:I

    invoke-static {v0, v1, v2, p0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1700(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/String;I)V

    return-void
.end method
