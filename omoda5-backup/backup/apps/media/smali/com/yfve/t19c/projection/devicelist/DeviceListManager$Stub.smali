.class public abstract Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;
.super Landroid/os/Binder;
.source "DeviceListManager.java"

# interfaces
.implements Lcom/yfve/t19c/projection/devicelist/DeviceListManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/devicelist/DeviceListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.devicelist.DeviceListManager"

.field static final TRANSACTION_getAliveDevices:I = 0x4

.field static final TRANSACTION_getHistoryDevices:I = 0x5

.field static final TRANSACTION_onBluetoothPairResult:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_startSession:I = 0x3

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.devicelist.DeviceListManager"

    .line 42
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.devicelist.DeviceListManager"

    .line 53
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    instance-of v1, v0, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/devicelist/DeviceListManager;
    .locals 1

    .line 293
    sget-object v0, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/devicelist/DeviceListManager;)Z
    .locals 1

    .line 283
    sget-object v0, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 287
    sput-object p0, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 284
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v2, "com.yfve.t19c.projection.devicelist.DeviceListManager"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 122
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->onBluetoothPairResult(Ljava/lang/String;I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->getHistoryDevices()Ljava/util/List;

    move-result-object p0

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 106
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->getAliveDevices()Ljava/util/List;

    move-result-object p0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 93
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 100
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->startSession(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 84
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->unregisterListener(Lcom/yfve/t19c/projection/devicelist/OnConnectListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 75
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->registerListener(Lcom/yfve/t19c/projection/devicelist/OnConnectListener;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 70
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
