.class Lcom/chery/media/view/fragment/VideoPlayerFragment$26;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$detector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;Landroid/view/GestureDetector;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    iput-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->val$detector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 598
    invoke-static {}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ivTouch onTouch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 600
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 601
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 602
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2202(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 603
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2102(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 606
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 607
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p2

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2500(Lcom/chery/media/view/fragment/VideoPlayerFragment;)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lcom/chery/media/viewmodel/VideoViewModel;->seekTo(IJ)V

    .line 608
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p2

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/chery/media/viewmodel/VideoViewModel;->play(I)V

    .line 610
    :cond_1
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 611
    :cond_2
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 613
    :cond_3
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 614
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2202(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 615
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2102(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    :cond_4
    :goto_0
    return p1
.end method
