.class Lcom/chery/media/view/fragment/MediaMainFragment$14;
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

    .line 280
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$14;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$14;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$1000(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/BtMusicViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 285
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$14;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x0

    .line 286
    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :cond_1
    :goto_0
    return-void
.end method
