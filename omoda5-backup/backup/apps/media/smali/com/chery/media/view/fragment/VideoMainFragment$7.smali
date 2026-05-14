.class Lcom/chery/media/view/fragment/VideoMainFragment$7;
.super Ljava/lang/Object;
.source "VideoMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 194
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$500(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$600(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I

    move-result v1

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$500(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 197
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$700(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/databinding/FragmentVideoMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvFolderName:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$7;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$800(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    return-void
.end method
