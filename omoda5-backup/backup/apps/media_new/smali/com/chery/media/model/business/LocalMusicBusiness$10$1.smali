.class Lcom/chery/media/model/business/LocalMusicBusiness$10$1;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/LocalMusicBusiness$10;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$10;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$10$1;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 855
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run saveMusicsInfo"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$10$1;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$10;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$10;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1500(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "local_musics.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$10$1;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$10;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$10;->val$infoString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/chery/media/util/Utils;->writeToFile(Ljava/lang/String;[BZ)Z

    return-void
.end method
