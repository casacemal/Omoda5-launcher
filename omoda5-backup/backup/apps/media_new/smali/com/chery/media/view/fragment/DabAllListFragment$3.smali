.class Lcom/chery/media/view/fragment/DabAllListFragment$3;
.super Ljava/lang/Object;
.source "DabAllListFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabAllListFragment;->initView()V
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

    .line 133
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$3;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelFavor(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    return-void
.end method

.method public onItemClicked(Lcom/chery/media/model/business/DabInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 137
    iget-object p2, p0, Lcom/chery/media/view/fragment/DabAllListFragment$3;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$200(Lcom/chery/media/view/fragment/DabAllListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/viewmodel/DabViewModel;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    .line 138
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$3;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$200(Lcom/chery/media/view/fragment/DabAllListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/viewmodel/DabViewModel;->setCurPlayType(ILjava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$3;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$200(Lcom/chery/media/view/fragment/DabAllListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->playPause()V

    :goto_0
    return-void
.end method
