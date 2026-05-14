.class Lcom/chery/media/view/adapter/RadioListAdapter$2;
.super Ljava/lang/Object;
.source "RadioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/RadioListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/RadioListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/RadioListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/RadioListAdapter;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/chery/media/view/adapter/RadioListAdapter$2;->this$0:Lcom/chery/media/view/adapter/RadioListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/RadioListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/chery/media/view/adapter/RadioListAdapter$2;->this$0:Lcom/chery/media/view/adapter/RadioListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/RadioListAdapter;->access$100(Lcom/chery/media/view/adapter/RadioListAdapter;)Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/RadioListAdapter$2;->this$0:Lcom/chery/media/view/adapter/RadioListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/RadioListAdapter;->access$000(Lcom/chery/media/view/adapter/RadioListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/view/adapter/RadioListAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/RadioDef;

    iget v0, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget-object v1, p0, Lcom/chery/media/view/adapter/RadioListAdapter$2;->this$0:Lcom/chery/media/view/adapter/RadioListAdapter;

    invoke-static {v1}, Lcom/chery/media/view/adapter/RadioListAdapter;->access$000(Lcom/chery/media/view/adapter/RadioListAdapter;)Ljava/util/List;

    move-result-object v1

    iget p0, p0, Lcom/chery/media/view/adapter/RadioListAdapter$2;->val$position:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/RadioDef;

    iget-boolean p0, p0, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;->onCollectionClicked(IZ)V

    return-void
.end method
