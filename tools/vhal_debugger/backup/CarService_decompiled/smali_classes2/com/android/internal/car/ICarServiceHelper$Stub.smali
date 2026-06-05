.class public abstract Lcom/android/internal/car/ICarServiceHelper$Stub;
.super Landroid/os/Binder;
.source "ICarServiceHelper.java"

# interfaces
.implements Lcom/android/internal/car/ICarServiceHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/car/ICarServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.car.ICarServiceHelper"

.field static final TRANSACTION_forceSuspend:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.android.internal.car.ICarServiceHelper"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/car/ICarServiceHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/car/ICarServiceHelper;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.android.internal.car.ICarServiceHelper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/car/ICarServiceHelper;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/android/internal/car/ICarServiceHelper;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/car/ICarServiceHelper;
    .locals 1

    .line 124
    sget-object v0, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/car/ICarServiceHelper;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/car/ICarServiceHelper;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/internal/car/ICarServiceHelper;

    .line 117
    sget-object v0, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/car/ICarServiceHelper;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 118
    sput-object p0, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/car/ICarServiceHelper;

    .line 119
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-string v0, "com.android.internal.car.ICarServiceHelper"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 58
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 63
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/car/ICarServiceHelper$Stub;->forceSuspend(I)I

    move-result v3

    .line 67
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v1
.end method
