.class Lcom/chery/media/view/fragment/MediaMainFragment$17;
.super Ljava/lang/Object;
.source "MediaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/MediaMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 322
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$1100(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->isMounted(I)Z

    move-result p1

    const/16 v1, 0xbb8

    if-nez p1, :cond_0

    .line 323
    new-instance p1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$1100(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    if-nez p1, :cond_1

    .line 326
    new-instance p1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$17;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    .line 330
    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->newInstance(I)Lcom/chery/media/view/fragment/UsbMusicListFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method
