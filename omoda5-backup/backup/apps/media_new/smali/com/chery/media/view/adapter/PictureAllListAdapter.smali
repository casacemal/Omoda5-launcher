.class public Lcom/chery/media/view/adapter/PictureAllListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PictureAllListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private currentPictureInfo:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

.field private pictureInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/chery/media/view/adapter/PictureAllListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/PictureAllListAdapter;)Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->clickListener:Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->pictureInfoList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPictureList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->pictureInfoList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;I)V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->pictureInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 54
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->tvFileSize:Landroid/widget/TextView;

    iget-wide v3, v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->size:J

    invoke-static {v3, v4}, Lcom/chery/media/util/Utils;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->pictureInfoList:Ljava/util/List;

    .line 62
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const v3, 0x7f070149

    .line 63
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    const v3, 0x7f07014a

    .line 64
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/16 v4, 0x10e

    const/16 v5, 0x98

    .line 65
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 66
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/16 v3, 0xbb8

    .line 67
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 70
    iget-object v1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->currentPictureInfo:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->currentPictureInfo:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 77
    :goto_0
    iget-object p1, p1, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;-><init>(Lcom/chery/media/view/adapter/PictureAllListAdapter;ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/PictureAllListAdapter;Lcom/chery/media/databinding/VideoAndPicAllListItemLayoutBinding;)V

    return-object p2
.end method

.method public setCurrentPictureInfo(Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->currentPictureInfo:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 111
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->clickListener:Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;

    return-void
.end method

.method public setPictureList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter;->pictureInfoList:Ljava/util/List;

    .line 102
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->notifyDataSetChanged()V

    return-void
.end method
