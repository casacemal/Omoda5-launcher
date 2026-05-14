.class Lcom/chery/media/view/fragment/PictureMainFragment$7;
.super Ljava/lang/Object;
.source "PictureMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$7;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 206
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$7;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$500(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$7;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$600(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$7;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$000(Lcom/chery/media/view/fragment/PictureMainFragment;)I

    move-result v1

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$7;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$500(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 209
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$7;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$700(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/databinding/FragmentPictureMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvFolderName:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$7;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$800(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    return-void
.end method
