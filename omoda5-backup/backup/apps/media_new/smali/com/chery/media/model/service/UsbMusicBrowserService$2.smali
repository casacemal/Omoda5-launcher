.class Lcom/chery/media/model/service/UsbMusicBrowserService$2;
.super Ljava/lang/Object;
.source "UsbMusicBrowserService.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/UsbMusicBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/UsbMusicBrowserService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/UsbMusicBrowserService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/chery/media/model/service/UsbMusicBrowserService$2;->this$0:Lcom/chery/media/model/service/UsbMusicBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 54
    iget-object p2, p0, Lcom/chery/media/model/service/UsbMusicBrowserService$2;->this$0:Lcom/chery/media/model/service/UsbMusicBrowserService;

    invoke-static {p2}, Lcom/chery/media/model/service/UsbMusicBrowserService;->access$000(Lcom/chery/media/model/service/UsbMusicBrowserService;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 55
    iget-object p0, p0, Lcom/chery/media/model/service/UsbMusicBrowserService$2;->this$0:Lcom/chery/media/model/service/UsbMusicBrowserService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbMusicBrowserService;->access$100(Lcom/chery/media/model/service/UsbMusicBrowserService;)V

    :cond_0
    return-void
.end method

.method public onPlaylistChanged(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
