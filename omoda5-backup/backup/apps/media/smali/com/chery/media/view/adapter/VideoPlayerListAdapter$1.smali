.class Lcom/chery/media/view/adapter/VideoPlayerListAdapter$1;
.super Ljava/lang/Object;
.source "VideoPlayerListAdapter.java"

# interfaces
.implements Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

.field final synthetic val$holder:Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/VideoPlayerListAdapter;Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$1;->this$0:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    iput-object p2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$1;->val$holder:Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailReady(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1

    .line 77
    iget-object p2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$1;->val$holder:Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    iget-object p2, p2, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 78
    instance-of v0, p2, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    if-eqz v0, :cond_0

    .line 79
    check-cast p2, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    .line 80
    iget-object p2, p2, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->response:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;

    if-ne p2, p0, :cond_0

    if-eqz p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$1;->val$holder:Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
