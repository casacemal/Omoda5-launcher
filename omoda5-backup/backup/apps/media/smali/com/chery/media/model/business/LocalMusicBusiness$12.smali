.class Lcom/chery/media/model/business/LocalMusicBusiness$12;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;->fastBackward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 1307
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1310
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$4000(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$4000(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/chery/media/model/business/LocalMusicBusiness;->seekTo(J)V

    .line 1312
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$4000(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v0, v4, v5}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1200(Lcom/chery/media/model/business/LocalMusicBusiness;J)V

    .line 1313
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 1314
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->seekTo(J)V

    .line 1318
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0, v1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1200(Lcom/chery/media/model/business/LocalMusicBusiness;J)V

    .line 1319
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 1320
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$4100(Lcom/chery/media/model/business/LocalMusicBusiness;I)V

    .line 1321
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1322
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$12;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$4202(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
