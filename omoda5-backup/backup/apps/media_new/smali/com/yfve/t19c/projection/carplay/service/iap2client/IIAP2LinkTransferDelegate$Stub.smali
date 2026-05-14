.class public abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;
.super Landroid/os/Binder;
.source "IIAP2LinkTransferDelegate.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

.field static final TRANSACTION_getConnectionInfo:I = 0x4

.field static final TRANSACTION_registerIAP2LinkDataReceiveListener:I = 0x2

.field static final TRANSACTION_sendData:I = 0x1

.field static final TRANSACTION_unregisterIAP2LinkDataReceiveListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    .line 35
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;
    .locals 1

    .line 221
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;)Z
    .locals 1

    .line 214
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 215
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

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

    const-string v1, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

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

    .line 93
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getConnectionInfo()Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    move-result-object p0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p0, p3, v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 101
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 86
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->unregisterIAP2LinkDataReceiveListener()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 77
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->registerIAP2LinkDataReceiveListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 68
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->sendData([B)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
