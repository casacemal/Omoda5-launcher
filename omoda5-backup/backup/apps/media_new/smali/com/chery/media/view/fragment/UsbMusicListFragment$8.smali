.class Lcom/chery/media/view/fragment/UsbMusicListFragment$8;
.super Ljava/lang/Object;
.source "UsbMusicListFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicListFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 3

    .line 257
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$700(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->changePlaylist(IILjava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$700(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 259
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$700(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->play(I)V

    .line 260
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->updateCurrentTopSource(I)V

    return-void
.end method
