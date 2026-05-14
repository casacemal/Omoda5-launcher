.class Lcom/chery/media/view/activity/MediaActivity$18;
.super Ljava/lang/Thread;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/MediaActivity;->updateTopInfoOfLocalMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;

.field final synthetic val$musicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$18;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    iput-object p2, p0, Lcom/chery/media/view/activity/MediaActivity$18;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 532
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 533
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailClient;->getInstance()Lcom/chery/media/model/business/ThumbnailClient;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity$18;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/ThumbnailClient;->createAudioThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    .line 535
    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity$18;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v1}, Lcom/chery/media/view/activity/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 537
    invoke-virtual {v0, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 538
    invoke-virtual {v0, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 539
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$18;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/MediaActivity;->access$400(Lcom/chery/media/view/activity/MediaActivity;)Lcom/chery/media/databinding/ActivityMediaBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
