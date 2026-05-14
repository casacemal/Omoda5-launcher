.class public Lcom/chery/media/view/adapter/VideoFolderListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VideoFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;,
        Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

.field private subVideoFolderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

.field private usbVideoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/media/viewmodel/UsbScannerViewModel;Lcom/chery/media/viewmodel/VideoViewModel;Lcom/chery/media/model/business/ThumbnailCache;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->subVideoFolderInfos:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 48
    iput-object p3, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->usbVideoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    .line 49
    iput-object p4, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/VideoFolderListAdapter;)Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->clickListener:Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->subVideoFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->videoInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isRootFolder()Z
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->dir:Ljava/lang/String;

    const-string v0, "/storage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;I)V
    .locals 9

    .line 63
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->subVideoFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->subVideoFolderInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 65
    iget-object v3, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const v4, 0x7f070191

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v3, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFileSize:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object p1, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;-><init>(Lcom/chery/media/view/adapter/VideoFolderListAdapter;ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->subVideoFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    .line 82
    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->videoInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 84
    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/ThumbnailCache;->hasCacheThumbnail(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x98

    const/16 v5, 0x10e

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    iget-object v6, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v6, v7}, Lcom/chery/media/model/business/ThumbnailCache;->getThumbnail(Ljava/lang/String;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v4, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const v4, 0x7f070190

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v3, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const v6, 0x7f07018f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    new-instance v3, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v6, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    new-instance v7, Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter$2;-><init>(Lcom/chery/media/view/adapter/VideoFolderListAdapter;Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;)V

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v5, v4}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v3, v6, v7, v8}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;-><init>(Ljava/lang/String;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;Landroid/util/Size;)V

    .line 112
    iget-object v4, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v4, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-virtual {v4, v3}, Lcom/chery/media/model/business/ThumbnailCache;->requestThumbnail(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V

    .line 116
    :goto_0
    iget-object v3, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v2, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFileSize:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->size:J

    invoke-static {v2, v3}, Lcom/chery/media/util/Utils;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/VideoFolderListAdapter$3;-><init>(Lcom/chery/media/view/adapter/VideoFolderListAdapter;ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;
    .locals 0

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;-><init>(Lcom/chery/media/view/adapter/VideoFolderListAdapter;Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 136
    iget-object v0, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    .line 138
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/ThumbnailCache;->removeThumbnail(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V

    .line 140
    :cond_0
    iget-object p0, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object p0, p1, Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
    .locals 2

    .line 161
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 162
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->subVideoFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 165
    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getFolderAllVideosCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->subVideoFolderInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->clickListener:Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;

    return-void
.end method
