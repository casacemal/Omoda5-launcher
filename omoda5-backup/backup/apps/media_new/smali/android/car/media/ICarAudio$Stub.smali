.class public abstract Landroid/car/media/ICarAudio$Stub;
.super Landroid/os/Binder;
.source "ICarAudio.java"

# interfaces
.implements Landroid/car/media/ICarAudio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/ICarAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarAudio$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.media.ICarAudio"

.field static final TRANSACTION_clearZoneIdForUid:I = 0x15

.field static final TRANSACTION_createAudioPatch:I = 0xd

.field static final TRANSACTION_getAudioSetting:I = 0x20

.field static final TRANSACTION_getAudioZoneIds:I = 0x12

.field static final TRANSACTION_getEQBand:I = 0x21

.field static final TRANSACTION_getExternalSources:I = 0xc

.field static final TRANSACTION_getGroupMaxVolume:I = 0x3

.field static final TRANSACTION_getGroupMinVolume:I = 0x4

.field static final TRANSACTION_getGroupMute:I = 0x7

.field static final TRANSACTION_getGroupVolume:I = 0x5

.field static final TRANSACTION_getOnVolumeMax:I = 0x1d

.field static final TRANSACTION_getOnVolumeMin:I = 0x1e

.field static final TRANSACTION_getUsagesForVolumeGroupId:I = 0x11

.field static final TRANSACTION_getVolumeGroupCount:I = 0xf

.field static final TRANSACTION_getVolumeGroupIdForUsage:I = 0x10

.field static final TRANSACTION_getZoneIdForDisplayPortId:I = 0x16

.field static final TRANSACTION_getZoneIdForUid:I = 0x13

.field static final TRANSACTION_isDynamicRoutingEnabled:I = 0x1

.field static final TRANSACTION_registerAudioSettingCallback:I = 0x19

.field static final TRANSACTION_registerVolumeCallback:I = 0x17

.field static final TRANSACTION_releaseAudioPatch:I = 0xe

.field static final TRANSACTION_setAudioSetting:I = 0x1f

.field static final TRANSACTION_setBalanceTowardRight:I = 0xb

.field static final TRANSACTION_setFadeTowardFront:I = 0xa

.field static final TRANSACTION_setGroupChannelGain:I = 0x9

.field static final TRANSACTION_setGroupMute:I = 0x6

.field static final TRANSACTION_setGroupVolume:I = 0x2

.field static final TRANSACTION_setNaviDucking:I = 0x23

.field static final TRANSACTION_setPresetEQForSmart:I = 0x22

.field static final TRANSACTION_setSourceMute:I = 0x8

.field static final TRANSACTION_setZoneIdForUid:I = 0x14

.field static final TRANSACTION_setupOnVolumeMax:I = 0x1b

.field static final TRANSACTION_setupOnVolumeMin:I = 0x1c

.field static final TRANSACTION_unregisterAudioSettingCallback:I = 0x1a

