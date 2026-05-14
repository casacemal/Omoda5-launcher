.class public Lcom/chery/media/view/adapter/DABMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DABMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;,
        Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;

.field private curIndex:I

.field private mContext:Landroid/content/Context;

.field private menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/media/view/adapter/DABMenuAdapter;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/DABMenuAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->menuList:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->curIndex:I

    .line 36
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/DABMenuAdapter;)Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->clickListener:Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->menuList:Ljava/util/List;

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
    check-cast p1, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABMenuAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;I)V
    .locals 2

    .line 48
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->menuList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p1, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->curIndex:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 50
    iget-object p1, p1, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/chery/media/view/adapter/DABMenuAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/chery/media/view/adapter/DABMenuAdapter$1;-><init>(Lcom/chery/media/view/adapter/DABMenuAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/adapter/DABMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;-><init>(Lcom/chery/media/view/adapter/DABMenuAdapter;Lcom/chery/media/databinding/DabListMenuItemLayoutBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABMenuAdapter;->onViewRecycled(Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setCurIndex(I)V
    .locals 1

    .line 86
    iget v0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->curIndex:I

    if-eq v0, p1, :cond_0

    .line 87
    iput p1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->curIndex:I

    .line 88
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABMenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->menuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/DABMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter;->clickListener:Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;

    return-void
.end method
