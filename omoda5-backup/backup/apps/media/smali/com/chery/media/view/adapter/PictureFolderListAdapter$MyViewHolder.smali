.class public Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PictureFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/PictureFolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/PictureFolderListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/PictureFolderListAdapter;Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->this$0:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    .line 119
    invoke-virtual {p2}, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 120
    iput-object p2, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    return-void
.end method
