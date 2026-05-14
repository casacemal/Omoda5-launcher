.class Lcom/chery/media/view/fragment/MediaMainFragment$2;
.super Ljava/lang/Object;
.source "MediaMainFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/MediaMainFragment;->initViewModel()V
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
.field final synthetic this$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$2;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$2;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    iget p1, p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;->usbType:I

    invoke-static {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$200(Lcom/chery/media/view/fragment/MediaMainFragment;I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment$2;->onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;)V

    return-void
.end method
