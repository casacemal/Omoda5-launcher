.class Lcom/chery/media/model/business/LocalMusicBusiness$8;
.super Ljava/util/ArrayList;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;->addToLocal(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

.field final synthetic val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$8;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$8;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$8;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$8;->add(Ljava/lang/Object;)Z

    return-void
.end method
