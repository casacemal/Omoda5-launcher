.class Lcom/chery/media/model/service/UsbVideoBrowserService$3;
.super Ljava/lang/Object;
.source "UsbVideoBrowserService.java"

# interfaces
.implements Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/UsbVideoBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/UsbVideoBrowserService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/UsbVideoBrowserService;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/chery/media/model/service/UsbVideoBrowserService$3;->this$0:Lcom/chery/media/model/service/UsbVideoBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService$3;->this$0:Lcom/chery/media/model/service/UsbVideoBrowserService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbVideoBrowserService;->access$000(Lcom/chery/media/model/service/UsbVideoBrowserService;)V

    return-void
.end method

.method public onPlaylistChanged(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
