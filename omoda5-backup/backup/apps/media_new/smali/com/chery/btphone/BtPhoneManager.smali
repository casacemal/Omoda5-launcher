.class public Lcom/chery/btphone/BtPhoneManager;
.super Ljava/lang/Object;
.source "BtPhoneManager.java"


# static fields
.field public static final MSG_CALL_INFO:I = 0x1

.field public static final MSG_CALL_KEY:Ljava/lang/String; = "call_info"

.field private static volatile sInstance:Lcom/chery/btphone/BtPhoneManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/chery/btphone/BtPhoneManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/chery/btphone/BtPhoneManager;->sInstance:Lcom/chery/btphone/BtPhoneManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/chery/btphone/BtPhoneManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/chery/btphone/BtPhoneManager;->sInstance:Lcom/chery/btphone/BtPhoneManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/chery/btphone/BtPhoneManager;

    invoke-direct {v1}, Lcom/chery/btphone/BtPhoneManager;-><init>()V

    sput-object v1, Lcom/chery/btphone/BtPhoneManager;->sInstance:Lcom/chery/btphone/BtPhoneManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/btphone/BtPhoneManager;->sInstance:Lcom/chery/btphone/BtPhoneManager;

    return-object v0
.end method


# virtual methods
.method public sendPhone(Landroid/os/Messenger;Lcom/chery/btphone/PhoneDetail;)V
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "call_info"

    .line 38
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 41
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
