.class Lcom/chery/media/model/business/BtMusicBusiness$2;
.super Ljava/lang/Object;
.source "BtMusicBusiness.java"

# interfaces
.implements Lcom/chery/media/BtAudioManager$MediaSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/BtMusicBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/BtMusicBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/BtMusicBusiness;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectState(Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 350
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/BtAudioManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/BtMusicBusiness$2;->updateMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaMetadata is null when connect"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    invoke-static {}, Lcom/chery/media/BtAudioManager;->get()Lcom/chery/media/BtAudioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/BtAudioManager;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 359
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/BtMusicBusiness$2;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_1

    .line 361
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlaybackState is null  when connect"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_1
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->access$300(Lcom/chery/media/model/business/BtMusicBusiness;)V

    :cond_2
    return-void
.end method

.method public updateMetadata(Landroid/media/MediaMetadata;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 411
    new-instance v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    invoke-direct {v0}, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 412
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->title:Ljava/lang/String;

    const-string v1, "android.media.metadata.ARTIST"

    .line 413
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->artist:Ljava/lang/String;

    const-string v1, "android.media.metadata.ALBUM"

    .line 414
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->album:Ljava/lang/String;

    const-string v1, "android.media.metadata.DURATION"

    .line 415
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->duration:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p1, "null"

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p1

    .line 418
    :goto_1
    iget-object v2, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/BtMusicBusiness;->access$700(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/BtMusicBusiness;->access$700(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    invoke-virtual {p1}, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 420
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update musicInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->access$700(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public updatePlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 6

    .line 371
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlaybackState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    .line 376
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v3

    long-to-int p1, v3

    goto :goto_0

    :cond_0
    move p1, v0

    move v2, v1

    .line 379
    :goto_0
    iget-object v3, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/BtMusicBusiness;->access$400(Lcom/chery/media/model/business/BtMusicBusiness;)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 380
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playpauseState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 386
    :cond_1
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result v1

    .line 387
    iget-object v3, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-virtual {v3}, Lcom/chery/media/model/business/BtMusicBusiness;->isFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 388
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-virtual {v1}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {v1, v2}, Lcom/chery/media/model/business/BtMusicBusiness;->access$402(Lcom/chery/media/model/business/BtMusicBusiness;I)I

    .line 392
    iget-object v1, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/BtMusicBusiness;->access$500(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 394
    invoke-static {}, Lcom/chery/media/view/activity/MediaActivity;->getInstance()Lcom/chery/media/view/activity/MediaActivity;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 395
    invoke-virtual {v1}, Lcom/chery/media/view/activity/MediaActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {v1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    .line 402
    :cond_3
    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness$2;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->access$600(Lcom/chery/media/model/business/BtMusicBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
