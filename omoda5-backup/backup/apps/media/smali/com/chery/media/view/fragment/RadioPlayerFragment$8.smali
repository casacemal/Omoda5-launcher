.class Lcom/chery/media/view/fragment/RadioPlayerFragment$8;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 241
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-virtual {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chery/media/view/activity/MediaActivity;

    if-eqz p1, :cond_0

    .line 243
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$200(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->requestAudioFocus()V

    .line 244
    new-instance p0, Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;-><init>()V

    invoke-virtual {p1, p0}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
