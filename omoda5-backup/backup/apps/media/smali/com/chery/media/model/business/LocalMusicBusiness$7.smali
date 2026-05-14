.class Lcom/chery/media/model/business/LocalMusicBusiness$7;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IConfigListener;


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

    .line 461
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$7;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigSuccess()V
    .locals 3

    .line 464
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigSuccess RomSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRomSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRomSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$7;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const-wide v1, 0x80000000L

    invoke-static {v0, v1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2302(Lcom/chery/media/model/business/LocalMusicBusiness;J)J

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$7;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const-wide/32 v1, 0x20000000

    invoke-static {v0, v1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2302(Lcom/chery/media/model/business/LocalMusicBusiness;J)J

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$7;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$7;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2300(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v1

    const-string p0, "com.chery.media.localmusic.max_size"

    invoke-static {v0, p0, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method
