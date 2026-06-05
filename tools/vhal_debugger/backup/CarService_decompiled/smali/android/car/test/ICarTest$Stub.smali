.class public abstract Landroid/car/test/ICarTest$Stub;
.super Landroid/os/Binder;
.source "ICarTest.java"

# interfaces
.implements Landroid/car/test/ICarTest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/test/ICarTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/test/ICarTest$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.test.ICarTest"

.field static final TRANSACTION_startCarService:I = 0x3

.field static final TRANSACTION_stopCarService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.car.test.ICarTest"

    invoke-virtual {p0, p0, v0}, Landroid/car/test/ICarTest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/test/ICarTest;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "android.car.test.ICarTest"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/car/test/ICarTest;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/car/test/ICarTest;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Landroid/car/test/ICarTest$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/car/test/ICarTest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/car/test/ICarTest;
    .locals 1

    .line 165
    sget-object v0, Landroid/car/test/ICarTest$Stub$Proxy;->sDefaultImpl:Landroid/car/test/ICarTest;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/test/ICarTest;)Z
    .locals 1
    .param p0, "impl"    # Landroid/car/test/ICarTest;

    .line 158
    sget-object v0, Landroid/car/test/ICarTest$Stub$Proxy;->sDefaultImpl:Landroid/car/test/ICarTest;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 159
    sput-object p0, Landroid/car/test/ICarTest$Stub$Proxy;->sDefaultImpl:Landroid/car/test/ICarTest;

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "android.car.test.ICarTest"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v2

    .line 79
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 82
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/car/test/ICarTest$Stub;->startCarService(Landroid/os/IBinder;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v2

    .line 70
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 73
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/car/test/ICarTest$Stub;->stopCarService(Landroid/os/IBinder;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v2
.end method
