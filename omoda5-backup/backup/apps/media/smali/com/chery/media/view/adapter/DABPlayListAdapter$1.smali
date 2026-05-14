.class Lcom/chery/media/view/adapter/DABPlayListAdapter$1;
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

    .line 57
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->access$100(Lcom/chery/media/view/adapter/DABPlayListAdapter;)Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->access$000(Lcom/chery/media/view/adapter/DABPlayListAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/chery/media/view/adapter/DABPlayListAdapter$1;->val$position:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/DabInfo;

    invoke-interface {p1, p0}, Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;->onItemClicked(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method
