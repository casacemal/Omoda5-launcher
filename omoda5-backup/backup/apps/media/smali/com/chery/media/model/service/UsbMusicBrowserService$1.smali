.class Lcom/chery/media/model/service/UsbMusicBrowserService$1;
.super Landroid/media/session/MediaSession$Callback;
.source "UsbMusicBrowserService.java"


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

    .line 43
    iput-object p1, p0, Lcom/chery/media/model/service/UsbMusicBrowserService$1;->this$0:Lcom/chery/media/model/service/UsbMusicBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method
