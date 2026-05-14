.class Lcom/chery/media/view/fragment/DabFavorListFragment$6;
.super Ljava/lang/Object;
.source "DabFavorListFragment.java"

# interfaces
.implements Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabFavorListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allListChanged()V
    .locals 0

    return-void
.end method

.method public favorInfoChanged()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$300(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$200(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getFavorList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$400(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/databinding/FragmentDabAllListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->tvNoFavor:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$200(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->getFavorList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
