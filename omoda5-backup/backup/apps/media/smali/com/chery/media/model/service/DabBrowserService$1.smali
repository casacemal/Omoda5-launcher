.class Lcom/chery/media/model/service/DabBrowserService$1;
.super Landroid/media/session/MediaSession$Callback;
.source "DabBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/DabBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/DabBrowserService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/DabBrowserService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/chery/media/model/service/DabBrowserService$1;->this$0:Lcom/chery/media/model/service/DabBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkipToNext()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/chery/media/model/service/DabBrowserService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onSkipToNext"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/chery/media/model/service/DabBrowserService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onSkipToPrevious"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
