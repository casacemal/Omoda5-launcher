.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;
.super Ljava/lang/Object;
.source "UsbMusicPlayerFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


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

    .line 515
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 518
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23$1;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 528
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23$2;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23$2;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
