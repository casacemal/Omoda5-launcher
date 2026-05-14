.class Lcom/chery/media/view/fragment/VideoPlayerFragment$7;
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
        "Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;)V
    .locals 1

    .line 272
    iget p1, p1, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;->usbType:I

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment$7;->onChanged(Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;)V

    return-void
.end method
