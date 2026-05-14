.class Lcom/chery/media/model/service/LocalMusicBrowserService$2;
.super Ljava/lang/Object;
.source "LocalMusicBrowserService.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/LocalMusicBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/LocalMusicBrowserService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/LocalMusicBrowserService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/chery/media/model/service/LocalMusicBrowserService$2;->this$0:Lcom/chery/media/model/service/LocalMusicBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/chery/media/model/service/LocalMusicBrowserService$2;->this$0:Lcom/chery/media/model/service/LocalMusicBrowserService;

    invoke-static {p0}, Lcom/chery/media/model/service/LocalMusicBrowserService;->access$000(Lcom/chery/media/model/service/LocalMusicBrowserService;)V

    return-void
.end method

.method public onPlaylistChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
