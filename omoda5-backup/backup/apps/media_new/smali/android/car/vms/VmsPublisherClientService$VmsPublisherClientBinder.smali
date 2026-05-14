.class Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;
.super Landroid/car/vms/IVmsPublisherClient$Stub;
.source "VmsPublisherClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/VmsPublisherClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VmsPublisherClientBinder"
.end annotation


# instance fields
.field private mSequence:J

.field private final mSequenceLock:Ljava/lang/Object;

.field private final mVmsPublisherClientService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/vms/VmsPublisherClientService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/vms/VmsPublisherClientService;)V
    .locals 2

    .line 212
    invoke-direct {p0}, Landroid/car/vms/IVmsPublisherClient$Stub;-><init>()V

    const-wide/16 v0, -0x1

    .line 208
    iput-wide v0, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mSequence:J

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mSequenceLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mVmsPublisherClientService:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private assertSystemOrSelf()V
    .locals 1

    .line 253
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be system user or same process"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onVmsSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V
    .locals 6

    .line 231
    invoke-direct {p0}, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->assertSystemOrSelf()V

    .line 233
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mVmsPublisherClientService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/VmsPublisherClientService;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mSequenceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mSequence:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const-string v0, "VmsPublisherClientService"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sequence out of order. Current sequence = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mSequence:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "; expected new sequence = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit v1

    return-void

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mSequence:J

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v0}, Landroid/car/vms/VmsPublisherClientService;->access$000(Landroid/car/vms/VmsPublisherClientService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 247
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 245
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setVmsPublisherService(Landroid/os/IBinder;Landroid/car/vms/IVmsPublisherService;)V
    .locals 2

    .line 218
    invoke-direct {p0}, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->assertSystemOrSelf()V

    .line 220
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->mVmsPublisherClientService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/vms/VmsPublisherClientService;

    if-nez p0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {p0}, Landroid/car/vms/VmsPublisherClientService;->access$000(Landroid/car/vms/VmsPublisherClientService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    .line 225
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 224
    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    invoke-static {p0, p1}, Landroid/car/vms/VmsPublisherClientService;->access$100(Landroid/car/vms/VmsPublisherClientService;Landroid/os/IBinder;)V

    return-void
.end method
