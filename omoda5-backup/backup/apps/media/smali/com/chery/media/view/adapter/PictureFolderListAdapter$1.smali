.class Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;
.super Ljava/lang/Object;
.source "PictureFolderListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/PictureFolderListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

.field final synthetic val$position:I

.field final synthetic val$subPictureFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/PictureFolderListAdapter;ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;->val$subPictureFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->access$000(Lcom/chery/media/view/adapter/PictureFolderListAdapter;)Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->access$000(Lcom/chery/media/view/adapter/PictureFolderListAdapter;)Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;->val$subPictureFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;->onSubFolderClick(ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    :cond_0
    return-void
.end method
