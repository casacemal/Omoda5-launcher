.class Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment$22;->onChanged(Lsw/com/dabdrmradio/DabImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$22;

.field final synthetic val$finalThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment$22;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$22;

    iput-object p2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;->val$finalThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$22;

    iget-object v0, v0, Lcom/chery/media/view/fragment/DabPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$22;

    iget-object v0, v0, Lcom/chery/media/view/fragment/DabPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;->val$finalThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 447
    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 448
    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 449
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$22;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->setAlbumCover(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
