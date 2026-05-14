.class public Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DABMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/DABMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/DABMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/DABMenuAdapter;Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/DABMenuAdapter;

    .line 72
    invoke-virtual {p2}, Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;

    return-void
.end method
