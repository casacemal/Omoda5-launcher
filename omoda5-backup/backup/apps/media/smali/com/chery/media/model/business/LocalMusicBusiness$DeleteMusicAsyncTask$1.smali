.class Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;
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

.field final synthetic val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 686
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->access$3500(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->access$3500(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v2, v1}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;->onDeleteResult(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;I)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3600(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

    .line 690
    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v2, v3, v1}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;->onDeleteResult(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
