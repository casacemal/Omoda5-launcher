.class Lcom/chery/media/model/business/UsbScannerBusiness$6;
.super Ljava/lang/Object;
.source "UsbScannerBusiness.java"

# interfaces
.implements Lcom/chery/media/util/Utils$SortField;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbScannerBusiness;->addFolder(Ljava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chery/media/util/Utils$SortField<",
        "Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UsbScannerBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbScannerBusiness;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$6;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFiled(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)Ljava/lang/String;
    .locals 0

    .line 537
    iget-object p0, p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getFiled(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 534
    check-cast p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness$6;->getFiled(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
