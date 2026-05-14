.class public abstract Lcom/chery/eol/IEolRadioService$Stub;
.super Landroid/os/Binder;
.source "IEolRadioService.java"

# interfaces
.implements Lcom/chery/eol/IEolRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/eol/IEolRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/eol/IEolRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.chery.eol.IEolRadioService"

.field static final TRANSACTION_getSignalStrength:I = 0xa

.field static final TRANSACTION_getTunerCurrentStatus:I = 0x1

.field static final TRANSACTION_setBand:I = 0x2

.field static final TRANSACTION_setFrequency:I = 0x3

.field static final TRANSACTION_setTunerAutoScanUp:I = 0x8

.field static final TRANSACTION_setTunerAutoStore:I = 0x7

.field static final TRANSACTION_setTunerFavorite:I = 0x4

.field static final TRANSACTION_setTunerPreset:I = 0x5

.field static final TRANSACTION_setTunerSeek:I = 0x6

.field static final TRANSACTION_setTunerUpdateStationList:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.chery.eol.IEolRadioService"

    .line 56
    invoke-virtual {p0, p0, v0}, Lcom/chery/eol/IEolRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/chery/eol/IEolRadioService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.chery.eol.IEolRadioService"

    .line 67
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    instance-of v1, v0, Lcom/chery/eol/IEolRadioService;

    if-eqz v1, :cond_1

    .line 69
    check-cast v0, Lcom/chery/eol/IEolRadioService;

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Lcom/chery/eol/IEolRadioService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/chery/eol/IEolRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/chery/eol/IEolRadioService;
    .locals 1

    .line 414
    sget-object v0, Lcom/chery/eol/IEolRadioService$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEolRadioService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/chery/eol/IEolRadioService;)Z
    .locals 1

    .line 404
    sget-object v0, Lcom/chery/eol/IEolRadioService$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEolRadioService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 408
    sput-object p0, Lcom/chery/eol/IEolRadioService$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEolRadioService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 405
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.chery.eol.IEolRadioService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 169
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/chery/eol/IEolRadioService$Stub;->getSignalStrength()I

    move-result p0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 160
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setTunerUpdateStationList(B)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setTunerAutoScanUp(B)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 142
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setTunerAutoStore(B)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 133
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setTunerSeek(B)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 124
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setTunerPreset(B)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 115
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setTunerFavorite(B)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 106
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setFrequency([B)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 97
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolRadioService$Stub;->setBand(B)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/chery/eol/IEolRadioService$Stub;->getTunerCurrentStatus()[B

    move-result-object p0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 84
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
