.class Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICPServiceInterface.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public exitActivity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 385
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 387
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 388
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->exitActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 391
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getCarPlayVideoState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 291
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 293
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 294
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->getCarPlayVideoState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 296
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 300
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    return-object p0
.end method

.method public getMediaToken()Landroid/media/session/MediaSession$Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 266
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 268
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 269
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->getMediaToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 271
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 273
    sget-object p0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSession$Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 280
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 482
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 484
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 485
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->getSerialNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 487
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public isCPStarted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 462
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 464
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 465
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->isCPStarted()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 467
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 471
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registeListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 329
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 330
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 331
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 332
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->registeListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 335
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestCPMedia()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 443
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 445
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 446
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->requestCPMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 449
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestResource(ZZZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 404
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 405
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 406
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 409
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 410
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->requestResource(ZZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 413
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestVideoResource()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 427
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 428
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->requestVideoResource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 431
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public roleSwitchComplete(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 366
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 369
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 370
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->roleSwitchComplete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 373
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setCarPlayConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 312
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 313
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->setCarPlayConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 316
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startCarPlaySession(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 247
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 249
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 250
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->startCarPlaySession(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 253
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisteListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 347
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 348
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 349
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 350
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 351
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->unregisteListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 354
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
