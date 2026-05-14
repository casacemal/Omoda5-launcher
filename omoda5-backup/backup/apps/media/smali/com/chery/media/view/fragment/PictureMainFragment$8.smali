.class Lcom/chery/media/view/fragment/PictureMainFragment$8;
.super Ljava/lang/Object;
.source "PictureMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureMainFragment;->initView()V
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

    .line 214
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$8;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 217
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$8;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$900(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$8;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$000(Lcom/chery/media/view/fragment/PictureMainFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/chery/media/viewmodel/PictureViewModel;->changeCurrentUsb(I)V

    .line 218
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$8;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$900(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$8;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$000(Lcom/chery/media/view/fragment/PictureMainFragment;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/chery/media/viewmodel/PictureViewModel;->changeCurrentPlaying(II)V

    .line 219
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$8;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-virtual {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chery/media/view/activity/PictureActivity;

    const/4 v0, 0x0

    .line 220
    invoke-static {v0, v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/PictureViewerFragment;

    move-result-object v0

    .line 221
    invoke-virtual {p1, v0}, Lcom/chery/media/view/activity/PictureActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    .line 222
    new-instance p1, Lcom/chery/media/view/fragment/PictureMainFragment$8$1;

    invoke-direct {p1, p0, v0}, Lcom/chery/media/view/fragment/PictureMainFragment$8$1;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment$8;Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->addResumeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
