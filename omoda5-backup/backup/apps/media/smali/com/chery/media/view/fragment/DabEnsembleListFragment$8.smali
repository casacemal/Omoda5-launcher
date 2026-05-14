.class Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;
.super Landroid/os/Handler;
.source "DabEnsembleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabEnsembleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 214
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$500(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$200(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getAllEnsembleName()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;->setData(Ljava/util/List;)V

    .line 217
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$600(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->tvEmptyList:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$200(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getALLList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$200(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/DabViewModel;->getAllEnsembleName()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$300(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$200(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$8;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$200(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->getAllEnsembleName()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/chery/media/viewmodel/DabViewModel;->getDabListByEnsembleName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method
