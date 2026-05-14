.class Lcom/chery/media/view/fragment/DabPlayerFragment$6;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$6;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$6;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-virtual {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chery/media/view/activity/MediaActivity;

    if-eqz p1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$6;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$200(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/media/viewmodel/RadioViewModel;->changeBand(I)V

    const/4 p0, 0x0

    .line 199
    invoke-static {p0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/RadioPlayerFragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
