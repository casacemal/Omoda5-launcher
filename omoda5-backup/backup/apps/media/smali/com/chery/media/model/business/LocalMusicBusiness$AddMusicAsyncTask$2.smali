.class Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;
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

.field final synthetic val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->access$2600(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->access$2600(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {v0, v2, v1}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;->onAddResult(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;I)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;

    .line 550
    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$2;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {v2, v3, v1}, Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;->onAddResult(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
