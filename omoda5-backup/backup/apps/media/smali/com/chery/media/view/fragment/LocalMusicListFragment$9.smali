.class Lcom/chery/media/view/fragment/LocalMusicListFragment$9;
.super Ljava/lang/Object;
.source "LocalMusicListFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicListFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$400(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$900(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->changePlaylist(I)V

    .line 297
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 298
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->play()V

    .line 299
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->updateCurrentTopSource(I)V

    :goto_0
    return-void
.end method
