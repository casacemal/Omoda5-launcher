.class Lcom/chery/media/view/fragment/VideoMainFragment$1;
.super Ljava/lang/Object;
.source "VideoMainFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoMainFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;)V
    .locals 1

    .line 138
    iget p1, p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;->usbType:I

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$100(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    .line 140
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$1;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$200(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoMainFragment$1;->onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;)V

    return-void
.end method
