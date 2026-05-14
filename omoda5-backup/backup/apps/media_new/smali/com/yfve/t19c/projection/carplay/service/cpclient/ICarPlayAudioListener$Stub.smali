.class public abstract Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;
.super Landroid/os/Binder;
.source "ICarPlayAudioListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayAudioListener"

.field static final TRANSACTION_dataAlt:I = 0x7

.field static final TRANSACTION_dataMain:I = 0x3

.field static final TRANSACTION_initAlt:I = 0x6

.field static final TRANSACTION_initMain:I = 0x1

.field static final TRANSACTION_startAlt:I = 0x8

.field static final TRANSACTION_startMain:I = 0x4

.field static final TRANSACTION_stopAlt:I = 0x9

.field static final TRANSACTION_stopMain:I = 0x5

.field static final TRANSACTION_updateConfigure:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayAudioListener"

    .line 49
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayAudioListener"

    .line 60
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;
    .locals 1

    .line 393
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;)Z
    .locals 1

    .line 386
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 387
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayAudioListener"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 168
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->stopAlt(I)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 159
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->startAlt(I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 146
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 153
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->dataAlt(II[B)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 135
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->initAlt(I[I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 126
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->stopMain(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 117
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->startMain(I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->dataMain(II[B)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->updateConfigure(I[I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener$Stub;->initMain(I[I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 77
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