.field static final TRANSACTION_unregisterVolumeCallback:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.media.ICarAudio"

    .line 155
    invoke-virtual {p0, p0, v0}, Landroid/car/media/ICarAudio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudio;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.media.ICarAudio"

    .line 166
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    instance-of v1, v0, Landroid/car/media/ICarAudio;

    if-eqz v1, :cond_1

    .line 168
    check-cast v0, Landroid/car/media/ICarAudio;

    return-object v0

    .line 170
    :cond_1
    new-instance v0, Landroid/car/media/ICarAudio$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/media/ICarAudio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/media/ICarAudio;
    .locals 1

    .line 1405
    sget-object v0, Landroid/car/media/ICarAudio$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarAudio;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/media/ICarAudio;)Z
    .locals 1

    .line 1398
    sget-object v0, Landroid/car/media/ICarAudio$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarAudio;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1399
    sput-object p0, Landroid/car/media/ICarAudio$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarAudio;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.media.ICarAudio"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 589
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 580
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v3, v1

    .line 583
    :cond_0
    invoke-virtual {p0, v3}, Landroid/car/media/ICarAudio$Stub;->setNaviDucking(Z)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 571
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 574
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->setPresetEQForSmart(I)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 561
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 564
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getEQBand(I)[I

    move-result-object p0

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 546
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 549
    sget-object p1, Landroid/media/AudioSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/AudioSetting;

    .line 554
    :cond_1
    invoke-virtual {p0, v0}, Landroid/car/media/ICarAudio$Stub;->getAudioSetting(Landroid/media/AudioSetting;)I

    move-result p0

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 532
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 535
    sget-object p1, Landroid/media/AudioSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/AudioSetting;

    .line 540
    :cond_2
    invoke-virtual {p0, v0}, Landroid/car/media/ICarAudio$Stub;->setAudioSetting(Landroid/media/AudioSetting;)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 520
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 525
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getOnVolumeMin(II)I

    move-result p0

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 508
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 513
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getOnVolumeMax(II)I

    move-result p0

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 495
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 502
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/media/ICarAudio$Stub;->setupOnVolumeMin(III)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 482
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 489
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/media/ICarAudio$Stub;->setupOnVolumeMax(III)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 473
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 476
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->unregisterAudioSettingCallback(Landroid/os/IBinder;)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 464
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 467
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->registerAudioSettingCallback(Landroid/os/IBinder;)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 455
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 458
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->unregisterVolumeCallback(Landroid/os/IBinder;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 446
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 449
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->registerVolumeCallback(Landroid/os/IBinder;)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 436
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 439
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getZoneIdForDisplayPortId(B)I

    move-result p0

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 426
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 429
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->clearZoneIdForUid(I)Z

    move-result p0

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 414
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 419
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->setZoneIdForUid(II)Z

    move-result p0

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 404
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 407
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getZoneIdForUid(I)I

    move-result p0

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 396
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/car/media/ICarAudio$Stub;->getAudioZoneIds()[I

    move-result-object p0

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 384
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 389
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getUsagesForVolumeGroupId(II)[I

    move-result-object p0

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 372
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 377
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getVolumeGroupIdForUsage(II)I

    move-result p0

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 362
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 365
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getVolumeGroupCount(I)I

    move-result p0

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 348
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 351
    sget-object p1, Landroid/car/media/CarAudioPatchHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/car/media/CarAudioPatchHandle;

    .line 356
    :cond_3
    invoke-virtual {p0, v0}, Landroid/car/media/ICarAudio$Stub;->releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 328
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 335
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/media/ICarAudio$Stub;->createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;

    move-result-object p0

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 338
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-virtual {p0, p3, v1}, Landroid/car/media/CarAudioPatchHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 320
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroid/car/media/ICarAudio$Stub;->getExternalSources()[Ljava/lang/String;

    move-result-object p0

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 311
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 314
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->setBalanceTowardRight(F)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 302
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->setFadeTowardFront(F)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 287
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 296
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/car/media/ICarAudio$Stub;->setGroupChannelGain(IIII)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 274
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v3, v1

    .line 281
    :cond_5
    invoke-virtual {p0, p1, p4, v3}, Landroid/car/media/ICarAudio$Stub;->setSourceMute(IIZ)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 262
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 267
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getGroupMute(II)Z

    move-result p0

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 247
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v3, v1

    .line 255
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 256
    invoke-virtual {p0, p1, p4, v3, p2}, Landroid/car/media/ICarAudio$Stub;->setGroupMute(IIZI)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 235
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getGroupVolume(II)I

    move-result p0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 223
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getGroupMinVolume(II)I

    move-result p0

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 211
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getGroupMaxVolume(II)I

    move-result p0

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 196
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 205
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/car/media/ICarAudio$Stub;->setGroupVolume(IIII)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 188
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/car/media/ICarAudio$Stub;->isDynamicRoutingEnabled()Z

    move-result p0

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 183
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
