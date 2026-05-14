.class Lcom/chery/media/view/fragment/PictureViewerFragment$5;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureViewerFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;)V
    .locals 1

    .line 235
    iget p1, p1, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;->usbType:I

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$200(Lcom/chery/media/view/fragment/PictureViewerFragment;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$300(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    .line 237
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$500(Lcom/chery/media/view/fragment/PictureViewerFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$600(Lcom/chery/media/view/fragment/PictureViewerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$500(Lcom/chery/media/view/fragment/PictureViewerFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$700(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 232
    check-cast p1, Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment$5;->onChanged(Lcom/chery/media/viewmodel/PictureViewModel$PlaylistData;)V

    return-void
.end method
