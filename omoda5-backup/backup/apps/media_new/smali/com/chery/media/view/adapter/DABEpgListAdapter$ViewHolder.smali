.class public Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DABEpgListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/DABEpgListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/DABEpgListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/DABEpgListAdapter;Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    .line 93
    invoke-virtual {p2}, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 94
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    return-void
.end method
