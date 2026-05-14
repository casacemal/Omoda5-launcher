.class Lcom/chery/media/view/fragment/PictureViewerFragment$9;
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
        "Ljava/util/List<",
        "Landroid/bluetooth/BluetoothHeadsetClientCall;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment$9;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;)V"
        }
    .end annotation

    .line 271
    invoke-static {}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btCallStateLiveData onChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 272
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 273
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$9;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    :cond_0
    return-void
.end method
