.class public abstract Landroid/car/media/ICarMediaSourceListener$Stub;
.super Landroid/os/Binder;
.source "ICarMediaSourceListener.java"

# interfaces
.implements Landroid/car/media/ICarMediaSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/ICarMediaSourceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarMediaSourceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.media.ICarMediaSourceListener"

.field static final TRANSACTION_onMediaSourceChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.media.ICarMediaSourceListener"

    .line 30
    invoke-virtual {p0, p0, v0}, Landroid/car/media/ICarMediaSourceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarMediaSourceListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.media.ICarMediaSourceListener"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Landroid/car/media/ICarMediaSourceListener;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Landroid/car/media/ICarMediaSourceListener;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Landroid/car/media/ICarMediaSourceListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/media/ICarMediaSourceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/media/ICarMediaSourceListener;
    .locals 1

    .line 128
    sget-object v0, Landroid/car/media/ICarMediaSourceListener$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarMediaSourceListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/media/ICarMediaSourceListener;)Z
    .locals 1

    .line 121
    sget-object v0, Landroid/car/media/ICarMediaSourceListener$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarMediaSourceListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 122
    sput-object p0, Landroid/car/media/ICarMediaSourceListener$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarMediaSourceListener;

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

    const-string v1, "android.car.media.ICarMediaSourceListener"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 63
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Landroid/car/media/ICarMediaSourceListener$Stub;->onMediaSourceChanged(Landroid/content/ComponentName;)V

    return v0
.end method
