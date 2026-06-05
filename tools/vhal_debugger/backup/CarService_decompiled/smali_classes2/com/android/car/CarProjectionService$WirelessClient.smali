.class Lcom/android/car/CarProjectionService$WirelessClient;
.super Ljava/lang/Object;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WirelessClient"
.end annotation


# instance fields
.field public deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final messenger:Landroid/os/Messenger;

.field public final token:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/os/Messenger;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    iput-object p1, p0, Lcom/android/car/CarProjectionService$WirelessClient;->messenger:Landroid/os/Messenger;

    .line 997
    iput-object p2, p0, Lcom/android/car/CarProjectionService$WirelessClient;->token:Landroid/os/IBinder;

    .line 998
    return-void
.end method

.method static synthetic access$600(Landroid/os/Messenger;Landroid/os/IBinder;)Lcom/android/car/CarProjectionService$WirelessClient;
    .locals 1
    .param p0, "x0"    # Landroid/os/Messenger;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 990
    invoke-static {p0, p1}, Lcom/android/car/CarProjectionService$WirelessClient;->of(Landroid/os/Messenger;Landroid/os/IBinder;)Lcom/android/car/CarProjectionService$WirelessClient;

    move-result-object v0

    return-object v0
.end method

.method private static of(Landroid/os/Messenger;Landroid/os/IBinder;)Lcom/android/car/CarProjectionService$WirelessClient;
    .locals 1
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1001
    new-instance v0, Lcom/android/car/CarProjectionService$WirelessClient;

    invoke-direct {v0, p0, p1}, Lcom/android/car/CarProjectionService$WirelessClient;-><init>(Landroid/os/Messenger;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method send(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 1006
    const-string v0, "CAR.PROJECTION"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v1, p0, Lcom/android/car/CarProjectionService$WirelessClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    goto :goto_0

    .line 1008
    :catch_0
    move-exception v1

    .line 1009
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to send message"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{token= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarProjectionService$WirelessClient;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deathRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarProjectionService$WirelessClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
