.class Lcom/chery/media/view/activity/MediaActivity$4;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/MediaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$4;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;)V
    .locals 1

    .line 129
    iget p1, p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;->usbType:I

    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicAudioSource(I)I

    move-result p1

    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity$4;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {v0}, Lcom/chery/media/view/activity/MediaActivity;->access$000(Lcom/chery/media/view/activity/MediaActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$4;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/MediaActivity;->access$100(Lcom/chery/media/view/activity/MediaActivity;)V

    .line 131
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$4;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/MediaActivity;->access$200(Lcom/chery/media/view/activity/MediaActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity$4;->onChanged(Lcom/chery/media/viewmodel/UsbMusicViewModel$CurrentPlayingData;)V

    return-void
.end method
