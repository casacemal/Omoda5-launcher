.class public Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UsbMusicPlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private addResponse:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

.field private clickListener:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

.field private holders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private isPlaying:Z

.field private localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

.field private usbMusicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/media/viewmodel/LocalMusicViewModel;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->usbMusicInfoList:Ljava/util/List;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->isPlaying:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->holders:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    .line 48
    new-instance p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;

    invoke-direct {p1, p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;-><init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)V

    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->addResponse:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    .line 75
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->addResponse:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->addHandleAddResponse(Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->usbMusicInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->holders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->clickListener:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Lcom/chery/media/viewmodel/LocalMusicViewModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 204
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->addResponse:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->removeHandleAddResponse(Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->usbMusicInfoList:Ljava/util/List;

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
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->usbMusicInfoList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;I)V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->usbMusicInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 93
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    const-string v2, "<unknown>"

    .line 95
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    invoke-virtual {v2}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    .line 103
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    goto :goto_2

    .line 106
    :cond_2
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 109
    :goto_2
    iget-object v1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/16 v4, 0x8

    if-ne v1, v0, :cond_4

    .line 110
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 112
    iget-boolean v1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_3

    .line 116
    :cond_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_3

    .line 121
    :cond_4
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    new-array v5, v3, [Ljava/lang/Object;

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "%02d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v4}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 123
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 126
    :goto_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->clItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;-><init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p2, v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->checkLocalState(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)I

    move-result p2

    if-eqz p2, :cond_7

    if-eq p2, v3, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    goto :goto_4

    .line 145
    :cond_5
    iget-object p2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    const v1, 0x7f070105

    invoke-virtual {p2, v1}, Lcom/chery/media/view/component/RotateAnimImageView;->setImageResource(I)V

    .line 146
    iget-object p2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    invoke-virtual {p2}, Lcom/chery/media/view/component/RotateAnimImageView;->endAnim()V

    goto :goto_4

    .line 141
    :cond_6
    iget-object p2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    const v1, 0x7f070106

    invoke-virtual {p2, v1}, Lcom/chery/media/view/component/RotateAnimImageView;->setImageResource(I)V

    .line 142
    iget-object p2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    invoke-virtual {p2}, Lcom/chery/media/view/component/RotateAnimImageView;->startAnim()V

    goto :goto_4

    .line 137
    :cond_7
    iget-object p2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    const v1, 0x7f070104

    invoke-virtual {p2, v1}, Lcom/chery/media/view/component/RotateAnimImageView;->setImageResource(I)V

    .line 138
    iget-object p2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    invoke-virtual {p2}, Lcom/chery/media/view/component/RotateAnimImageView;->endAnim()V

    .line 151
    :goto_4
    iget-object p2, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    new-instance v1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;-><init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Lcom/chery/media/view/component/RotateAnimImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;
    .locals 0

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    move-result-object p1

    .line 82
    new-instance p2, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 166
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->holders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object p0, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    .line 168
    iget-object p0, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    invoke-virtual {p0}, Lcom/chery/media/view/component/RotateAnimImageView;->cancelAnim()V

    return-void
.end method

.method public setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 195
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMusicList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->usbMusicInfoList:Ljava/util/List;

    .line 186
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->clickListener:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->isPlaying:Z

    .line 200
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method
