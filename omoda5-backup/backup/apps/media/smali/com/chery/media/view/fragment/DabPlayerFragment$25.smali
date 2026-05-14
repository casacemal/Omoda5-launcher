.class Lcom/chery/media/view/fragment/DabPlayerFragment$25;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;
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

    .line 505
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allListChanged()V
    .locals 1

    .line 513
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/DabPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public favorInfoChanged()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v1

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1300(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/model/business/DabInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/DabViewModel;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
