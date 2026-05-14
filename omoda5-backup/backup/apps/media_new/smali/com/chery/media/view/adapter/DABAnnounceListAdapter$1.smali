.class Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;
.super Ljava/lang/Object;
.source "DABAnnounceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/DABAnnounceListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->access$100(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;)Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;->this$0:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    invoke-static {v1}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->access$000(Lcom/chery/media/view/adapter/DABAnnounceListAdapter;)Ljava/util/List;

    move-result-object v1

    iget p0, p0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$1;->val$position:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/DabAnnounceInfo;

    iget-boolean p0, p0, Lcom/chery/media/model/business/DabAnnounceInfo;->announceSwitchOn:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;->onItemClicked(IZ)V

    return-void
.end method
