.class public abstract Landroid/car/ILocationManagerProxy$Stub;
.super Landroid/os/Binder;
.source "ILocationManagerProxy.java"

# interfaces
.implements Landroid/car/ILocationManagerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ILocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ILocationManagerProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.ILocationManagerProxy"

.field static final TRANSACTION_getLastKnownLocation:I = 0x3

.field static final TRANSACTION_injectLocation:I = 0x2

.field static final TRANSACTION_isLocationEnabled:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.ILocationManagerProxy"

    .line 35
    invoke-virtual {p0, p0, v0}, Landroid/car/ILocationManagerProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ILocationManagerProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ILocationManagerProxy"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    instance-of v1, v0, Landroid/car/ILocationManagerProxy;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Landroid/car/ILocationManagerProxy;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Landroid/car/ILocationManagerProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ILocationManagerProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/ILocationManagerProxy;
    .locals 1

    .line 212
    sget-object v0, Landroid/car/ILocationManagerProxy$Stub$Proxy;->sDefaultImpl:Landroid/car/ILocationManagerProxy;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/ILocationManagerProxy;)Z
    .locals 1

    .line 205
    sget-object v0, Landroid/car/ILocationManagerProxy$Stub$Proxy;->sDefaultImpl:Landroid/car/ILocationManagerProxy;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 206
    sput-object p0, Landroid/car/ILocationManagerProxy$Stub$Proxy;->sDefaultImpl:Landroid/car/ILocationManagerProxy;

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

    const-string v1, "android.car.ILocationManagerProxy"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 63
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 91
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/car/ILocationManagerProxy$Stub;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p0, p3, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 101
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 76
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 79
    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 84
    :goto_1
    invoke-virtual {p0, p1}, Landroid/car/ILocationManagerProxy$Stub;->injectLocation(Landroid/location/Location;)Z

    move-result p0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 68
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/car/ILocationManagerProxy$Stub;->isLocationEnabled()Z

    move-result p0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
