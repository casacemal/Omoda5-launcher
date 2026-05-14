.class Lcom/chery/media/view/fragment/UsbMusicListFragment$1;
.super Ljava/lang/Object;
.source "UsbMusicListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicListFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$1;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;)V
    .locals 1

    .line 140
    iget p1, p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;->usbType:I

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$1;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$1;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$100(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    .line 142
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment$1;->this$0:Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->access$200(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment$1;->onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;)V

    return-void
.end method
