.class Lcom/chery/media/view/fragment/DabPlayerFragment$18;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 384
    invoke-static {}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playingStateObserver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p1}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->pauseAnim()V

    .line 388
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1000(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/view/adapter/DABPlayListAdapter;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->setPlayingState(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p1}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->startAnim()V

    .line 393
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1000(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/view/adapter/DABPlayListAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->setPlayingState(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 381
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment$18;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
