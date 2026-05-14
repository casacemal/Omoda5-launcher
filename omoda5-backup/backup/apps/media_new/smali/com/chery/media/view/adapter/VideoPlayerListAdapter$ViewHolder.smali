.class public Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VideoPlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/VideoPlayerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/VideoPlayerListAdapter;Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    .line 147
    invoke-virtual {p2}, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 148
    iput-object p2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    return-void
.end method
