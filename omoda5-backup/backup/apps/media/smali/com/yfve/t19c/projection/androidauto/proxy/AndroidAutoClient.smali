.class public Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;
.super Ljava/lang/Object;
.source "AndroidAutoClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;,
        Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;
    }
.end annotation


# static fields
.field public static final MEDIA_SOURCE_AV_ALL:I = 0x3

.field public static final MEDIA_SOURCE_ONLY_AUDIO:I = 0x1

.field public static final MEDIA_SOURCE_ONLY_VIDEO:I = 0x2

.field public static final PREPARE_HFP_FAILURE:I = 0x3

.field public static final PREPARE_HFP_READY_IDLE:I = 0x2

.field public static final PREPARE_HFP_READY_PAIRED:I = 0x1

.field private static final RETRY_BIND_MILLI_SECOND:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "AndroidAutoClient"

.field private static mVoiceSessionState:I


# instance fields
.field private bRetryEnable:Z

.field private connection:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;

.field private mCBAABindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStatusListener:Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mElapseTime:J

.field private mIPCListenerStub:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

.field private mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

.field private mPhoneCallListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget v0, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->VOICE_SESSION_END:I

    sput v0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mVoiceSessionState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bRetryEnable:Z

    .line 37
    iput-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    .line 91
    new-instance v1, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;

    invoke-direct {v1, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;-><init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V

    iput-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCListenerStub:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    .line 303
    new-instance v1, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;

    invoke-direct {v1, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;-><init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V

    iput-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallStatusListener:Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;

    .line 349
    new-instance v1, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;

    invoke-direct {v1, p0, v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;-><init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;)V

    iput-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->connection:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;

    .line 50
    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAUserManager;->checkClientLegality(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client name should register firstly, please contact the owner of this interface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->connection:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bindProxyService()V

    return-void
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 32
    sput p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mVoiceSessionState:I

    return p0
.end method

.method static synthetic access$300(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bRetryEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCListenerStub:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallStatusListener:Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    return-object p0
.end method

.method private bindProxyService()V
    .locals 5

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bindProxyService"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-boolean v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bRetryEnable:Z

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bindProxyService canceled."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_0
    new-instance v0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;-><init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V

    .line 437
    invoke-virtual {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->start()V

    return-void
.end method

.method private clearBindServiceStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;)V
    .locals 5

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " clearBindServiceStatusListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " clearBindServiceStatusListener listener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " clearBindServiceStatusListener clear it before. "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setBindServiceStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;)V
    .locals 5

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " setBindServiceStatusListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " setBindServiceStatusListener listener is null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " setBindServiceStatusListener listener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " setBindServiceStatusListener add a listener."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " setBindServiceStatusListener already contain this listener."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public exitActivity()V
    .locals 5

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " exitActivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    invoke-interface {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->exitActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " exitActivity failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getActivityState()I
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 669
    :try_start_0
    invoke-interface {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getActivityState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " RemoteException"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AndroidAutoClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMediaToken()Landroid/media/session/MediaSession$Token;
    .locals 6

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " getMediaToken"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 586
    :try_start_0
    invoke-interface {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getMediaToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " RemoteException"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSessionState()I
    .locals 6

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " getSessionState"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 599
    :try_start_0
    invoke-interface {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getSessionState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " RemoteException"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVoiceSessionState()I
    .locals 3

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " getVoiceSessionState"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AndroidAutoClient"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mVoiceSessionState:I

    return p0
.end method

.method public getWhetherTakeOverPage()Z
    .locals 6

    .line 628
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    const-string v1, "id:"

    const-string v2, "AndroidAutoClient"

    if-eqz v0, :cond_0

    .line 630
    :try_start_0
    invoke-interface {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getWhetherTakeOverPage()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 635
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " getWhetherTakeOverPage check result:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public initialise(Landroid/content/Context;Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;)V
    .locals 3

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " initialise"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidAutoClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 397
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 398
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bRetryEnable:Z

    .line 400
    invoke-direct {p0, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->setBindServiceStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;)V

    .line 401
    invoke-direct {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bindProxyService()V

    return-void
.end method

.method public lunchApp(Ljava/lang/String;)V
    .locals 4

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " lunchApp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 552
    :try_start_0
    invoke-interface {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->lunchApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " lunchApp failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;)V
    .locals 5

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " registerListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 461
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " registerListener listener is null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " registerListener listener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " registerListener add a listener."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " registerListener already contain this listener."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerPhoneCallListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;)V
    .locals 5

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " registerPhoneCallListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " registerPhoneCallListener listener is null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " registerPhoneCallListener listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "registerListener already contain this listener."

    .line 492
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestUI(Ljava/lang/String;)V
    .locals 4

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " requestUI"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 519
    :try_start_0
    invoke-interface {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->requestUI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " requestUI failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public responsePrepareHfpDevice(I)V
    .locals 5

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " responsePrepareHfpDevice"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 619
    :try_start_0
    invoke-interface {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->responsePrepareHfpDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " RemoteException"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " setSurface"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    invoke-interface {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " setSurface failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startSession(Ljava/lang/String;Z)V
    .locals 4

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " startSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 530
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->startSession(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " startSession failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopSession()V
    .locals 5

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " stopSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 541
    :try_start_0
    invoke-interface {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->stopSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " stopSession failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public switchMediaSource(I)V
    .locals 5

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " switchMediaSource()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 648
    :try_start_0
    invoke-interface {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->switchMediaSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " RemoteException"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public uninitialise(Landroid/content/Context;)V
    .locals 3

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " uninitialise"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidAutoClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bRetryEnable:Z

    .line 443
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCListenerStub:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    invoke-interface {v0, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->unregisterListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V

    .line 446
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallStatusListener:Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;

    invoke-interface {v0, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->unregisterCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 449
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 452
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->connection:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 453
    iget-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCBAABindList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 454
    iget-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 455
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public unregisterListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;)V
    .locals 3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " unregisterListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidAutoClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterPhoneCallListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;)V
    .locals 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " unregisterPhoneCallListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidAutoClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mPhoneCallListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public userInputTouch(J[I[I[III)V
    .locals 12

    move-object v0, p0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " userInputTouch"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AndroidAutoClient"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v4, v0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mIPCServiceProxy:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v4, :cond_0

    move-wide v5, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 574
    :try_start_0
    invoke-interface/range {v4 .. v11}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->userInputTouch(J[I[I[III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->mElapseTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " userInputTouch failed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
