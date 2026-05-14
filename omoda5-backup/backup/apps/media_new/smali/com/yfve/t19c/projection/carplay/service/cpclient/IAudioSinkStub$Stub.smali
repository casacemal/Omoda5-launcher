.class public abstract Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub;
.super Landroid/os/Binder;
.source "IAudioSinkStub.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub"

.field static final TRANSACTION_data:I = 0x3

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_start:I = 0x4

.field static final TRANSACTION_stop:I = 0x5

.field static final TRANSACTION_updateConfigure:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;
    .locals 1

    .line 256
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;)Z
    .locals 1

    .line 249
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 250
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub;

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

    const-string v1, "com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub"

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

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 114
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub;->stop(I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 105
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub;->start(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 92
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 99
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub;->data(II[B)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 81
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub;->updateConfigure(I[I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 70
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IAudioSinkStub$Stub;->init(I[I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
