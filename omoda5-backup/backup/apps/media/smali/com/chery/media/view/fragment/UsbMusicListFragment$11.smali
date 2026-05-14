.class Lcom/chery/media/view/fragment/UsbMusicListFragment$11;
.super Ljava/lang/Object;
.source "UsbMusicListFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;


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

    .line 304
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicClick(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 3

    .line 319
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$700(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->changePlaylist(IILjava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$700(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 321
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$700(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->play(I)V

    .line 322
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->updateCurrentTopSource(I)V

    return-void
.end method

.method public onRootFolderClick(I)V
    .locals 3

    .line 307
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$1100(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 308
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$400(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    return-void
.end method

.method public onSubFolderClick(ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
    .locals 0

    .line 313
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 314
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$400(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    return-void
.end method
