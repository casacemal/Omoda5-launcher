.class public Lcom/chery/media/view/adapter/RadioListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RadioListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;

.field private mContext:Landroid/content/Context;

.field private radioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation
.end field

.field private region:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/chery/media/view/adapter/RadioListAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/RadioListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->region:I

    .line 36
    iput-object p1, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/RadioListAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/RadioListAdapter;)Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->clickListener:Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/RadioListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;I)V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/RadioDef;

    iget v0, v0, Lcom/chery/media/model/business/RadioDef;->band:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 52
    iget v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->region:I

    const-string v3, "."

    const-string v4, "FM "

    if-ne v0, v2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    .line 54
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chery/media/model/business/RadioDef;

    iget v4, v4, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    .line 55
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chery/media/model/business/RadioDef;

    iget v4, v4, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    rem-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%1$02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    .line 58
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chery/media/model/business/RadioDef;

    iget v4, v4, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    .line 59
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/RadioDef;

    iget v3, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    rem-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    .line 63
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/RadioDef;

    iget v3, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    iget-object v3, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->clItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/chery/media/view/adapter/RadioListAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/chery/media/view/adapter/RadioListAdapter$1;-><init>(Lcom/chery/media/view/adapter/RadioListAdapter;I)V

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/RadioDef;

    iget-boolean v0, v0, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 78
    iget-object v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/RadioDef;

    iget-boolean v0, v0, Lcom/chery/media/model/business/RadioDef;->isPlaying:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 83
    :goto_1
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto :goto_2

    .line 85
    :cond_3
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 86
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 87
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 88
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_2
    iget-object v0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->ivCollection:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iget-boolean v1, v1, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 92
    iget-object p1, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->ivCollection:Landroid/widget/ImageView;

    new-instance v0, Lcom/chery/media/view/adapter/RadioListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/chery/media/view/adapter/RadioListAdapter$2;-><init>(Lcom/chery/media/view/adapter/RadioListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/RadioListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/RadioListAdapter;Lcom/chery/media/databinding/RadioListItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/RadioListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 105
    iget-object p0, p1, Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/RadioListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/RadioListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/RadioListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->clickListener:Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;

    return-void
.end method

.method public setPlay(Z)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->radioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    .line 131
    iget-boolean v2, v1, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    if-eqz v2, :cond_0

    .line 132
    iput-boolean p1, v1, Lcom/chery/media/model/business/RadioDef;->isPlaying:Z

    .line 133
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/RadioListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setRegion(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/chery/media/view/adapter/RadioListAdapter;->region:I

    return-void
.end method
