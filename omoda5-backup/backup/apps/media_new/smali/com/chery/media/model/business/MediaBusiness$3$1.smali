.class Lcom/chery/media/model/business/MediaBusiness$3$1;
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

    .line 179
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$3$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness$3$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$3;

    iget-object v0, v0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/MediaBusiness;->access$400(Lcom/chery/media/model/business/MediaBusiness;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 p0, 0xc

    if-eq v0, p0, :cond_1

    const/16 p0, 0x10

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$3$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$3;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/MediaBusiness;->access$400(Lcom/chery/media/model/business/MediaBusiness;)I

    move-result p0

    invoke-static {p0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto :goto_0

    .line 184
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 188
    :cond_4
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    :goto_0
    return-void
.end method
