.class public Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DABEnsembleNameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;

    .line 73
    invoke-virtual {p2}, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    return-void
.end method
