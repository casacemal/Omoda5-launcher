.class Lcom/chery/media/view/fragment/DabAllListFragment$7;
.super Landroid/os/Handler;
.source "DabAllListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabAllListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabAllListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabAllListFragment;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 209
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$200(Lcom/chery/media/view/fragment/DabAllListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getALLList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$502(Lcom/chery/media/view/fragment/DabAllListFragment;Ljava/util/List;)Ljava/util/List;

    .line 212
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$300(Lcom/chery/media/view/fragment/DabAllListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$500(Lcom/chery/media/view/fragment/DabAllListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    .line 213
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$600(Lcom/chery/media/view/fragment/DabAllListFragment;)Lcom/chery/media/databinding/FragmentDabAllListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabAllListBinding;->tvNoFavor:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$500(Lcom/chery/media/view/fragment/DabAllListFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
