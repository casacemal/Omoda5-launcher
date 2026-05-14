.class public Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DABPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/DABPlayListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/DABPlayListAdapter;Lcom/chery/media/databinding/RadioListItemLayoutBinding;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    .line 106
    invoke-virtual {p2}, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    return-void
.end method
