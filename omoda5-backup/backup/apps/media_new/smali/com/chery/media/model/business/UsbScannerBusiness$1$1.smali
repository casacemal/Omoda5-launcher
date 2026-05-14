.class Lcom/chery/media/model/business/UsbScannerBusiness$1$1;
.super Ljava/lang/Object;
.source "UsbScannerBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbScannerBusiness$1;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/UsbScannerBusiness$1;

.field final synthetic val$mountPath:Ljava/lang/String;

.field final synthetic val$musicInfoMap:Ljava/util/Map;

.field final synthetic val$pictureInfoMap:Ljava/util/Map;

.field final synthetic val$scanStatus:I

.field final synthetic val$usbType:I

.field final synthetic val$videoInfoMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbScannerBusiness$1;ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->this$1:Lcom/chery/media/model/business/UsbScannerBusiness$1;

    iput p2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$usbType:I

    iput-object p3, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$mountPath:Ljava/lang/String;

    iput p4, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$scanStatus:I

    iput-object p5, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$musicInfoMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$videoInfoMap:Ljava/util/Map;

    iput-object p7, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$pictureInfoMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 116
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->this$1:Lcom/chery/media/model/business/UsbScannerBusiness$1;

    iget-object v1, v0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    iget v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$usbType:I

    iget-object v3, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$mountPath:Ljava/lang/String;

    iget v4, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$scanStatus:I

    iget-object v5, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$musicInfoMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$videoInfoMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;->val$pictureInfoMap:Ljava/util/Map;

    invoke-static/range {v1 .. v7}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$500(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
