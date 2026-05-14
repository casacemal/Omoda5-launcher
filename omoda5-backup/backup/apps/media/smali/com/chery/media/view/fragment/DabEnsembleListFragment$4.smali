.class Lcom/chery/media/view/fragment/DabEnsembleListFragment$4;
.super Ljava/lang/Object;
.source "DabEnsembleListFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabEnsembleListFragment;->initView()V
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

    .line 149
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$300(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$200(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->getDabListByEnsembleName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
