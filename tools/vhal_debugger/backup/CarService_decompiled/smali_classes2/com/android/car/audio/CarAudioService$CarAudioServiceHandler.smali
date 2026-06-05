.class Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;
.super Landroid/os/Handler;
.source "CarAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/audio/CarAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarAudioServiceHandler"
.end annotation


# static fields
.field private static final CAR_ATTENUATION_DELAY_100MS:J = 0x64L

.field private static final CAR_ATTENUATION_DELAY_1S:J = 0x3e8L

.field private static final CAR_ATTENUATION_DELAY_50MS:J = 0x32L

.field private static final MSG_NAVI_ATTENUATION:I = 0x2

.field private static final MSG_NAVI_CHANNEL:I = 0x0

.field private static final MSG_PHONE_ATTENUATION:I = 0x1

.field private static final MSG_RINGTONE_ATTENUATION:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/car/audio/CarAudioService;


# direct methods
.method private constructor <init>(Lcom/android/car/audio/CarAudioService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1906
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->this$0:Lcom/android/car/audio/CarAudioService;

    .line 1907
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1908
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/audio/CarAudioService;Landroid/os/Looper;Lcom/android/car/audio/CarAudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/audio/CarAudioService$1;

    .line 1896
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;-><init>(Lcom/android/car/audio/CarAudioService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;
    .param p1, "x1"    # Z

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->handleNaviChannel(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;
    .param p1, "x1"    # Z

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->handleRingtoneAttenuation(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;
    .param p1, "x1"    # Z

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->handlePhoneAttenuation(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;
    .param p1, "x1"    # Z

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->handleNaviAttenuation(Z)V

    return-void
.end method

.method private handleNaviAttenuation(Z)V
    .locals 3
    .param p1, "atten"    # Z

    .line 1925
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->removeMessages(I)V

    .line 1926
    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1927
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1928
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1929
    return-void
.end method

.method private handleNaviChannel(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .line 1911
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->removeMessages(I)V

    .line 1912
    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1913
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1914
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x32

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1915
    return-void
.end method

.method private handlePhoneAttenuation(Z)V
    .locals 3
    .param p1, "atten"    # Z

    .line 1918
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->removeMessages(I)V

    .line 1919
    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1920
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1921
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1922
    return-void
.end method

.method private handleRingtoneAttenuation(Z)V
    .locals 3
    .param p1, "atten"    # Z

    .line 1932
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->removeMessages(I)V

    .line 1933
    invoke-virtual {p0, v0}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1934
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1935
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1936
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1940
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->this$0:Lcom/android/car/audio/CarAudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioService;->access$1800(Lcom/android/car/audio/CarAudioService;Z)V

    goto :goto_0

    .line 1948
    :cond_1
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->this$0:Lcom/android/car/audio/CarAudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioService;->access$1700(Lcom/android/car/audio/CarAudioService;Z)V

    .line 1949
    goto :goto_0

    .line 1945
    :cond_2
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->this$0:Lcom/android/car/audio/CarAudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioService;->access$1600(Lcom/android/car/audio/CarAudioService;Z)V

    .line 1946
    goto :goto_0

    .line 1942
    :cond_3
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->this$0:Lcom/android/car/audio/CarAudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioService;->access$1500(Lcom/android/car/audio/CarAudioService;Z)V

    .line 1943
    nop

    .line 1955
    :goto_0
    return-void
.end method
