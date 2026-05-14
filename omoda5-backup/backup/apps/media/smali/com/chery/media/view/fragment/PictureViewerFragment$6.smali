.class Lcom/chery/media/view/fragment/PictureViewerFragment$6;
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
        "Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$6;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;)V
    .locals 1

    .line 246
    iget p1, p1, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;->usbType:I

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$6;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$200(Lcom/chery/media/view/fragment/PictureViewerFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 247
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$6;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$400(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    .line 248
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$6;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$500(Lcom/chery/media/view/fragment/PictureViewerFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$6;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$700(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 243
    check-cast p1, Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment$6;->onChanged(Lcom/chery/media/viewmodel/PictureViewModel$CurrentPlayingData;)V

    return-void
.end method
