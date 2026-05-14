.class Lcom/chery/media/model/service/LocalMusicBrowserService$1;
.super Landroid/media/session/MediaSession$Callback;
.source "LocalMusicBrowserService.java"


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

    .line 37
    iput-object p1, p0, Lcom/chery/media/model/service/LocalMusicBrowserService$1;->this$0:Lcom/chery/media/model/service/LocalMusicBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method
