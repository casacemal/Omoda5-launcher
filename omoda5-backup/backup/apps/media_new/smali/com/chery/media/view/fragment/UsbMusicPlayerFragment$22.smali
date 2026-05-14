.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "UsbMusicPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initPlaylist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 504
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_0

    .line 506
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22$1;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
