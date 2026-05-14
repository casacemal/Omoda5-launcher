.class Lcom/chery/media/model/business/LocalMusicBusiness$2$2;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness$2;->onStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

.field final synthetic val$media:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$2;Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->val$media:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->val$media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$400(Lcom/chery/media/model/business/LocalMusicBusiness;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness;->errorlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$600(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 314
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v3, "nextMusic:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 316
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object v4, v4, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object v4, v4, Lcom/chery/media/model/business/LocalMusicBusiness;->errorlist:Ljava/util/List;

    .line 321
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$2;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "errorlist size(%s) >= playlist size(%s)"

    .line 320
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
