.class public Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalMusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/LocalMusicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/LocalMusicListAdapter;Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    .line 132
    invoke-virtual {p2}, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 133
    iput-object p2, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    return-void
.end method
