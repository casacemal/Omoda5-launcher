.class Lcom/chery/media/view/fragment/VideoPlayerFragment$1;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoPlayerFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 205
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$002(Lcom/chery/media/view/fragment/VideoPlayerFragment;I)I

    .line 208
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 209
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 210
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 211
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 212
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$500(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 213
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$600(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 214
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 215
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$800(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
