.class public Lcom/chery/media/view/adapter/DABPtyNameListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DABPtyNameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;

.field private curIndex:I

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private mContext:Landroid/content/Context;

.field private ptyNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/media/viewmodel/DabViewModel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->ptyNameList:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->curIndex:I

    .line 38
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->ptyNameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;)Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->ptyNameList:Ljava/util/List;

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

    .line 21
    check-cast p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;I)V
    .locals 4

    .line 51
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v2, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->ptyNameList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/DabViewModel;->getPtyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->tvTitleMarquee:Lcom/chery/media/view/component/MarqueeTextView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v2, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->ptyNameList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/DabViewModel;->getPtyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->curIndex:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->tvTitleMarquee:Lcom/chery/media/view/component/MarqueeTextView;

    iget v1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->curIndex:I

    if-ne p2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 55
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->highLight:Landroid/widget/ImageView;

    iget v1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->curIndex:I

    if-ne p2, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object p1, p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;-><init>(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setCurIndex(I)V
    .locals 1

    .line 92
    iget v0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->curIndex:I

    if-eq v0, p1, :cond_0

    .line 93
    iput p1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->curIndex:I

    .line 94
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->ptyNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->ptyNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->clickListener:Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;

    return-void
.end method
