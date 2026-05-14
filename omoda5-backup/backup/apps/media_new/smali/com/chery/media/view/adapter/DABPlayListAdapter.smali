.class public Lcom/chery/media/view/adapter/DABPlayListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DABPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;

.field private curDabInfo:Lcom/chery/media/model/business/DabInfo;

.field private dabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isPlaying:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/media/view/adapter/DABPlayListAdapter;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    .line 29
    new-instance p2, Lcom/chery/media/model/business/DabInfo;

    invoke-direct {p2}, Lcom/chery/media/model/business/DabInfo;-><init>()V

    iput-object p2, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    const/4 p2, 0x0

    .line 30
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->isPlaying:Ljava/lang/Boolean;

    .line 41
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/DABPlayListAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/DABPlayListAdapter;)Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public hasSameServiceName(Lcom/chery/media/model/business/DabInfo;)Z
    .locals 3

    .line 130
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    .line 131
    iget-object v1, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;I)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    .line 55
    iget-object v1, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->hasSameServiceName(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/chery/media/model/business/DabInfo;->componentName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->clItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/chery/media/view/adapter/DABPlayListAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/chery/media/view/adapter/DABPlayListAdapter$1;-><init>(Lcom/chery/media/view/adapter/DABPlayListAdapter;I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->isPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 73
    :goto_1
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto :goto_2

    .line 75
    :cond_2
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 76
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 77
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_2
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->ivCollection:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    iget-boolean v1, v1, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 82
    iget-object p1, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->ivCollection:Landroid/widget/ImageView;

    new-instance v0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;-><init>(Lcom/chery/media/view/adapter/DABPlayListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;
    .locals 0

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/DABPlayListAdapter;Lcom/chery/media/databinding/RadioListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 95
    iget-object p0, p1, Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    return-void
.end method

.method public setCurPlayInfo(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    .line 121
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;

    return-void
.end method

.method public setPlayingState(Ljava/lang/Boolean;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter;->isPlaying:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->notifyDataSetChanged()V

    return-void
.end method
