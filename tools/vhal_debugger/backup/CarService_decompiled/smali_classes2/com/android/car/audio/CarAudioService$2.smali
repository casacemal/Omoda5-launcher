.class Lcom/android/car/audio/CarAudioService$2;
.super Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
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

    .line 190
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeAdjustment(I)V
    .locals 10
    .param p1, "adjustment"    # I

    .line 193
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v0}, Lcom/android/car/audio/CarAudioService;->access$300(Lcom/android/car/audio/CarAudioService;)I

    move-result v0

    .line 195
    .local v0, "usage":I
    const/4 v1, 0x0

    .line 196
    .local v1, "zoneId":I
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v2

    .line 197
    .local v2, "groupId":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v4, v3, v2}, Lcom/android/car/audio/CarAudioService;->getGroupVolume(II)I

    move-result v4

    .line 198
    .local v4, "currentVolume":I
    const/16 v5, 0x1001

    .line 199
    .local v5, "flags":I
    iget-object v6, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v6, v3, v2}, Lcom/android/car/audio/CarAudioService;->getGroupMute(II)Z

    move-result v6

    .line 200
    .local v6, "isMute":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onVolumeAdjustment: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " suggested usage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mute: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    const-string v8, "CAR.AUDIO"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v7, -0x64

    const/16 v8, 0x1001

    const/4 v9, 0x1

    if-eq p1, v7, :cond_6

    const/4 v7, -0x1

    if-eq p1, v7, :cond_5

    if-eq p1, v9, :cond_4

    const/16 v7, 0x64

    if-eq p1, v7, :cond_2

    const/16 v7, 0x65

    if-eq p1, v7, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v2}, Lcom/android/car/audio/CarAudioService;->isMediaGroupId(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v2}, Lcom/android/car/audio/CarAudioService;->isBTMusicGroupId(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 225
    :cond_1
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    xor-int/lit8 v9, v6, 0x1

    invoke-virtual {v7, v3, v2, v9, v8}, Lcom/android/car/audio/CarAudioService;->setGroupMute(IIZI)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v2}, Lcom/android/car/audio/CarAudioService;->isMediaGroupId(I)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v2}, Lcom/android/car/audio/CarAudioService;->isBTMusicGroupId(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 220
    :cond_3
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v3, v2, v3, v8}, Lcom/android/car/audio/CarAudioService;->setGroupMute(IIZI)V

    goto :goto_0

    .line 210
    :cond_4
    add-int/lit8 v7, v4, 0x1

    iget-object v9, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v9, v3, v2}, Lcom/android/car/audio/CarAudioService;->getGroupMaxVolume(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 211
    .local v7, "maxValue":I
    iget-object v9, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v9, v3, v2, v7, v8}, Lcom/android/car/audio/CarAudioService;->setGroupVolume(IIII)V

    .line 212
    goto :goto_0

    .line 206
    .end local v7    # "maxValue":I
    :cond_5
    add-int/lit8 v7, v4, -0x1

    iget-object v9, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v9, v3, v2}, Lcom/android/car/audio/CarAudioService;->getGroupMinVolume(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 207
    .local v7, "minValue":I
    iget-object v9, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v9, v3, v2, v7, v8}, Lcom/android/car/audio/CarAudioService;->setGroupVolume(IIII)V

    .line 208
    goto :goto_0

    .line 214
    .end local v7    # "minValue":I
    :cond_6
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v2}, Lcom/android/car/audio/CarAudioService;->isMediaGroupId(I)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v2}, Lcom/android/car/audio/CarAudioService;->isBTMusicGroupId(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 215
    :cond_7
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$2;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v7, v3, v2, v9, v8}, Lcom/android/car/audio/CarAudioService;->setGroupMute(IIZI)V

    .line 232
    :cond_8
    :goto_0
    return-void
.end method
