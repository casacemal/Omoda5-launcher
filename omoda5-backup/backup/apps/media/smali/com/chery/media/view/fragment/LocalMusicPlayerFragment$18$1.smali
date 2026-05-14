.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;
.super Ljava/lang/Object;
.source "LocalMusicPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;

.field final synthetic val$finalThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;

    iput-object p2, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;->val$finalThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;

    iget-object v0, v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;

    iget-object v0, v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;->val$finalThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 382
    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 383
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;

    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1300(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->setAlbumCover(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
