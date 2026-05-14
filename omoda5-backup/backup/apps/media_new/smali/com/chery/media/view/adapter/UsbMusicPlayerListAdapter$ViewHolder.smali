.class public Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UsbMusicPlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

.field final synthetic this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;


# direct methods
.method public constructor <init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    .line 179
    invoke-virtual {p2}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 180
    iput-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    return-void
.end method
