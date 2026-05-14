.class Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddRequest"
.end annotation


# instance fields
.field public response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

.field public usbMusicInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;",
            "Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;",
            ")V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->usbMusicInfos:Ljava/util/List;

    .line 218
    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->usbMusicInfos:Ljava/util/List;

    .line 219
    iput-object p3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    return-void
.end method
