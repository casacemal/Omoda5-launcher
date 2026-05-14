.class public abstract Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;
.super Landroid/os/Binder;
.source "ICarPlayComm.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

.field static final TRANSACTION_lunchCarPlayApp:I = 0x5

.field static final TRANSACTION_prepareAltAudio:I = 0x1c

.field static final TRANSACTION_prepareMainAudio:I = 0x19

.field static final TRANSACTION_refreshBonjour:I = 0x28

.field static final TRANSACTION_registerCarPlayAudioListener:I = 0x17

.field static final TRANSACTION_registerCarPlayServerListener:I = 0xa

.field static final TRANSACTION_registerCarPlaySessionListener:I = 0xc

.field static final TRANSACTION_registerCommListener:I = 0x15

.field static final TRANSACTION_requestAudioResource:I = 0x11

.field static final TRANSACTION_requestBorrowAudio:I = 0x25

.field static final TRANSACTION_requestBorrowVideo:I = 0x26

.field static final TRANSACTION_requestResource:I = 0x10

.field static final TRANSACTION_requestVideoResource:I = 0x12

.field static final TRANSACTION_sendChangeModeRequest:I = 0xf

.field static final TRANSACTION_sendHardKey:I = 0x1f

.field static final TRANSACTION_sendIAPMessage:I = 0xe

.field static final TRANSACTION_sendLimitedUIRequest:I = 0x24

.field static final TRANSACTION_sendNightModeRequest:I = 0x23

.field static final TRANSACTION_sendSiriRequest:I = 0x22

.field static final TRANSACTION_sendUIRequest:I = 0x13

.field static final TRANSACTION_setBtMac:I = 0x6

.field static final TRANSACTION_setGraphic:I = 0x20

.field static final TRANSACTION_setSurface:I = 0x7

.field static final TRANSACTION_startAltAudio:I = 0x1d

.field static final TRANSACTION_startCarPlayServer:I = 0x3

.field static final TRANSACTION_startCarPlaySession:I = 0x1

.field static final TRANSACTION_startMainAudio:I = 0x1a

.field static final TRANSACTION_startVideoStream:I = 0x8

.field static final TRANSACTION_stopAltAudio:I = 0x1e

.field static final TRANSACTION_stopCarPlayServer:I = 0x4

.field static final TRANSACTION_stopCarPlaySession:I = 0x2

.field static final TRANSACTION_stopMainAudio:I = 0x1b

.field static final TRANSACTION_stopVideoStream:I = 0x9

.field static final TRANSACTION_touchScreenUpdate:I = 0x14

.field static final TRANSACTION_unregisterCarPlayAudioListener:I = 0x18

.field static final TRANSACTION_unregisterCarPlayServerListener:I = 0xb

.field static final TRANSACTION_unregisterCarPlaySessionListener:I = 0xd

.field static final TRANSACTION_unregisterCommListener:I = 0x16

.field static final TRANSACTION_updateAppSts:I = 0x21

.field static final TRANSACTION_updateRightHandDrive:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 154
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 165
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz v1, :cond_1

    .line 167
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    return-object v0

    .line 169
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;
    .locals 1

    .line 1421
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;)Z
    .locals 1

    .line 1414
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1415
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    const v3, 0x5f4e5446

    const/4 v13, 0x1

    const-string v4, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    if-eq v1, v3, :cond_d

    const/4 v3, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 573
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 562
    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v5, v13

    .line 566
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {p0, v5, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->refreshBonjour(ZLjava/lang/String;)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 553
    :pswitch_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v13

    .line 556
    :cond_1
    invoke-virtual {p0, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->updateRightHandDrive(Z)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 542
    :pswitch_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v5, v13

    .line 547
    :cond_2
    invoke-virtual {p0, v1, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->requestBorrowVideo(IZ)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 531
    :pswitch_3
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v5, v13

    .line 536
    :cond_3
    invoke-virtual {p0, v1, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->requestBorrowAudio(IZ)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 522
    :pswitch_4
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v5, v13

    .line 525
    :cond_4
    invoke-virtual {p0, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->sendLimitedUIRequest(Z)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 513
    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v5, v13

    .line 516
    :cond_5
    invoke-virtual {p0, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->sendNightModeRequest(Z)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 505
    :pswitch_6
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->sendSiriRequest(I)V

    return v13

    .line 491
    :pswitch_7
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->updateAppSts(IIII)V

    return v13

    .line 477
    :pswitch_8
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 480
    sget-object v1, Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;

    .line 485
    :cond_6
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->setGraphic(Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 466
    :pswitch_9
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v5, v13

    .line 471
    :cond_7
    invoke-virtual {p0, v1, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->sendHardKey(IZ)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 459
    :pswitch_a
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->stopAltAudio()V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 452
    :pswitch_b
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->startAltAudio()V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 445
    :pswitch_c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->prepareAltAudio()V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 438
    :pswitch_d
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->stopMainAudio()V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 431
    :pswitch_e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->startMainAudio()V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 424
    :pswitch_f
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->prepareMainAudio()V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 417
    :pswitch_10
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->unregisterCarPlayAudioListener()V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 408
    :pswitch_11
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;

    move-result-object v1

    .line 411
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->registerCarPlayAudioListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 401
    :pswitch_12
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->unregisterCommListener()V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 392
    :pswitch_13
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;

    move-result-object v1

    .line 395
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->registerCommListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 380
    :pswitch_14
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    invoke-virtual {p0, v1, v3, v2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->touchScreenUpdate(BII)V

    return v13

    .line 372
    :pswitch_15
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 375
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->sendUIRequest([B)V

    return v13

    .line 360
    :pswitch_16
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v5, v13

    .line 365
    :cond_8
    invoke-virtual {p0, v1, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->requestVideoResource(IZ)Z

    move-result v0

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    .line 348
    :pswitch_17
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v5, v13

    .line 353
    :cond_9
    invoke-virtual {p0, v1, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->requestAudioResource(IZ)Z

    move-result v0

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    .line 336
    :pswitch_18
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v5, v13

    .line 341
    :cond_a
    invoke-virtual {p0, v1, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->requestResource(IZ)Z

    move-result v0

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    .line 307
    :pswitch_19
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v14

    .line 330
    invoke-virtual/range {v0 .. v11}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->sendChangeModeRequest(IIIIIIIIIII)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 299
    :pswitch_1a
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 302
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->sendIAPMessage([B)V

    return v13

    .line 290
    :pswitch_1b
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    move-result-object v1

    .line 293
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->unregisterCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 281
    :pswitch_1c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    move-result-object v1

    .line 284
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->registerCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 274
    :pswitch_1d
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->unregisterCarPlayServerListener()V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 265
    :pswitch_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener;

    move-result-object v1

    .line 268
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->registerCarPlayServerListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener;)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 258
    :pswitch_1f
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->stopVideoStream()V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 251
    :pswitch_20
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->startVideoStream()V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 237
    :pswitch_21
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 240
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/Surface;

    .line 245
    :cond_b
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->setSurface(Landroid/view/Surface;)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 228
    :pswitch_22
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->setBtMac(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 219
    :pswitch_23
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->lunchCarPlayApp(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 212
    :pswitch_24
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->stopCarPlayServer()V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 205
    :pswitch_25
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->startCarPlayServer()V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 198
    :pswitch_26
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->stopCarPlaySession()V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 187
    :pswitch_27
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v5, v13

    .line 192
    :cond_c
    invoke-virtual {p0, v1, v5}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->startCarPlaySession(Ljava/lang/String;Z)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 182
    :cond_d
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
