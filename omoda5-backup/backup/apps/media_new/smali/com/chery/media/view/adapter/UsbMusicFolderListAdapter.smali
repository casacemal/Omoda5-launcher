.class public Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UsbMusicFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;,
        Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_FOLDER:I = 0x0

.field private static final TYPE_MUSIC:I = 0x1


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;

.field private folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

.field private isPlaying:Z

.field private playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

.field private subFolderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private thisUsbType:I

.field private usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/chery/media/viewmodel/UsbScannerViewModel;Lcom/chery/media/viewmodel/UsbMusicViewModel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isPlaying:Z

    .line 48
    iput p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->thisUsbType:I

    .line 49
    iput-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 50
    iput-object p3, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->clickListener:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    return-object p0
.end method

.method public getItemCount()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isRootFolder()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->musicInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isRootFolder()Z

    move-result p0

    sub-int/2addr v0, p0

    if-gt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSubFolderInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    return-object p0
.end method

.method public isRootFolder()Z
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

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

    .line 22
    check-cast p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;I)V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isRootFolder()Z

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p2, v0, :cond_2

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isRootFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->folderBinding:Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;->ivFolderIcon:Landroid/widget/ImageView;

    const v2, 0x7f0700cb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->folderBinding:Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 87
    iget-object p1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;-><init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isRootFolder()Z

    move-result v0

    xor-int/2addr v0, v2

    sub-int v0, p2, v0

    .line 98
    iget-object v3, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 99
    iget-object v3, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->folderBinding:Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;->ivFolderIcon:Landroid/widget/ImageView;

    const v4, 0x7f070132

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v3, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->folderBinding:Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;->tvFolderName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 104
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 110
    :goto_0
    iget-object p1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$2;-><init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isRootFolder()Z

    move-result v0

    xor-int/2addr v0, v2

    sub-int v0, p2, v0

    iget-object v3, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v0, v3

    .line 123
    iget-object v3, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->musicInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 125
    iget-object v3, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    iget-object v3, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 130
    iget-object v2, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v2, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v2, v1}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 132
    iget-boolean v1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_1

    .line 136
    :cond_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_1

    .line 140
    :cond_4
    iget-object v2, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 142
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v4}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 143
    iget-object v1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 146
    :goto_1
    iget-object p1, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$3;-><init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;
    .locals 0

    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;-><init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;Lcom/chery/media/databinding/MediaUsbMusicFolderListItemLayoutBinding;)V

    return-object p2

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;-><init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 161
    iget-object p0, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    if-eqz p0, :cond_0

    .line 162
    iget-object p0, p1, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;->musicBinding:Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaUsbMusicSongListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    :cond_0
    return-void
.end method

.method public setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
    .locals 2

    .line 188
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->folderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 189
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 191
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

    .line 192
    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getFolderAllMusicsCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->subFolderInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->clickListener:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isPlaying:Z

    .line 219
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPlayingMusic(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->playingMusic:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 214
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->notifyDataSetChanged()V

    return-void
.end method
