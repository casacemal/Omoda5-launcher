.class public Lcom/chery/media/view/adapter/DABEpgListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DABEpgListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private epgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/media/view/adapter/DABEpgListAdapter;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/media/viewmodel/DabViewModel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/DABEpgListAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/DABEpgListAdapter;)Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

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

    .line 23
    check-cast p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;I)V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabProgramInfo;

    iget-object v0, v0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabProgramInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v1

    .line 54
    iget-object v2, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->tvDate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    const/16 v5, 0x9

    if-le v0, v5, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v5, :cond_1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->tvProgramName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabProgramInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/DabProgramInfo;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->ivAppointment:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabProgramInfo;

    iget-boolean v1, v1, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 58
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/DabViewModel;->isReservedExpired(Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v2, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/DabViewModel;->isCurPlayingProgram(Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 62
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 63
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_2

    .line 65
    :cond_2
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 66
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v4}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 69
    :goto_2
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->tvDate:Landroid/widget/TextView;

    const v5, -0x777778

    const/4 v6, -0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v4, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->tvProgramName:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move v5, v6

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v1, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->ivAppointment:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object p1, p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->ivAppointment:Landroid/widget/ImageView;

    new-instance v0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;-><init>(Lcom/chery/media/view/adapter/DABEpgListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/DABEpgListAdapter;Lcom/chery/media/databinding/DabListEpgItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->epgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;

    return-void
.end method
