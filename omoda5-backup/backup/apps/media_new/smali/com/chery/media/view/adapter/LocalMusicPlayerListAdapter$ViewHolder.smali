.class public Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalMusicPlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    .line 131
    invoke-virtual {p2}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 132
    iput-object p2, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    return-void
.end method
