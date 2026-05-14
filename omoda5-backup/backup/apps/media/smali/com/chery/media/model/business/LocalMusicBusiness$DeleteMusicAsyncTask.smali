.class Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;
.super Landroid/os/AsyncTask;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMusicAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private deleteRequest:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 669
    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->deleteRequest:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    return-void
.end method

.method static synthetic access$3500(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->deleteRequest:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 664
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 675
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 676
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying()Z

    move-result v0

    .line 679
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->deleteRequest:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->localMusicInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 681
    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object v5, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/chery/media/model/business/LocalMusicBusiness;->checkLocalState(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "DeleteMusicAsyncTask "

    if-eq v4, v5, :cond_0

    .line 682
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " HANDLE_DELETE_RESULT_NOT_EXIST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v4}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;

    invoke-direct {v5, p0, v3}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$1;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 697
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 699
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string v6, " HANDLE_DELETE_RESULT_SUCCESS"

    goto :goto_1

    :cond_1
    const-string v6, " HANDLE_DELETE_RESULT_FAILED"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 702
    iget-object v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v5}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$2;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 714
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;

    invoke-direct {v5, p0, v3}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v2, v4

    goto/16 :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 740
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$4;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
