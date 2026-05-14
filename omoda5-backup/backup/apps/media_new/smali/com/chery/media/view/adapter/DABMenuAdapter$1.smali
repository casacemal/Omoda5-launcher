.class Lcom/chery/media/view/adapter/DABMenuAdapter$1;
.super Ljava/lang/Object;
.source "DABMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/DABMenuAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABMenuAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/DABMenuAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABMenuAdapter;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABMenuAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABMenuAdapter;

    iget v0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/chery/media/view/adapter/DABMenuAdapter;->setCurIndex(I)V

    .line 54
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABMenuAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABMenuAdapter;->access$000(Lcom/chery/media/view/adapter/DABMenuAdapter;)Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;

    move-result-object p1

    iget p0, p0, Lcom/chery/media/view/adapter/DABMenuAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;->onItemClicked(I)V

    return-void
.end method
