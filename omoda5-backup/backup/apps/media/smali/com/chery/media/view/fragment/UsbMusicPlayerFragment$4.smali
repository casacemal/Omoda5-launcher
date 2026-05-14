.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;
.super Ljava/lang/Object;
.source "UsbMusicPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;)V
    .locals 1

    .line 205
    iget p1, p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;->usbType:I

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$400(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    .line 207
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1300(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    .line 208
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$900(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;->onChanged(Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;)V

    return-void
.end method
