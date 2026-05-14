.class Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;
.super Ljava/lang/Object;
.source "DABEnsembleNameListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;->access$100(Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;)Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;->access$000(Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$onItemClickListener;->onItemClicked(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;

    iget p0, p0, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/chery/media/view/adapter/DABEnsembleNameListAdapter;->setCurIndex(I)V

    return-void
.end method
