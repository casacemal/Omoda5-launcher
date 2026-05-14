.class Lcom/chery/media/view/adapter/DABEpgListAdapter$1;
.super Ljava/lang/Object;
.source "DABEpgListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/DABEpgListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABEpgListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/DABEpgListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABEpgListAdapter;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->access$100(Lcom/chery/media/view/adapter/DABEpgListAdapter;)Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->access$000(Lcom/chery/media/view/adapter/DABEpgListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabProgramInfo;

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    invoke-static {v1}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->access$000(Lcom/chery/media/view/adapter/DABEpgListAdapter;)Ljava/util/List;

    move-result-object v1

    iget p0, p0, Lcom/chery/media/view/adapter/DABEpgListAdapter$1;->val$position:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/DabProgramInfo;

    iget-boolean p0, p0, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;->onItemClicked(Lcom/chery/media/model/business/DabProgramInfo;Z)V

    return-void
.end method
