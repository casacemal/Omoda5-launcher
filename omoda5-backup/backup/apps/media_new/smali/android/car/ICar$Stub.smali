.class public abstract Landroid/car/ICar$Stub;
.super Landroid/os/Binder;
.source "ICar.java"

# interfaces
.implements Landroid/car/ICar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ICar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.ICar"

.field static final TRANSACTION_getCarConnectionType:I = 0x5

.field static final TRANSACTION_getCarService:I = 0x4

.field static final TRANSACTION_onSwitchUser:I = 0x3

.field static final TRANSACTION_setCarServiceHelper:I = 0x1

.field static final TRANSACTION_setUserLockStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.ICar"

    .line 62
    invoke-virtual {p0, p0, v0}, Landroid/car/ICar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ICar;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ICar"

    .line 73
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    instance-of v1, v0, Landroid/car/ICar;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Landroid/car/ICar;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Landroid/car/ICar$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ICar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/ICar;
    .locals 1

    .line 285
    sget-object v0, Landroid/car/ICar$Stub$Proxy;->sDefaultImpl:Landroid/car/ICar;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/ICar;)Z
    .locals 1

    .line 278
    sget-object v0, Landroid/car/ICar$Stub$Proxy;->sDefaultImpl:Landroid/car/ICar;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 279
    sput-object p0, Landroid/car/ICar$Stub$Proxy;->sDefaultImpl:Landroid/car/ICar;

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

    const/4 v0, 0x1

    const-string v1, "android.car.ICar"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 90
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 131
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/car/ICar$Stub;->getCarConnectionType()I

    move-result p0

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 121
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 113
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->onSwitchUser(I)V

    return v0

    .line 103
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/car/ICar$Stub;->setUserLockStatus(II)V

    return v0

    .line 95
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->setCarServiceHelper(Landroid/os/IBinder;)V

    return v0
.end method
