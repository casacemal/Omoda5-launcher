.class Lcom/android/car/audio/CarAudioControl$CarAudioHandler;
.super Landroid/os/Handler;
.source "CarAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/audio/CarAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarAudioHandler"
.end annotation


# static fields
.field private static final CAR_RESET_DELAY_MS:J = 0xc8L

.field private static final DELAY_100_MS:J = 0x64L

.field private static final DELAY_200_MS:J = 0xc8L

.field private static final DELAY_50_MS:J = 0x32L

.field private static final MSG_DSP_SERVICE_DEATH:I = 0x0

.field private static final MSG_REQUEST_BTMUSIC_AUDIO:I = 0x4

.field private static final MSG_REQUEST_MEDIA_AUDIO:I = 0x2

.field private static final MSG_REQUEST_PHONE_AUDIO:I = 0x1

.field private static final MSG_REQUEST_RINGTONE_AUDIO:I = 0x3

.field private static final SCO_SWITCH_DELAY:J = 0x32L


# instance fields
.field final synthetic this$0:Lcom/android/car/audio/CarAudioControl;


# direct methods
.method private constructor <init>(Lcom/android/car/audio/CarAudioControl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2005
    iput-object p1, p0, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->this$0:Lcom/android/car/audio/CarAudioControl;

    .line 2006
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2007
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/audio/CarAudioControl;Landroid/os/Looper;Lcom/android/car/audio/CarAudioControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/audio/CarAudioControl;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/audio/CarAudioControl$1;

    .line 1992
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;-><init>(Lcom/android/car/audio/CarAudioControl;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl$CarAudioHandler;
    .param p1, "x1"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "x2"    # I

    .line 1992
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->handleRequestPhoneAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl$CarAudioHandler;
    .param p1, "x1"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 1992
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->handleRequestRingtoneAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl$CarAudioHandler;
    .param p1, "x1"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 1992
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->handleRequestMediaAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl$CarAudioHandler;
    .param p1, "x1"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "x2"    # I

    .line 1992
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->handleRequestBTMusicAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    .line 1992
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->handleDSPServiceDeath()V

    return-void
.end method

.method private cancelAll()V
    .locals 1

    .line 2059
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2060
    return-void
.end method

.method private handleDSPServiceDeath()V
    .locals 3

    .line 2010
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2011
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2012
    return-void
.end method

.method private handleRequestBTMusicAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V
    .locals 3
    .param p1, "da"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "bus"    # I

    .line 2048
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 2049
    invoke-virtual {p0, v0, p1}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2050
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    .line 2051
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2053
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2056
    :goto_0
    return-void
.end method

.method private handleRequestMediaAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V
    .locals 3
    .param p1, "da"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "bus"    # I
    .param p3, "isCarplayApp"    # Z

    .line 2037
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 2038
    invoke-virtual {p0, v0, p1}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2039
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_1

    .line 2040
    if-eqz p3, :cond_0

    const-wide/16 v1, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 2042
    :cond_1
    if-eqz p3, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0xc8

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2045
    :goto_2
    return-void
.end method

.method private handleRequestPhoneAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V
    .locals 3
    .param p1, "da"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "bus"    # I

    .line 2015
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 2016
    invoke-virtual {p0, v0, p1}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2017
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x32

    if-nez p2, :cond_0

    .line 2018
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2020
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2023
    :goto_0
    return-void
.end method

.method private handleRequestRingtoneAudio(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V
    .locals 3
    .param p1, "da"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    .param p2, "bus"    # I
    .param p3, "isCarplayApp"    # Z

    .line 2026
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 2027
    invoke-virtual {p0, v0, p1}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2028
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x64

    if-nez p2, :cond_1

    .line 2029
    if-eqz p3, :cond_0

    const-wide/16 v1, 0x32

    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2031
    :cond_1
    if-eqz p3, :cond_2

    const-wide/16 v1, 0x0

    :cond_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2034
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2064
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->this$0:Lcom/android/car/audio/CarAudioControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioControl;->access$800(Lcom/android/car/audio/CarAudioControl;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V

    .line 2074
    goto :goto_0

    .line 2066
    :cond_1
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->this$0:Lcom/android/car/audio/CarAudioControl;

    iget-object v0, v0, Lcom/android/car/audio/CarAudioControl;->mCallBack:Lcom/android/car/audio/CarAudioControl$CarAudioControlCallback;

    invoke-virtual {v0}, Lcom/android/car/audio/CarAudioControl$CarAudioControlCallback;->onDSPServiceDeath()V

    .line 2067
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->this$0:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v0}, Lcom/android/car/audio/CarAudioControl;->init()V

    .line 2068
    nop

    .line 2078
    :goto_0
    return-void
.end method
