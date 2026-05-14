.class Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAIDLDabService.java"

# interfaces
.implements Lsw/com/dabdrmradio/IAIDLDabService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw/com/dabdrmradio/IAIDLDabService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lsw/com/dabdrmradio/IAIDLDabService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 274
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "sw.com.dabdrmradio.IAIDLDabService"

    return-object p0
.end method

.method public nativeCmdDabAnnouncementSwitch(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 383
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 386
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 387
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabAnnouncementSwitch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 390
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    throw p0
.end method

.method public nativeCmdDabBandSelect(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 364
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 366
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 367
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 368
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabBandSelect(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 371
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    throw p0
.end method

.method public nativeCmdDabChipPara(BB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 469
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 470
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 471
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabChipPara(BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 474
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    throw p0
.end method

.method public nativeCmdDabClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 287
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 288
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw p0
.end method

.method public nativeCmdDabEnsembleServiceComponentSeek(BB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 344
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 347
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 348
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 349
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabEnsembleServiceComponentSeek(BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 352
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    throw p0
.end method

.method public nativeCmdDabInitAnnounceBandScanFreq(IBBIIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "sw.com.dabdrmradio.IAIDLDabService"

    .line 402
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 403
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v5, p2

    .line 404
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move v6, p3

    .line 405
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v7, p4

    .line 406
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 407
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    .line 408
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 409
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move-object v3, p0

    .line 410
    iget-object v3, v3, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 412
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabInitAnnounceBandScanFreq(IBBIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 415
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 418
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    throw v0
.end method

.method public nativeCmdDabLinkingOption(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 552
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 554
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 555
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 556
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabLinkingOption(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 559
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    throw p0
.end method

.method public nativeCmdDabScanStart(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 305
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 306
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 307
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabScanStart(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 310
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw p0
.end method

.method public nativeCmdDabServiceComponentSelectPlay(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 322
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 328
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 329
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabServiceComponentSelectPlay(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 332
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    throw p0
.end method

.method public nativeCmdDabSetFmRdsInfo(IILjava/lang/String;BBBB)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "sw.com.dabdrmradio.IAIDLDabService"

    .line 506
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 507
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v5, p2

    .line 508
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, p3

    .line 509
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v7, p4

    .line 510
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v8, p5

    .line 511
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v9, p6

    .line 512
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v10, p7

    .line 513
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByte(B)V

    move-object v3, p0

    .line 514
    iget-object v3, v3, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 516
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabSetFmRdsInfo(IILjava/lang/String;BBBB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 519
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 522
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    throw v0
.end method

.method public nativeCmdDabSetFmRdsScan(BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 536
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 537
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabSetFmRdsScan(BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 540
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    throw p0
.end method

.method public nativeCmdDabSetVBER(BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 486
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 490
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 491
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabSetVBER(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 494
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw p0
.end method

.method public nativeGetVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 428
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 430
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 431
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeGetVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 433
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    throw p0
.end method

.method public registerCallBack(Lsw/com/dabdrmradio/IDabCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    .line 447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 448
    invoke-interface {p1}, Lsw/com/dabdrmradio/IDabCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 449
    iget-object p0, p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 450
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 451
    invoke-static {}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p0

    invoke-interface {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService;->registerCallBack(Lsw/com/dabdrmradio/IDabCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 454
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 459
    throw p0
.end method
