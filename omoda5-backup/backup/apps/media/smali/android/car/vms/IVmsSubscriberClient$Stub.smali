.class public abstract Landroid/car/vms/IVmsSubscriberClient$Stub;
.super Landroid/os/Binder;
.source "IVmsSubscriberClient.java"

# interfaces
.implements Landroid/car/vms/IVmsSubscriberClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/IVmsSubscriberClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/IVmsSubscriberClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.vms.IVmsSubscriberClient"

.field static final TRANSACTION_onLayersAvailabilityChanged:I = 0x2

.field static final TRANSACTION_onVmsMessageReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.vms.IVmsSubscriberClient"

    .line 34
    invoke-virtual {p0, p0, v0}, Landroid/car/vms/IVmsSubscriberClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.vms.IVmsSubscriberClient"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Landroid/car/vms/IVmsSubscriberClient;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Landroid/car/vms/IVmsSubscriberClient;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Landroid/car/vms/IVmsSubscriberClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/vms/IVmsSubscriberClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/vms/IVmsSubscriberClient;
    .locals 1

    .line 174
    sget-object v0, Landroid/car/vms/IVmsSubscriberClient$Stub$Proxy;->sDefaultImpl:Landroid/car/vms/IVmsSubscriberClient;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/vms/IVmsSubscriberClient;)Z
    .locals 1

    .line 167
    sget-object v0, Landroid/car/vms/IVmsSubscriberClient$Stub$Proxy;->sDefaultImpl:Landroid/car/vms/IVmsSubscriberClient;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 168
    sput-object p0, Landroid/car/vms/IVmsSubscriberClient$Stub$Proxy;->sDefaultImpl:Landroid/car/vms/IVmsSubscriberClient;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "android.car.vms.IVmsSubscriberClient"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 62
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 82
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    sget-object p1, Landroid/car/vms/VmsAvailableLayers;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/car/vms/VmsAvailableLayers;

    .line 90
    :cond_2
    invoke-virtual {p0, v0}, Landroid/car/vms/IVmsSubscriberClient$Stub;->onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V

    return v1

    .line 67
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 70
    sget-object p1, Landroid/car/vms/VmsLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/car/vms/VmsLayer;

    .line 76
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 77
    invoke-virtual {p0, v0, p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V

    return v1
.end method
