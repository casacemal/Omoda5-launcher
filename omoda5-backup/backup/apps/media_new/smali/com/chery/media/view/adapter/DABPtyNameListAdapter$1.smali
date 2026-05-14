.class Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;
.super Ljava/lang/Object;
.source "DABPtyNameListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABPtyNameListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->access$100(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;)Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->access$000(Lcom/chery/media/view/adapter/DABPtyNameListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;->onItemClicked(I)V

    .line 60
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    iget p0, p0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->setCurIndex(I)V

    return-void
.end method
