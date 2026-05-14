.class public abstract Lcom/chery/media/IMediaService$Stub;
.super Landroid/os/Binder;
.source "IMediaService.java"

# interfaces
.implements Lcom/chery/media/IMediaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/IMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/IMediaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.chery.media.IMediaService"

.field static final TRANSACTION_addListener:I = 0x4

.field static final TRANSACTION_getUsbMountPath:I = 0x2

.field static final TRANSACTION_getUsbScanStatus:I = 0x3

.field static final TRANSACTION_isUsbMounted:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.chery.media.IMediaService"

    .line 42
    invoke-virtual {p0, p0, v0}, Lcom/chery/media/IMediaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/chery/media/IMediaService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.chery.media.IMediaService"

    .line 53
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    instance-of v1, v0, Lcom/chery/media/IMediaService;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/chery/media/IMediaService;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/chery/media/IMediaService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/chery/media/IMediaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/chery/media/IMediaService;
    .locals 1

    .line 255
    sget-object v0, Lcom/chery/media/IMediaService$Stub$Proxy;->sDefaultImpl:Lcom/chery/media/IMediaService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/chery/media/IMediaService;)Z
    .locals 1

    .line 245
    sget-object v0, Lcom/chery/media/IMediaService$Stub$Proxy;->sDefaultImpl:Lcom/chery/media/IMediaService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 249
    sput-object p0, Lcom/chery/media/IMediaService$Stub$Proxy;->sDefaultImpl:Lcom/chery/media/IMediaService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 246
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

    const/4 v0, 0x1

    const-string v1, "com.chery.media.IMediaService"

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

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 70
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 108
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/IMediaServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/media/IMediaServiceListener;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/chery/media/IMediaService$Stub;->removeListener(Lcom/chery/media/IMediaServiceListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 99
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/IMediaServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/media/IMediaServiceListener;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/chery/media/IMediaService$Stub;->addListener(Lcom/chery/media/IMediaServiceListener;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 91
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/chery/media/IMediaService$Stub;->getUsbScanStatus()I

    move-result p0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 83
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/chery/media/IMediaService$Stub;->getUsbMountPath()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 75
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/chery/media/IMediaService$Stub;->isUsbMounted()Z

    move-result p0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
