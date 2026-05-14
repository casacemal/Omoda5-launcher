.class public Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DABAllListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/DABAllListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/DABAllListAdapter;Lcom/chery/media/databinding/DabListAllItemLayoutBinding;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    .line 115
    invoke-virtual {p2}, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    return-void
.end method
