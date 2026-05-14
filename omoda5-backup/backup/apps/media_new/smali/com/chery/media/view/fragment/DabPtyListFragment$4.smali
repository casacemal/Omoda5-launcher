.class Lcom/chery/media/view/fragment/DabPtyListFragment$4;
.super Ljava/lang/Object;
.source "DabPtyListFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPtyListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$300(Lcom/chery/media/view/fragment/DabPtyListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$200(Lcom/chery/media/view/fragment/DabPtyListFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->getDabListByPty(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
