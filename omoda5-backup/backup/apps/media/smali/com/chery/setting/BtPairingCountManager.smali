.class public Lcom/chery/setting/BtPairingCountManager;
.super Ljava/lang/Object;
.source "BtPairingCountManager.java"


# static fields
.field public static final MSG_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/setting/BtPairingCountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-class v0, Lcom/chery/setting/BtPairingCountManager;

    const-string v1, "DEF"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/setting/BtPairingCountManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/chery/setting/BtPairingCountManager;->sInstance:Lcom/chery/setting/BtPairingCountManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/chery/setting/BtPairingCountManager;
    .locals 2

    .line 26
    sget-object v0, Lcom/chery/setting/BtPairingCountManager;->sInstance:Lcom/chery/setting/BtPairingCountManager;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/chery/setting/BtPairingCountManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/chery/setting/BtPairingCountManager;->sInstance:Lcom/chery/setting/BtPairingCountManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/chery/setting/BtPairingCountManager;

    invoke-direct {v1}, Lcom/chery/setting/BtPairingCountManager;-><init>()V

    sput-object v1, Lcom/chery/setting/BtPairingCountManager;->sInstance:Lcom/chery/setting/BtPairingCountManager;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/setting/BtPairingCountManager;->sInstance:Lcom/chery/setting/BtPairingCountManager;

    return-object v0
.end method


# virtual methods
.method public sendPairCount(Landroid/os/Messenger;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 40
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 46
    :cond_0
    sget-object p0, Lcom/chery/setting/BtPairingCountManager;->TAG:Ljava/lang/String;

    const-string p1, "sendPairCount server null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
