.class public abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub;
.super Landroid/os/Binder;
.source "IIAP2CommListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener"

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onServiceStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;
    .locals 1

    .line 157
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;)Z
    .locals 1

    .line 150
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 151
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener;

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

    const-string v1, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 74
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub;->onError(II)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 61
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 68
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2CommListener$Stub;->onServiceStatus(III)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
