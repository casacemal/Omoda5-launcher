.class Lcom/chery/media/view/adapter/DABAllListAdapter$1;
.super Ljava/lang/Object;
.source "DABAllListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/DABAllListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABAllListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

.field final synthetic val$isCurStation:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABAllListAdapter;IZ)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->val$position:I

    iput-boolean p3, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->val$isCurStation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->access$200(Lcom/chery/media/view/adapter/DABAllListAdapter;)Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->access$000(Lcom/chery/media/view/adapter/DABAllListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    iget-boolean v1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->val$isCurStation:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-static {p0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->access$100(Lcom/chery/media/view/adapter/DABAllListAdapter;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;->onItemClicked(Lcom/chery/media/model/business/DabInfo;Z)V

    return-void
.end method
