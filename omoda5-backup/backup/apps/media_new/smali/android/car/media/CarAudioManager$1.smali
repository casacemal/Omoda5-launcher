.class Landroid/car/media/CarAudioManager$1;
.super Landroid/car/media/ICarVolumeCallback$Stub;
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

    .line 103
    iput-object p1, p0, Landroid/car/media/CarAudioManager$1;->this$0:Landroid/car/media/CarAudioManager;

    invoke-direct {p0}, Landroid/car/media/ICarVolumeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupMuteChanged(III)V
    .locals 1

    .line 120
    iget-object p0, p0, Landroid/car/media/CarAudioManager$1;->this$0:Landroid/car/media/CarAudioManager;

    invoke-static {p0}, Landroid/car/media/CarAudioManager;->access$000(Landroid/car/media/CarAudioManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/media/CarAudioManager$CarVolumeCallback;

    .line 121
    invoke-virtual {v0, p1, p2, p3}, Landroid/car/media/CarAudioManager$CarVolumeCallback;->onGroupMuteChanged(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGroupVolumeChanged(III)V
    .locals 1

    .line 106
    iget-object p0, p0, Landroid/car/media/CarAudioManager$1;->this$0:Landroid/car/media/CarAudioManager;

    invoke-static {p0}, Landroid/car/media/CarAudioManager;->access$000(Landroid/car/media/CarAudioManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/media/CarAudioManager$CarVolumeCallback;

    .line 107
    invoke-virtual {v0, p1, p2, p3}, Landroid/car/media/CarAudioManager$CarVolumeCallback;->onGroupVolumeChanged(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMasterMuteChanged(II)V
    .locals 1

    .line 113
    iget-object p0, p0, Landroid/car/media/CarAudioManager$1;->this$0:Landroid/car/media/CarAudioManager;

    invoke-static {p0}, Landroid/car/media/CarAudioManager;->access$000(Landroid/car/media/CarAudioManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/media/CarAudioManager$CarVolumeCallback;

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/car/media/CarAudioManager$CarVolumeCallback;->onMasterMuteChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
