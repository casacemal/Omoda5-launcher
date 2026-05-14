.class public abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;
.super Landroid/os/Binder;
.source "IIAP2Comm.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm"

.field static final TRANSACTION_createIAP2:I = 0x10

.field static final TRANSACTION_destroyIAP2:I = 0x11

.field static final TRANSACTION_getConnectionInfo:I = 0x2

.field static final TRANSACTION_getCurIdentifyStatus:I = 0x8

.field static final TRANSACTION_getCurIdentifyType:I = 0x7

.field static final TRANSACTION_iAP2MediaControl:I = 0x18

.field static final TRANSACTION_registerIAP2LinkTransferDelegate:I = 0x12

.field static final TRANSACTION_registerIdentifyStatusListener:I = 0x5

.field static final TRANSACTION_registerMessageListener:I = 0xe

.field static final TRANSACTION_registerRoleSwitchStatusListener:I = 0xa

.field static final TRANSACTION_requestIdentify:I = 0x3

.field static final TRANSACTION_requestRoleSwitch:I = 0x9

.field static final TRANSACTION_sendEmptyAckMessage:I = 0xd

.field static final TRANSACTION_sendMessage:I = 0xc

.field static final TRANSACTION_setConnectionInfo:I = 0x1

.field static final TRANSACTION_setPluginInfoInfo:I = 0x17

.field static final TRANSACTION_setStartSession:I = 0x1a

.field static final TRANSACTION_setUSBNCMorWifiApInfo:I = 0x15

.field static final TRANSACTION_setVehicleBtMac:I = 0x16

.field static final TRANSACTION_setWifiInfo:I = 0x14

.field static final TRANSACTION_terminateIdentify:I = 0x4

.field static final TRANSACTION_unregisterIAP2LinkTransferDelegate:I = 0x13

.field static final TRANSACTION_unregisterIdentifyStatusListener:I = 0x6

.field static final TRANSACTION_unregisterMessageListener:I = 0xf

.field static final TRANSACTION_unregisterRoleSwitchStatusListener:I = 0xb

.field static final TRANSACTION_updateLocationInfo:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm"

    .line 103
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm"

    .line 114
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;

    return-object v0

    .line 118
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;
    .locals 1

    .line 1030
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;)Z
    .locals 1

    .line 1023
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1024
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 435
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 426
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->setStartSession(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 415
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->updateLocationInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 404
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->iAP2MediaControl(ILjava/lang/String;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 389
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 398
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->setPluginInfoInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 378
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->setVehicleBtMac(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 367
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->setUSBNCMorWifiApInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 350
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 361
    invoke-virtual/range {v2 .. v7}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->setWifiInfo(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 341
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->unregisterIAP2LinkTransferDelegate(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 330
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p1

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->registerIAP2LinkTransferDelegate(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 321
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->destroyIAP2(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 310
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->createIAP2(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 299
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->unregisterMessageListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 288
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->registerMessageListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 279
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->sendEmptyAckMessage(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 266
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->sendMessage(I[BLjava/lang/String;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 257
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->unregisterRoleSwitchStatusListener(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 246
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IRoleSwitchStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IRoleSwitchStatusListener;

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->registerRoleSwitchStatusListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IRoleSwitchStatusListener;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 235
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 239
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p0, v0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->requestRoleSwitch(ZLjava/lang/String;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 225
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->getCurIdentifyStatus(Ljava/lang/String;)I

    move-result p0

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 215
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->getCurIdentifyType(Ljava/lang/String;)I

    move-result p0

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 206
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->unregisterIdentifyStatusListener(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 195
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIdentifyStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIdentifyStatusListener;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->registerIdentifyStatusListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIdentifyStatusListener;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 186
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->terminateIdentify(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 168
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 173
    sget-object p4, Lcom/yfve/t19c/projection/carplay/service/iap2client/IdentifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/yfve/t19c/projection/carplay/service/iap2client/IdentifyInfo;

    .line 179
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 180
    invoke-virtual {p0, p1, v3, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->requestIdentify(ILcom/yfve/t19c/projection/carplay/service/iap2client/IdentifyInfo;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 152
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->getConnectionInfo(Ljava/lang/String;)Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    move-result-object p0

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 158
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p0, p3, v1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 136
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 139
    sget-object p1, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    .line 145
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0, v3, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2Comm$Stub;->setConnectionInfo(Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
