.class Lcom/chery/media/view/fragment/VideoPlayerFragment$12;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 331
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 341
    invoke-static {}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "surfaceChanged %s %s %s %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, p3}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1502(Lcom/chery/media/view/fragment/VideoPlayerFragment;I)I

    .line 343
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, p4}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1602(Lcom/chery/media/view/fragment/VideoPlayerFragment;I)I

    .line 344
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 334
    invoke-static {}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 336
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/VideoViewModel;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 349
    invoke-static {}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 351
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/VideoViewModel;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method
