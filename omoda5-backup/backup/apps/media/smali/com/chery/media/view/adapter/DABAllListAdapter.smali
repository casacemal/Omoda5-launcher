.class public Lcom/chery/media/view/adapter/DABAllListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DABAllListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;

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

.field private isPlaying:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/media/view/adapter/DABAllListAdapter;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/DABAllListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/chery/media/model/business/DabInfo;

    invoke-direct {v0}, Lcom/chery/media/model/business/DabInfo;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->isPlaying:Z

    .line 41
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/DABAllListAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/DABAllListAdapter;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->isPlaying:Z

    return p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/adapter/DABAllListAdapter;)Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

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

    .line 139
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    .line 140
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
    check-cast p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABAllListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;I)V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    .line 54
    iget-object v1, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->hasSameServiceName(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/chery/media/model/business/DabInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/chery/media/model/business/DabInfo;->componentName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/DabInfo;->dabImage:Lsw/com/dabdrmradio/DabImage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/DabInfo;->dabImage:Lsw/com/dabdrmradio/DabImage;

    invoke-virtual {v1}, Lsw/com/dabdrmradio/DabImage;->getImagearray()[B

    move-result-object v1

    .line 57
    array-length v3, v1

    if-lez v3, :cond_2

    .line 58
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    iget-object v3, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->ivDabCover:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 62
    :cond_1
    iget-object v1, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->ivDabCover:Landroid/widget/ImageView;

    const v3, 0x7f070089

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    .line 67
    iget-boolean v4, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->isPlaying:Z

    if-eqz v4, :cond_3

    .line 68
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_2

    .line 70
    :cond_3
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 72
    :goto_2
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto :goto_3

    .line 74
    :cond_4
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 75
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 78
    :goto_3
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->ivDabFavor:Landroid/widget/ImageView;

    iget-boolean v0, v0, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/chery/media/view/adapter/DABAllListAdapter$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter$1;-><init>(Lcom/chery/media/view/adapter/DABAllListAdapter;IZ)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->ivDabFavor:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/adapter/DABAllListAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/chery/media/view/adapter/DABAllListAdapter$2;-><init>(Lcom/chery/media/view/adapter/DABAllListAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->ivDabCover:Landroid/widget/ImageView;

    new-instance v0, Lcom/chery/media/view/adapter/DABAllListAdapter$3;

    invoke-direct {v0, p0, p2, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter$3;-><init>(Lcom/chery/media/view/adapter/DABAllListAdapter;IZ)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABAllListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/chery/media/databinding/DabListAllItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/DabListAllItemLayoutBinding;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/DABAllListAdapter;Lcom/chery/media/databinding/DabListAllItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setCurPlayInfo(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    .line 130
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->notifyDataSetChanged()V

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

    .line 121
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->dabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;

    return-void
.end method

.method public setPlayingState(Ljava/lang/Boolean;)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter;->isPlaying:Z

    .line 135
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->notifyDataSetChanged()V

    return-void
.end method
