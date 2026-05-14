.class Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;
.super Ljava/lang/Object;
.source "LocalMusicListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/LocalMusicListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/LocalMusicListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

.field final synthetic val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/LocalMusicListAdapter;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    iput-object p2, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iput p3, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->access$000(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-static {v1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->access$000(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->access$100(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->access$100(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {p1, v0, v1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;->onItemClick(ILcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 76
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    iget p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
