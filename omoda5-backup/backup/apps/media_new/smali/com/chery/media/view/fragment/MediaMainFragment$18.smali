.class Lcom/chery/media/view/fragment/MediaMainFragment$18;
.super Ljava/lang/Object;
.source "MediaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/MediaMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$18;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 348
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$18;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$1200(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    new-instance p1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$18;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$18;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$18;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x0

    .line 353
    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicListFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method
