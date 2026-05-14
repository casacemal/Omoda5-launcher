.class Lcom/chery/media/view/fragment/MediaMainFragment$12;
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

    .line 245
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$12;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$12;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chery/media/view/activity/MediaActivity;

    .line 249
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$12;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$400(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/MediaViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    .line 250
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 253
    invoke-static {p0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/RadioPlayerFragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    new-instance p0, Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;-><init>()V

    invoke-virtual {p1, p0}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :goto_1
    return-void
.end method
