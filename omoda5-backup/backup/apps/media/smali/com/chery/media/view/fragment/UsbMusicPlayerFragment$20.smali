.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;
.super Ljava/lang/Thread;
.source "UsbMusicPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

.field final synthetic val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    iput-object p2, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 436
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 437
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailClient;->getInstance()Lcom/chery/media/model/business/ThumbnailClient;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/ThumbnailClient;->createAudioThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0xd2

    .line 439
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20$1;

    invoke-direct {v2, p0, v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20$1;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
