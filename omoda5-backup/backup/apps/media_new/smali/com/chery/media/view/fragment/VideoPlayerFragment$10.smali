.class Lcom/chery/media/view/fragment/VideoPlayerFragment$10;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment$10;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
