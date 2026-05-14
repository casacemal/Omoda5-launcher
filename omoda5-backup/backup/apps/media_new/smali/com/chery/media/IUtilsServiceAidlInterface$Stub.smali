.class public abstract Lcom/chery/media/IUtilsServiceAidlInterface$Stub;
.super Landroid/os/Binder;
.source "IUtilsServiceAidlInterface.java"

# interfaces
.implements Lcom/chery/media/IUtilsServiceAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/IUtilsServiceAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/IUtilsServiceAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.chery.media.IUtilsServiceAidlInterface"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_copyFile:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.chery.media.IUtilsServiceAidlInterface"

    .line 35
    invoke-virtual {p0, p0, v0}, Lcom/chery/media/IUtilsServiceAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/chery/media/IUtilsServiceAidlInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.chery.media.IUtilsServiceAidlInterface"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    instance-of v1, v0, Lcom/chery/media/IUtilsServiceAidlInterface;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/chery/media/IUtilsServiceAidlInterface;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/chery/media/IUtilsServiceAidlInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/chery/media/IUtilsServiceAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/chery/media/IUtilsServiceAidlInterface;
    .locals 1

    .line 180
    sget-object v0, Lcom/chery/media/IUtilsServiceAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/chery/media/IUtilsServiceAidlInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/chery/media/IUtilsServiceAidlInterface;)Z
    .locals 1

    .line 173
    sget-object v0, Lcom/chery/media/IUtilsServiceAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/chery/media/IUtilsServiceAidlInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 174
    sput-object p0, Lcom/chery/media/IUtilsServiceAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/chery/media/IUtilsServiceAidlInterface;

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.chery.media.IUtilsServiceAidlInterface"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 63
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 87
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/IUtilsServiceAidlInterface$Stub;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 68
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v5, v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    move v5, p1

    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    .line 81
    invoke-virtual/range {v1 .. v9}, Lcom/chery/media/IUtilsServiceAidlInterface$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
