.class Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIAP2MessageListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    return-object p0
.end method

.method public onMessageReceived(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 246
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 247
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onMessageReceived(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNotifyCarPlayAvailability()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 471
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 473
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 474
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onNotifyCarPlayAvailability()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 477
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNotifyCmd(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 396
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 399
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 400
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onNotifyCmd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 403
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 300
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 303
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 305
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 306
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 309
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNotifyWirelessCPSts(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 281
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 282
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 284
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 285
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onNotifyWirelessCPSts(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 288
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onStartLocationUpdate(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 415
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 417
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 418
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 419
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onStartLocationUpdate(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 422
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onStopLocationUpdate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 435
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 436
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 437
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onStopLocationUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 440
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateCallInfo(Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 346
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {p1, v0, v2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    :goto_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 355
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 356
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onUpdateCallInfo(Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 359
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateDevice(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 452
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 453
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 455
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 456
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onUpdateDevice(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 459
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateNowPlayingInfo(Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 321
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 323
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {p1, v0, v2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    :goto_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 330
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 331
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onUpdateNowPlayingInfo(Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 334
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateRouteGuidance(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 373
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 380
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 381
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onUpdateRouteGuidance(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 384
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateWifiInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 265
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 266
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;->onUpdateWifiInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 269
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
