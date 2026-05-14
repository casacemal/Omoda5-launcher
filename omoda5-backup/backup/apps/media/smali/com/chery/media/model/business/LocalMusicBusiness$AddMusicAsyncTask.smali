.class Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;
.super Landroid/os/AsyncTask;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMusicAsyncTask"
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
.field private addRequest:Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->addRequest:Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    return-void
.end method

.method static synthetic access$2600(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->addRequest:Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 511
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 521
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->addRequest:Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    iget-object p1, p1, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->usbMusicInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 522
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2400(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->size:J

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2300(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-string v2, "AddMusicAsyncTask "

    if-lez v1, :cond_1

    .line 523
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " HANDLE_ADD_RESULT_FULL"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2500(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2500(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$1;

    invoke-direct {v2, p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$1;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->checkLocalState(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 542
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " HANDLE_ADD_RESULT_ALREADY"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;

    invoke-direct {v2, p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 557
    :cond_2
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2800(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-static {}, Lcom/chery/media/model/business/UtilsClient;->getInstance()Lcom/chery/media/model/business/UtilsClient;

    move-result-object v4

    iget-object v5, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/chery/media/model/business/UtilsClient;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 559
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    if-eqz v4, :cond_3

    const-string v7, "success"

    goto :goto_1

    :cond_3
    const-string v7, "failed"

    :goto_1
    aput-object v7, v6, v3

    const-string v3, "copyFile from %s to %s %s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const-string v2, " HANDLE_ADD_RESULT_SUCCESS"

    goto :goto_2

    :cond_4
    const-string v2, " HANDLE_ADD_RESULT_FAILED"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    .line 563
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "to clear "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 565
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_5
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;

    invoke-direct {v3, p0, v0, v4}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v4, :cond_0

    .line 581
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;Ljava/lang/String;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 619
    :cond_6
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return-object p0
.end method
