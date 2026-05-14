.class Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;
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

.field final synthetic val$deleted:Z

.field final synthetic val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Z)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iput-boolean p3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->val$deleted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 705
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->access$3500(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->access$3500(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-boolean v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->val$deleted:Z

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-interface {v0, v3, v4}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;->onDeleteResult(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;I)V

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3600(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

    .line 709
    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-boolean v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;->val$deleted:Z

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-interface {v3, v4, v5}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;->onDeleteResult(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;I)V

    goto :goto_1

    :cond_3
    return-void
.end method
