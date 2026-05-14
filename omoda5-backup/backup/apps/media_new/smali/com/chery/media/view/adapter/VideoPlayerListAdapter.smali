.class public Lcom/chery/media/view/adapter/VideoPlayerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VideoPlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/VideoPlayerListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/VideoPlayerListAdapter$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

.field private holders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private isPlaying:Z

.field private thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

.field private videoInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/media/model/business/ThumbnailCache;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->isPlaying:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->holders:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/VideoPlayerListAdapter;)Lcom/chery/media/view/adapter/VideoPlayerListAdapter$OnItemClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->clickListener:Lcom/chery/media/view/adapter/VideoPlayerListAdapter$OnItemClickListener;

    return-object p0
.end method

.method private refreshList()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->videoInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->holders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->videoInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->videoInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 183
    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->holders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    .line 184
    iget-object v3, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    iget-object v5, v5, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    iget-object v3, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    invoke-virtual {v3}, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    goto :goto_1

    .line 190
    :cond_3
    iget-object v3, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    invoke-virtual {v3}, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 193
    :goto_1
    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    if-eqz v3, :cond_5

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    iget-object v2, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v2, v4}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 195
    iget-boolean v2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->isPlaying:Z

    if-eqz v2, :cond_4

    .line 196
    iget-object v1, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v1, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto/16 :goto_0

    .line 203
    :cond_5
    iget-object v2, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 204
    iget-object v1, v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->videoInfoList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->videoInfoList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;I)V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->holders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->videoInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 61
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chery/media/model/business/ThumbnailCache;->hasCacheThumbnail(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x98

    const/16 v3, 0x10e

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Lcom/chery/media/model/business/ThumbnailCache;->getThumbnail(Ljava/lang/String;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v2, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const v4, 0x7f07018f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    new-instance v1, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    new-instance v5, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$1;-><init>(Lcom/chery/media/view/adapter/VideoPlayerListAdapter;Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;)V

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v3, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v1, v4, v5, v6}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;-><init>(Ljava/lang/String;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;Landroid/util/Size;)V

    .line 86
    iget-object v2, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-virtual {v2, v1}, Lcom/chery/media/model/business/ThumbnailCache;->requestThumbnail(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 99
    iget-boolean v1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_2

    .line 103
    :cond_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_2

    .line 107
    :cond_4
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 108
    iget-object v1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 111
    :goto_2
    iget-object p1, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$2;-><init>(Lcom/chery/media/view/adapter/VideoPlayerListAdapter;ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/VideoPlayerListAdapter;Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;)V
    .locals 4

    .line 123
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 124
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->holders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->holders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->holders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    iget-object v0, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    .line 131
    iget-object v0, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    .line 133
    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->thumbnailCache:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/ThumbnailCache;->removeThumbnail(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V

    .line 135
    :cond_2
    iget-object p0, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object p0, p1, Lcom/chery/media/view/adapter/VideoPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoPlayerListItemLayoutBinding;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCurrentVideoInfo(Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->currentVideoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 164
    invoke-direct {p0}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->refreshList()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/VideoPlayerListAdapter$OnItemClickListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->clickListener:Lcom/chery/media/view/adapter/VideoPlayerListAdapter$OnItemClickListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->isPlaying:Z

    .line 170
    invoke-direct {p0}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->refreshList()V

    return-void
.end method

.method public setVideoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->videoInfoList:Ljava/util/List;

    .line 154
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method
