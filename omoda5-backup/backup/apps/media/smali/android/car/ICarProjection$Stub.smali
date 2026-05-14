.class public abstract Landroid/car/ICarProjection$Stub;
.super Landroid/os/Binder;
.source "ICarProjection.java"

# interfaces
.implements Landroid/car/ICarProjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ICarProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarProjection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.ICarProjection"

.field static final TRANSACTION_getAvailableWifiChannels:I = 0xd

.field static final TRANSACTION_getProjectionOptions:I = 0xc

.field static final TRANSACTION_registerKeyEventHandler:I = 0x3

.field static final TRANSACTION_registerProjectionRunner:I = 0x1

.field static final TRANSACTION_registerProjectionStatusListener:I = 0xa

.field static final TRANSACTION_releaseBluetoothProfileInhibit:I = 0x8

.field static final TRANSACTION_requestBluetoothProfileInhibit:I = 0x7

.field static final TRANSACTION_startProjectionAccessPoint:I = 0x5

.field static final TRANSACTION_stopProjectionAccessPoint:I = 0x6

.field static final TRANSACTION_unregisterKeyEventHandler:I = 0x4

.field static final TRANSACTION_unregisterProjectionRunner:I = 0x2

.field static final TRANSACTION_unregisterProjectionStatusListener:I = 0xb

.field static final TRANSACTION_updateProjectionStatus:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.ICarProjection"

    .line 103
    invoke-virtual {p0, p0, v0}, Landroid/car/ICarProjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjection;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ICarProjection"

    .line 114
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    instance-of v1, v0, Landroid/car/ICarProjection;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Landroid/car/ICarProjection;

    return-object v0

    .line 118
    :cond_1
    new-instance v0, Landroid/car/ICarProjection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ICarProjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/ICarProjection;
    .locals 1

    .line 681
    sget-object v0, Landroid/car/ICarProjection$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarProjection;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/ICarProjection;)Z
    .locals 1

    .line 674
    sget-object v0, Landroid/car/ICarProjection$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarProjection;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 675
    sput-object p0, Landroid/car/ICarProjection$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarProjection;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.ICarProjection"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 295
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 298
    invoke-virtual {p0, p1}, Landroid/car/ICarProjection$Stub;->getAvailableWifiChannels(I)[I

    move-result-object p0

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 281
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/car/ICarProjection$Stub;->getProjectionOptions()Landroid/os/Bundle;

    move-result-object p0

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 285
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 289
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 272
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/ICarProjectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjectionStatusListener;

    move-result-object p1

    .line 275
    invoke-virtual {p0, p1}, Landroid/car/ICarProjection$Stub;->unregisterProjectionStatusListener(Landroid/car/ICarProjectionStatusListener;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 263
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/ICarProjectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjectionStatusListener;

    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Landroid/car/ICarProjection$Stub;->registerProjectionStatusListener(Landroid/car/ICarProjectionStatusListener;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 247
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    sget-object p1, Landroid/car/projection/ProjectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/car/projection/ProjectionStatus;

    .line 256
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 257
    invoke-virtual {p0, v0, p1}, Landroid/car/ICarProjection$Stub;->updateProjectionStatus(Landroid/car/projection/ProjectionStatus;Landroid/os/IBinder;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 228
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 231
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 237
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 240
    invoke-virtual {p0, v0, p1, p2}, Landroid/car/ICarProjection$Stub;->releaseBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z

    move-result p0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 209
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 212
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 218
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 221
    invoke-virtual {p0, v0, p1, p2}, Landroid/car/ICarProjection$Stub;->requestBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z

    move-result p0

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 200
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Landroid/car/ICarProjection$Stub;->stopProjectionAccessPoint(Landroid/os/IBinder;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 187
    sget-object p1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Messenger;

    .line 193
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 194
    invoke-virtual {p0, v0, p1}, Landroid/car/ICarProjection$Stub;->startProjectionAccessPoint(Landroid/os/Messenger;Landroid/os/IBinder;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/ICarProjectionKeyEventHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjectionKeyEventHandler;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Landroid/car/ICarProjection$Stub;->unregisterKeyEventHandler(Landroid/car/ICarProjectionKeyEventHandler;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 164
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/ICarProjectionKeyEventHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjectionKeyEventHandler;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/car/ICarProjection$Stub;->registerKeyEventHandler(Landroid/car/ICarProjectionKeyEventHandler;[B)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 150
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 158
    :cond_5
    invoke-virtual {p0, v0}, Landroid/car/ICarProjection$Stub;->unregisterProjectionRunner(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 136
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 139
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 144
    :cond_6
    invoke-virtual {p0, v0}, Landroid/car/ICarProjection$Stub;->registerProjectionRunner(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
