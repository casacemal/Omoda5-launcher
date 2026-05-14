.class Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

.field final synthetic val$success:Z

.field final synthetic val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Z)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iput-boolean p3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 571
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->access$2600(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->access$2600(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-boolean v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->val$success:Z

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-interface {v0, v3, v4}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;->onAddResult(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;I)V

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    .line 575
    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-boolean v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$3;->val$success:Z

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-interface {v3, v4, v5}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;->onAddResult(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;I)V

    goto :goto_1

    :cond_3
    return-void
.end method
