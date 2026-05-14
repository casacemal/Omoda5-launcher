.class public Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RadioListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/RadioListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/RadioListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/RadioListAdapter;Lcom/chery/media/databinding/RadioListItemLayoutBinding;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/RadioListAdapter;

    .line 116
    invoke-virtual {p2}, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 117
    iput-object p2, p0, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    return-void
.end method
