.class public Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UsbMusicFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field folderBinding:Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;

.field musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->this$0:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    .line 178
    invoke-virtual {p2}, Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 179
    iput-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->folderBinding:Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;

    return-void
.end method

.method public constructor <init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->this$0:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    .line 182
    invoke-virtual {p2}, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 183
    iput-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    return-void
.end method
