.class Lcom/chery/media/model/business/PictureBusiness$PlayInfo;
.super Ljava/lang/Object;
.source "PictureBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/PictureBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayInfo"
.end annotation


# instance fields
.field public currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

.field public playlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public playlistType:I

.field final synthetic this$0:Lcom/chery/media/model/business/PictureBusiness;

.field public usbName:Ljava/lang/String;

.field public usbType:I


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/PictureBusiness;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlistType:I

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    .line 79
    iput p2, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbType:I

    .line 80
    invoke-static {p2}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    return-void
.end method
