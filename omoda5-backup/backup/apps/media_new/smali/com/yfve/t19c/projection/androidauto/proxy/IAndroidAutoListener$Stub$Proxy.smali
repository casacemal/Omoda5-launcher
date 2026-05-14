.class Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAndroidAutoListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public OnPrepareRemoteHfpDevice(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 441
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 442
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->OnPrepareRemoteHfpDevice(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 445
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    return-object p0
.end method

.method public onAAMediaSourceResponse(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 498
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 499
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onAAMediaSourceResponse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 502
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onAuthenticationResult(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 457
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 460
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 461
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onAuthenticationResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 464
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onHidePermissionPrompt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 382
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 383
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onHidePermissionPrompt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 386
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNotification(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 321
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 322
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 325
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 258
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 262
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 263
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 266
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onResizeSurfaceView(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 422
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 423
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onResizeSurfaceView(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSessionStatusUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 302
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 303
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onSessionStatusUpdate(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 306
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSetVideoFocus(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 278
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 281
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 282
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onSetVideoFocus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 285
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onShowPermissionPrompt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 362
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 364
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 365
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onShowPermissionPrompt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 368
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTakeOverDilarPage(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 476
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 477
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 479
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 480
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onTakeOverDilarPage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 483
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateActivityState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 514
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 517
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 518
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onUpdateActivityState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 521
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 339
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    invoke-virtual {p1, v0, v2}, Landroid/media/session/MediaSession$Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    :goto_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 346
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 347
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 350
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpdateVoiceSessionState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 401
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 402
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->onUpdateVoiceSessionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 405
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
