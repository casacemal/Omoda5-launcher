.class Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;
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


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3000(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 623
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3400(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->access$2600(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;)Lcom/chery/media/model/business/LocalMusicBusiness$AddRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 624
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$5;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3000(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
