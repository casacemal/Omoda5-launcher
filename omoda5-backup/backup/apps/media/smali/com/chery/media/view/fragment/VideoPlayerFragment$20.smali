.class Lcom/chery/media/view/fragment/VideoPlayerFragment$20;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 418
    invoke-static {}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ivNext onLongClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/VideoViewModel;->fastForward(I)V

    const/4 p0, 0x1

    return p0
.end method
