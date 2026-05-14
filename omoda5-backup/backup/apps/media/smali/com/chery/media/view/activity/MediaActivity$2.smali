.class Lcom/chery/media/view/activity/MediaActivity$2;
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
        "Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$2;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;)V
    .locals 2

    .line 103
    iget-boolean v0, p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;->mounted:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity$2;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    if-eqz v1, :cond_0

    .line 106
    iget p1, p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;->usbType:I

    check-cast v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getThisUsbType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$2;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity$2;->onChanged(Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;)V

    return-void
.end method
