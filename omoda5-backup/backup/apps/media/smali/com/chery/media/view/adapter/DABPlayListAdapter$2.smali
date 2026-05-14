.class Lcom/chery/media/view/adapter/DABPlayListAdapter$2;
.super Ljava/lang/Object;
.source "DABPlayListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/DABPlayListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABPlayListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABPlayListAdapter;I)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->access$100(Lcom/chery/media/view/adapter/DABPlayListAdapter;)Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->access$000(Lcom/chery/media/view/adapter/DABPlayListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    invoke-static {v1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->access$000(Lcom/chery/media/view/adapter/DABPlayListAdapter;)Ljava/util/List;

    move-result-object v1

    iget p0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$2;->val$position:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/DabInfo;

    iget-boolean p0, p0, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;->onCollectionClicked(Lcom/chery/media/model/business/DabInfo;Z)V

    return-void
.end method
