.class Landroid/car/media/CarAudioManager$2;
.super Landroid/car/media/ICarAudioSettingCallback$Stub;
.source "CarAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/CarAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/media/CarAudioManager;


# direct methods
.method constructor <init>(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Landroid/car/media/CarAudioManager$2;->this$0:Landroid/car/media/CarAudioManager;

    invoke-direct {p0}, Landroid/car/media/ICarAudioSettingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioSettingChanged(Landroid/media/AudioSetting;)V
    .locals 1

    .line 130
    iget-object p0, p0, Landroid/car/media/CarAudioManager$2;->this$0:Landroid/car/media/CarAudioManager;

    invoke-static {p0}, Landroid/car/media/CarAudioManager;->access$100(Landroid/car/media/CarAudioManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/media/CarAudioManager$CarAudioSettingCallback;

    .line 131
    invoke-virtual {v0, p1}, Landroid/car/media/CarAudioManager$CarAudioSettingCallback;->onAudioSettingChanged(Landroid/media/AudioSetting;)V

    goto :goto_0

    :cond_0
    return-void
.end method
