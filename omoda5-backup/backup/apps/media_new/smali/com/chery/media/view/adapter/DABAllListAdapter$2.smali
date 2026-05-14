.class Lcom/chery/media/view/adapter/DABAllListAdapter$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABAllListAdapter;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$2;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$2;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->access$200(Lcom/chery/media/view/adapter/DABAllListAdapter;)Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$2;->this$0:Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/DABAllListAdapter;->access$000(Lcom/chery/media/view/adapter/DABAllListAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/chery/media/view/adapter/DABAllListAdapter$2;->val$position:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/DabInfo;

    invoke-interface {p1, p0}, Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;->onCancelFavor(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method
