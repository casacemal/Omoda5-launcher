.class Lcom/android/car/audio/CarAudioFocus$FocusEntry;
.super Ljava/lang/Object;
.source "CarAudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/audio/CarAudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusEntry"
.end annotation


# instance fields
.field final mAfi:Landroid/media/AudioFocusInfo;

.field final mAudioContext:I

.field final mBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/car/audio/CarAudioFocus$FocusEntry;",
            ">;"
        }
    .end annotation
.end field

.field mReceivedLossTransientCanDuck:Z

.field final synthetic this$0:Lcom/android/car/audio/CarAudioFocus;


# direct methods
.method constructor <init>(Lcom/android/car/audio/CarAudioFocus;Landroid/media/AudioFocusInfo;I)V
    .locals 0
    .param p2, "afi"    # Landroid/media/AudioFocusInfo;
    .param p3, "context"    # I

    .line 181
    iput-object p1, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->this$0:Lcom/android/car/audio/CarAudioFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 183
    iput p3, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAudioContext:I

    .line 184
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    .line 185
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public receivesDuckEvents()Z
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    return v1

    .line 202
    :cond_0
    const-string v2, "android.car.media.AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    return v1

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->this$0:Lcom/android/car/audio/CarAudioFocus;

    invoke-static {v2}, Lcom/android/car/audio/CarAudioFocus;->access$000(Lcom/android/car/audio/CarAudioFocus;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 208
    invoke-virtual {v3}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 206
    const-string v4, "android.car.permission.RECEIVE_CAR_AUDIO_DUCKING_EVENTS"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public wantsPauseInsteadOfDucking()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
