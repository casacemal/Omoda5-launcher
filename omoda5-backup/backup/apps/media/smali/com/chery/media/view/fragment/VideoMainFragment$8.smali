.class Lcom/chery/media/view/fragment/VideoMainFragment$8;
.super Ljava/lang/Object;
.source "VideoMainFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/VideoAllListAdapter$OnItemClickListener;


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

    .line 282
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 3

    .line 285
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$900(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->changePlaylist(IILjava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$900(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/VideoViewModel;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    .line 287
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$900(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chery/media/viewmodel/VideoViewModel;->play(I)V

    .line 288
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/chery/media/view/activity/VideoPlayerActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/chery/media/view/fragment/VideoMainFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
