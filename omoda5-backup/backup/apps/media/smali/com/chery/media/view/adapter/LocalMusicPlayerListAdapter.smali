.class public Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocalMusicPlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

.field private isPlaying:Z

.field private localMusicInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/media/viewmodel/LocalMusicViewModel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->localMusicInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->isPlaying:Z

    .line 41
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;)Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->clickListener:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;)Lcom/chery/media/viewmodel/LocalMusicViewModel;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->localMusicInfos:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMusicList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->localMusicInfos:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;I)V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->localMusicInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 58
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    const-string v2, "<unknown>"

    .line 60
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    invoke-virtual {v2}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    goto :goto_2

    .line 70
    :cond_2
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 73
    :goto_2
    iget-object v1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    const/16 v4, 0x8

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 76
    iget-boolean v1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_3

    .line 80
    :cond_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_3

    .line 85
    :cond_4
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v4}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 87
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 90
    :goto_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->clItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$1;-><init>(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;ILcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p2, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    const v1, 0x7f070103

    invoke-virtual {p2, v1}, Lcom/chery/media/view/component/RotateAnimImageView;->setImageResource(I)V

    .line 100
    iget-object p1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    new-instance p2, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;

    invoke-direct {p2, p0, v0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;-><init>(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    invoke-virtual {p1, p2}, Lcom/chery/media/view/component/RotateAnimImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;
    .locals 0

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 120
    iget-object p0, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    return-void
.end method

.method public setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 147
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMusicList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->localMusicInfos:Ljava/util/List;

    .line 138
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->clickListener:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->isPlaying:Z

    .line 152
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method
