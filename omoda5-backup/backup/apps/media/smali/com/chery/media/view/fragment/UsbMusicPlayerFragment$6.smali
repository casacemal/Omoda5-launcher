.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$6;
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
        "Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$6;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;)V
    .locals 1

    .line 223
    iget p1, p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;->usbType:I

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$6;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$6;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$600(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 220
    check-cast p1, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$6;->onChanged(Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;)V

    return-void
.end method
