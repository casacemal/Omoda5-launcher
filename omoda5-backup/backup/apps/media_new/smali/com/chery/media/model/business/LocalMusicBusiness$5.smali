.class Lcom/chery/media/model/business/LocalMusicBusiness$5;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;->init(Landroid/content/Context;)V
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

    .line 397
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 400
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "External Storage not mounted"

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1502(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1500(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1600(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    .line 415
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(ILjava/util/List;)V

    .line 416
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1800(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    .line 417
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1900(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    return-void

    .line 407
    :cond_2
    :goto_0
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "externalFilesDir invalid"

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$5;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
