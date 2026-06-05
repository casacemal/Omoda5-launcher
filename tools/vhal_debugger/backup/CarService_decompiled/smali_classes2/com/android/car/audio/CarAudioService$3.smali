.class Lcom/android/car/audio/CarAudioService$3;
.super Landroid/content/BroadcastReceiver;
.source "CarAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/audio/CarAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/audio/CarAudioService;


# direct methods
.method constructor <init>(Lcom/android/car/audio/CarAudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/audio/CarAudioService;

    .line 244
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService$3;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "zoneId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x73abbf83

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_2

    const v3, 0x45cc07b3

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService$3;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v1, v6, v6}, Lcom/android/car/audio/CarAudioService;->access$600(Lcom/android/car/audio/CarAudioService;II)V

    goto :goto_2

    .line 250
    :cond_4
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 251
    .local v1, "streamType":I
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService$3;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v2, v1}, Lcom/android/car/audio/CarAudioService;->access$400(Lcom/android/car/audio/CarAudioService;I)I

    move-result v2

    .line 252
    .local v2, "groupId":I
    if-ne v2, v5, :cond_5

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown stream type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAR.AUDIO"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 255
    :cond_5
    iget-object v3, p0, Lcom/android/car/audio/CarAudioService$3;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v3, v6, v2, v6}, Lcom/android/car/audio/CarAudioService;->access$500(Lcom/android/car/audio/CarAudioService;III)V

    .line 257
    nop

    .line 262
    .end local v1    # "streamType":I
    .end local v2    # "groupId":I
    :goto_2
    return-void
.end method
