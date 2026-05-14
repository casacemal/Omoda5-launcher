.class public abstract Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;
.super Landroid/os/Binder;
.source "ICPServiceInterface.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

.field static final TRANSACTION_exitActivity:I = 0x8

.field static final TRANSACTION_getCarPlayVideoState:I = 0x3

.field static final TRANSACTION_getMediaToken:I = 0x2

.field static final TRANSACTION_getSerialNumber:I = 0xd

.field static final TRANSACTION_isCPStarted:I = 0xc

.field static final TRANSACTION_registeListener:I = 0x5

.field static final TRANSACTION_requestCPMedia:I = 0xb

.field static final TRANSACTION_requestResource:I = 0x9

.field static final TRANSACTION_requestVideoResource:I = 0xa

.field static final TRANSACTION_roleSwitchComplete:I = 0x7

.field static final TRANSACTION_setCarPlayConnect:I = 0x4

.field static final TRANSACTION_startCarPlaySession:I = 0x1

.field static final TRANSACTION_unregisteListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 67
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    .line 78
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;
    .locals 1

    .line 519
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;)Z
    .locals 1

    .line 512
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 513
    sput-object p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

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

    const-string v2, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 211
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 203
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->isCPStarted()Z

    move-result p0

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 196
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->requestCPMedia()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 189
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->requestVideoResource()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 174
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 178
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v0

    .line 180
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 182
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 183
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->requestResource(ZZZI)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 167
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->exitActivity()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 158
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->roleSwitchComplete(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 149
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->unregisteListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->registeListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 133
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->setCarPlayConnect()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 125
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getCarPlayVideoState()Z

    move-result p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 111
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->getMediaToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    .line 115
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p0, p3, v1}, Landroid/media/session/MediaSession$Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 100
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v0, v1

    .line 105
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->startCarPlaySession(Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 95
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
