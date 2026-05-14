.class public Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UsbMusicSongListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    .line 106
    invoke-virtual {p2}, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    iput-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    return-void
.end method
