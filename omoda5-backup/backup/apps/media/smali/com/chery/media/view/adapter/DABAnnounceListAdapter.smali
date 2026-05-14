.class public Lcom/chery/media/view/adapter/DABAnnounceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DABAnnounceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private announceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabAnnounceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->announceList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->announceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;)Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->announceList:Ljava/util/List;

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

    .line 20
    check-cast p1, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;I)V
    .locals 2

    .line 47
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->announceList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabAnnounceInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/DabAnnounceInfo;->announceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;->ivSelect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->announceList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabAnnounceInfo;

    iget-boolean v1, v1, Lcom/chery/media/model/business/DabAnnounceInfo;->announceSwitchOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 50
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;->ivSelect:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;-><init>(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p1, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$2;-><init>(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;
    .locals 1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;Lcom/chery/media/databinding/DabListAnnounceItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabAnnounceInfo;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->announceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->announceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;

    return-void
.end method
