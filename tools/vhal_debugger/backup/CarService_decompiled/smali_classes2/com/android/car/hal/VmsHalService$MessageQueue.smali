.class Lcom/android/car/hal/VmsHalService$MessageQueue;
.super Ljava/lang/Object;
.source "VmsHalService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VmsHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageQueue"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mSupportedMessageTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/hal/VmsHalService;


# direct methods
.method private constructor <init>(Lcom/android/car/hal/VmsHalService;)V
    .locals 3

    .line 150
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance p1, Landroid/util/ArraySet;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    .line 152
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 153
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 154
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 155
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 151
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mSupportedMessageTypes:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/hal/VmsHalService;Lcom/android/car/hal/VmsHalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/hal/VmsHalService;
    .param p2, "x1"    # Lcom/android/car/hal/VmsHalService$1;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService$MessageQueue;-><init>(Lcom/android/car/hal/VmsHalService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/hal/VmsHalService$MessageQueue;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService$MessageQueue;

    .line 150
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mSupportedMessageTypes:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/car/hal/-$$Lambda$7iOl2rDfZg5T5bjGIVqHE4Bn4x8;

    invoke-direct {v2, v1}, Lcom/android/car/hal/-$$Lambda$7iOl2rDfZg5T5bjGIVqHE4Bn4x8;-><init>(Landroid/os/Handler;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    .end local p0    # "this":Lcom/android/car/hal/VmsHalService$MessageQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueue(ILjava/lang/Object;)V
    .locals 3
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mSupportedMessageTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 176
    .end local p0    # "this":Lcom/android/car/hal/VmsHalService$MessageQueue;
    :cond_0
    const-string v0, "VmsHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    .end local p1    # "messageType":I
    .end local p2    # "message":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    .line 187
    .local v0, "messageType":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 190
    .local v1, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->this$0:Lcom/android/car/hal/VmsHalService;

    invoke-static {v2, v1}, Lcom/android/car/hal/VmsHalService;->access$800(Lcom/android/car/hal/VmsHalService;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "While sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VmsHalService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 161
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VmsHalService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 162
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 160
    .end local p0    # "this":Lcom/android/car/hal/VmsHalService$MessageQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService$MessageQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local p0    # "this":Lcom/android/car/hal/VmsHalService$MessageQueue;
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
