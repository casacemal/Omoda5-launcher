.class Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

.field final synthetic val$currentPlayingIndex:I

.field final synthetic val$isPlaying:Z


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;IZ)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iput p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->val$currentPlayingIndex:I

    iput-boolean p3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->val$isPlaying:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 744
    iget v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->val$currentPlayingIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-ltz v0, :cond_2

    .line 752
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v2, v2, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-static {v1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3900(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 753
    iget-boolean v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->val$isPlaying:Z

    if-eqz v0, :cond_3

    .line 754
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto :goto_0

    .line 758
    :cond_2
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3900(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    :cond_3
    :goto_0
    return-void
.end method
