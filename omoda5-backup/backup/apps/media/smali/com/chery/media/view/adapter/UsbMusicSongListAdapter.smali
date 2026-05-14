.class public Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UsbMusicSongListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;

.field private isPlaying:Z

.field private playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

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

    .line 21
    const-class v0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->usbMusicInfoList:Ljava/util/List;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->isPlaying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;)Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->clickListener:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->usbMusicInfoList:Ljava/util/List;

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

    .line 117
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->usbMusicInfoList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;I)V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->usbMusicInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 48
    iget-object v1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 50
    iget-object v4, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 53
    :cond_1
    iget-object v4, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    const/16 v4, 0x8

    if-eqz v1, :cond_3

    .line 57
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 59
    iget-boolean v1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->isPlaying:Z

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_2

    .line 63
    :cond_2
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_2

    .line 68
    :cond_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v4}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 70
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 73
    :goto_2
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    const-string v2, "<unknown>"

    .line 75
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 78
    :cond_4
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 76
    :cond_5
    :goto_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    invoke-virtual {v2}, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_4
    iget-object p1, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;-><init>(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 95
    iget-object p0, p1, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

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

    .line 112
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->usbMusicInfoList:Ljava/util/List;

    .line 113
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->clickListener:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->isPlaying:Z

    .line 127
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPlayingMusic(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 122
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->notifyDataSetChanged()V

    return-void
.end method
