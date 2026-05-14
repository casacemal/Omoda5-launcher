.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;
.super Ljava/lang/Thread;
.source "LocalMusicPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

.field final synthetic val$musicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    iput-object p2, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 371
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 372
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailClient;->getInstance()Lcom/chery/media/model/business/ThumbnailClient;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/ThumbnailClient;->createAudioThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0xd2

    .line 374
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;

    invoke-direct {v2, p0, v0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
