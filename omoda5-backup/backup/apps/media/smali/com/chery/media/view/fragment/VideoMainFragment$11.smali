.class Lcom/chery/media/view/fragment/VideoMainFragment$11;
.super Ljava/lang/Object;
.source "VideoMainFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoMainFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubFolderClick(ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
    .locals 1

    .line 335
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$600(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result v0

    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object p1

    .line 336
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$500(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 337
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$700(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/databinding/FragmentVideoMainBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvFolderName:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$800(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    return-void
.end method

.method public onVideoClick(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 3

    .line 343
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$900(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$500(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->changePlaylist(IILjava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$900(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/VideoViewModel;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    .line 345
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$900(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chery/media/viewmodel/VideoViewModel;->play(I)V

    .line 346
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$11;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/chery/media/view/activity/VideoPlayerActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/chery/media/view/fragment/VideoMainFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
