.class Lcom/android/car/audio/CarAudioService$1;
.super Ljava/lang/Object;
.source "CarAudioService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 161
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService$1;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 184
    const-string v0, "CAR.AUDIO"

    const-string v1, "onNullBinding"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService$1;->this$0:Lcom/android/car/audio/CarAudioService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioService;->access$200(Lcom/android/car/audio/CarAudioService;Z)V

    .line 186
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 164
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService$1;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v0}, Lcom/android/car/audio/CarAudioService;->access$100(Lcom/android/car/audio/CarAudioService;)Landroid/car/Car;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarInfoManager;

    .line 165
    .local v0, "carInfoManager":Landroid/car/CarInfoManager;
    const v1, 0x21706203

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getByteProperty(I)[B

    move-result-object v1

    .line 166
    .local v1, "bytes":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 167
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x7

    .line 168
    .local v3, "loudSpeaker":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config loudSpeaker:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CAR.AUDIO"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 170
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService$1;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v4, v2}, Lcom/android/car/audio/CarAudioService;->access$200(Lcom/android/car/audio/CarAudioService;Z)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService$1;->this$0:Lcom/android/car/audio/CarAudioService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/car/audio/CarAudioService;->access$200(Lcom/android/car/audio/CarAudioService;Z)V

    .line 175
    .end local v3    # "loudSpeaker":I
    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 179
    const-string v0, "CAR.AUDIO"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method
