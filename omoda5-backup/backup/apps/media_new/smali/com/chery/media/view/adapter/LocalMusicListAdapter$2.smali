.class Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;
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
.method constructor <init>(Lcom/chery/media/view/adapter/LocalMusicListAdapter;ILcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->access$100(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;->this$0:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->access$100(Lcom/chery/media/view/adapter/LocalMusicListAdapter;)Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicListAdapter$2;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;->onItemClick(ILcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    :cond_0
    return-void
.end method
