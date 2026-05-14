.class public Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DABPtyNameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/DABPtyNameListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    .line 78
    invoke-virtual {p2}, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    return-void
.end method
