.class Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAndroidAutoClient.java"

# interfaces
.implements Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public exitActivity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 342
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 343
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->exitActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 346
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getActivityState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 625
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 627
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 628
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getActivityState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 630
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    return-object p0
.end method

.method public getMediaToken()Landroid/media/session/MediaSession$Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 484
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 486
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 487
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getMediaToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 489
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 491
    sget-object p0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSession$Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 498
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getSessionState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 509
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 511
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 512
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getSessionState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 514
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getWhetherTakeOverPage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 587
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 588
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 589
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->getWhetherTakeOverPage()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 591
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 595
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public lunchApp(Ljava/lang/String;)V
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
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 415
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 418
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 419
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->lunchApp(Ljava/lang/String;)V
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

.method public registerCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 529
    invoke-interface {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 530
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 531
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 532
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->registerCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 535
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V
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
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 321
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 322
    invoke-interface {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 323
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 324
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 325
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->registerListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 328
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestUI(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 358
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 361
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 362
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->requestUI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 365
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public responsePrepareHfpDevice(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 566
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 569
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 570
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->responsePrepareHfpDevice(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 573
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setSurface(Landroid/view/Surface;)V
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
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 436
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {p1, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    :goto_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 443
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 444
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 447
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startSession(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 377
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 379
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 381
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 382
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->startSession(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 385
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 397
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 399
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 400
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->stopSession()V
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

.method public switchMediaSource(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 605
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 608
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 609
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->switchMediaSource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 612
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 547
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 548
    invoke-interface {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 549
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 550
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 551
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->unregisterCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 554
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 302
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 303
    invoke-interface {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 304
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 305
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 306
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->unregisterListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V
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

.method public userInputTouch(J[I[I[III)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 459
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v4, p1

    .line 460
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    move-object v0, p3

    .line 461
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object/from16 v7, p4

    .line 462
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object/from16 v8, p5

    .line 463
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    move/from16 v9, p6

    .line 464
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 465
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move-object v3, p0

    .line 466
    iget-object v3, v3, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x9

    const/4 v11, 0x0

    invoke-interface {v3, v6, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 467
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 468
    invoke-static {}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->userInputTouch(J[I[I[III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 471
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 474
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
