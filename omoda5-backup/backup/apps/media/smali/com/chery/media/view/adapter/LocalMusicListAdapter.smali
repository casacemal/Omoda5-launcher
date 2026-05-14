.class public Lcom/chery/media/view/adapter/LocalMusicListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocalMusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;

.field private currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

.field private isEditing:Z

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

.field private selectList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->localMusicInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isPlaying:Z

    .line 28
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditing:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->clickListener:Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public cancelAll()V
    .locals 3

    .line 199
    iget-boolean v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditing:Z

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public editAll()V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditing:Z

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x1

    .line 183
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->localMusicInfos:Ljava/util/List;

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

    .line 157
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->localMusicInfos:Ljava/util/List;

    return-object p0
.end method

.method public getSelectList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isEditingAll()Z
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 195
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;I)V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->localMusicInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 52
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    const-string v2, "<unknown>"

    .line 54
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    invoke-virtual {v2}, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_1
    iget-boolean v1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditing:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 63
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 65
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->ivChooseBox:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->ivChooseBox:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 69
    iget-object p1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;-><init>(Lcom/chery/media/view/adapter/LocalMusicListAdapter;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    goto :goto_2

    .line 86
    :cond_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    invoke-virtual {v1}, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 89
    :goto_2
    iget-object v1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 92
    iget-boolean v1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isPlaying:Z

    if-eqz v1, :cond_4

    .line 93
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_3

    .line 96
    :cond_4
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_3

    .line 101
    :cond_5
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "%02d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 103
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 105
    :goto_3
    iget-object v1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->ivChooseBox:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;-><init>(Lcom/chery/media/view/adapter/LocalMusicListAdapter;ILcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/LocalMusicListAdapter;Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 121
    iget-object p0, p1, Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaLocalMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    return-void
.end method

.method public setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->currentPlaying:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 162
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEdit(Z)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 174
    :cond_0
    iput-boolean p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditing:Z

    .line 175
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMusicList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->localMusicInfos:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    const/4 v2, 0x0

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_2
    iput-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->selectList:Ljava/util/Map;

    .line 153
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->clickListener:Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isPlaying:Z

    .line 167
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->notifyDataSetChanged()V

    return-void
.end method
