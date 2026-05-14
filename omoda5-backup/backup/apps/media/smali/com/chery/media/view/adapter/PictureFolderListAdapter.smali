.class public Lcom/chery/media/view/adapter/PictureFolderListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PictureFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;,
        Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

.field private subPictureFolderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private usbPictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/media/viewmodel/UsbScannerViewModel;Lcom/chery/media/viewmodel/PictureViewModel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->subPictureFolderInfos:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 46
    iput-object p3, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->usbPictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/PictureFolderListAdapter;)Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->clickListener:Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->subPictureFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->pictureInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isRootFolder()Z
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

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

    .line 24
    check-cast p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;I)V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->subPictureFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->subPictureFolderInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 62
    iget-object v3, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const v4, 0x7f070191

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v3, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFileSize:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object p1, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/PictureFolderListAdapter$1;-><init>(Lcom/chery/media/view/adapter/PictureFolderListAdapter;ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->subPictureFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    .line 79
    iget-object v3, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->pictureInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 81
    iget-object v3, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    const v4, 0x7f070149

    .line 84
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    const v4, 0x7f07014a

    .line 85
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/16 v5, 0x10e

    const/16 v6, 0x98

    .line 86
    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 87
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    const/16 v4, 0xbb8

    .line 88
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 91
    iget-object v3, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v2, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFileSize:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->size:J

    invoke-static {v2, v3}, Lcom/chery/media/util/Utils;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/PictureFolderListAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/PictureFolderListAdapter$2;-><init>(Lcom/chery/media/view/adapter/PictureFolderListAdapter;ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter$MyViewHolder;-><init>(Lcom/chery/media/view/adapter/PictureFolderListAdapter;Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;)V

    return-object p2
.end method

.method public setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 126
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->subPictureFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 128
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

    .line 129
    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getFolderAllPicturesCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->subPictureFolderInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->clickListener:Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;

    return-void
.end method
