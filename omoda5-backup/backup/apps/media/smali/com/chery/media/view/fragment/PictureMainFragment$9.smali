.class Lcom/chery/media/view/fragment/PictureMainFragment$9;
.super Ljava/lang/Object;
.source "PictureMainFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureMainFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 3

    .line 314
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$900(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$000(Lcom/chery/media/view/fragment/PictureMainFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/chery/media/viewmodel/PictureViewModel;->changeCurrentUsb(I)V

    .line 315
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$900(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$000(Lcom/chery/media/view/fragment/PictureMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$1000(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/view/adapter/PictureAllListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->getPictureList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/chery/media/viewmodel/PictureViewModel;->changePlaylist(IILjava/util/List;)V

    .line 316
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$900(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$000(Lcom/chery/media/view/fragment/PictureMainFragment;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/PictureViewModel;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    .line 317
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/PictureActivity;

    const/4 p1, 0x0

    .line 318
    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/PictureViewerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
