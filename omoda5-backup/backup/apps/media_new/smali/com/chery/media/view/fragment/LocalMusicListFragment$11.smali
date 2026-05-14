.class Lcom/chery/media/view/fragment/LocalMusicListFragment$11;
.super Ljava/lang/Object;
.source "LocalMusicListFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicListFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 324
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1300(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/LocalMusicListFragment$11$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$11$1;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment$11;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$11;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1300(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/LocalMusicListFragment$11$2;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$11$2;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment$11;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
