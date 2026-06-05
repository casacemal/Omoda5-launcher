.class final Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;
.super Ljava/lang/Object;
.source "CarAudioControl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/audio/CarAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioControlDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/audio/CarAudioControl;


# direct methods
.method constructor <init>(Lcom/android/car/audio/CarAudioControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/audio/CarAudioControl;

    .line 1731
    iput-object p1, p0, Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;->this$0:Lcom/android/car/audio/CarAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2
    .param p1, "cookie"    # J

    .line 1735
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;->this$0:Lcom/android/car/audio/CarAudioControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioControl;->access$502(Lcom/android/car/audio/CarAudioControl;Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;)Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    .line 1736
    const-string v0, "CAR.AUDIO"

    const-string v1, "IAudioControl service is death!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;->this$0:Lcom/android/car/audio/CarAudioControl;

    invoke-static {v0}, Lcom/android/car/audio/CarAudioControl;->access$600(Lcom/android/car/audio/CarAudioControl;)Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->access$700(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;)V

    .line 1738
    return-void
.end method
