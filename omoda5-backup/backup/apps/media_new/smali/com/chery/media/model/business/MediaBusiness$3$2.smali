.class Lcom/chery/media/model/business/MediaBusiness$3$2;
.super Ljava/lang/Object;
.source "MediaBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/MediaBusiness$3;->onGroupVolumeChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/MediaBusiness$3;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/MediaBusiness$3;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$3$2;->this$1:Lcom/chery/media/model/business/MediaBusiness$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 207
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$3$2;->this$1:Lcom/chery/media/model/business/MediaBusiness$3;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/MediaBusiness;->access$400(Lcom/chery/media/model/business/MediaBusiness;)I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_1

    .line 210
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BT music is playing"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
