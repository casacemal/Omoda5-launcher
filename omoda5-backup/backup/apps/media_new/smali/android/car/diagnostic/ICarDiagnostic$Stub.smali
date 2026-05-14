.class public abstract Landroid/car/diagnostic/ICarDiagnostic$Stub;
.super Landroid/os/Binder;
.source "ICarDiagnostic.java"

# interfaces
.implements Landroid/car/diagnostic/ICarDiagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/ICarDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.diagnostic.ICarDiagnostic"

.field static final TRANSACTION_clearFreezeFrames:I = 0x6

.field static final TRANSACTION_getFreezeFrame:I = 0x5

.field static final TRANSACTION_getFreezeFrameTimestamps:I = 0x4

.field static final TRANSACTION_getLatestLiveFrame:I = 0x3

.field static final TRANSACTION_isClearFreezeFramesSupported:I = 0xb

.field static final TRANSACTION_isFreezeFrameNotificationSupported:I = 0x9

.field static final TRANSACTION_isGetFreezeFrameSupported:I = 0xa

.field static final TRANSACTION_isLiveFrameSupported:I = 0x8

.field static final TRANSACTION_isSelectiveClearFreezeFramesSupported:I = 0xc

.field static final TRANSACTION_registerOrUpdateDiagnosticListener:I = 0x2

.field static final TRANSACTION_unregisterDiagnosticListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.diagnostic.ICarDiagnostic"

    .line 102
    invoke-virtual {p0, p0, v0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/diagnostic/ICarDiagnostic;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.diagnostic.ICarDiagnostic"

    .line 113
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    instance-of v1, v0, Landroid/car/diagnostic/ICarDiagnostic;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Landroid/car/diagnostic/ICarDiagnostic;

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/diagnostic/ICarDiagnostic;
    .locals 1

    .line 559
    sget-object v0, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;->sDefaultImpl:Landroid/car/diagnostic/ICarDiagnostic;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/diagnostic/ICarDiagnostic;)Z
    .locals 1

    .line 552
    sget-object v0, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;->sDefaultImpl:Landroid/car/diagnostic/ICarDiagnostic;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 553
    sput-object p0, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;->sDefaultImpl:Landroid/car/diagnostic/ICarDiagnostic;

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

    const-string v2, "android.car.diagnostic.ICarDiagnostic"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 240
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->isSelectiveClearFreezeFramesSupported()Z

    move-result p0

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 232
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->isClearFreezeFramesSupported()Z

    move-result p0

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 224
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->isGetFreezeFrameSupported()Z

    move-result p0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 216
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->isFreezeFrameNotificationSupported()Z

    move-result p0

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 208
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->isLiveFrameSupported()Z

    move-result p0

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 197
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object p2

    .line 202
    invoke-virtual {p0, p1, p2}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->unregisterDiagnosticListener(ILandroid/car/diagnostic/ICarDiagnosticEventListener;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 187
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->clearFreezeFrames([J)Z

    move-result p0

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 171
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->getFreezeFrame(J)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object p0

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {p0, p3, v1}, Landroid/car/diagnostic/CarDiagnosticEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 163
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->getFreezeFrameTimestamps()[J

    move-result-object p0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return v1

    .line 149
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->getLatestLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {p0, p3, v1}, Landroid/car/diagnostic/CarDiagnosticEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 135
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object p2

    .line 142
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->registerOrUpdateDiagnosticListener(IILandroid/car/diagnostic/ICarDiagnosticEventListener;)Z

    move-result p0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 130
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
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
