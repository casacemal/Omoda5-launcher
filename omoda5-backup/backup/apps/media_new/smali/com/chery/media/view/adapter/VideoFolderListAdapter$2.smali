.class Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;
.super Ljava/lang/Object;
.source "VideoFolderListAdapter.java"

# interfaces
.implements Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/VideoFolderListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

.field final synthetic val$holder:Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/VideoFolderListAdapter;Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;->this$0:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    iput-object p2, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;->val$holder:Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailReady(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1

    .line 98
    iget-object p2, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;->val$holder:Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    iget-object p2, p2, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 99
    instance-of v0, p2, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    if-eqz v0, :cond_1

    .line 100
    check-cast p2, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    .line 101
    iget-object p2, p2, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->response:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;

    if-ne p2, p0, :cond_1

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;->val$holder:Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;->val$holder:Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const p1, 0x7f070190

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
