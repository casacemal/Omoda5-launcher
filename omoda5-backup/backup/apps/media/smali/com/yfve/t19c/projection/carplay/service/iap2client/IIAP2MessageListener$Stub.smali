.class public abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;
.super Landroid/os/Binder;
.source "IIAP2MessageListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

.field static final TRANSACTION_onMessageReceived:I = 0x1

.field static final TRANSACTION_onNotifyCarPlayAvailability:I = 0xc

.field static final TRANSACTION_onNotifyCmd:I = 0x8

.field static final TRANSACTION_onNotifyDevTransport:I = 0x4

.field static final TRANSACTION_onNotifyWirelessCPSts:I = 0x3

.field static final TRANSACTION_onStartLocationUpdate:I = 0x9

.field static final TRANSACTION_onStopLocationUpdate:I = 0xa

.field static final TRANSACTION_onUpdateCallInfo:I = 0x6

.field static final TRANSACTION_onUpdateDevice:I = 0xb

.field static final TRANSACTION_onUpdateNowPlayingInfo:I = 0x5

.field static final TRANSACTION_onUpdateRouteGuidance:I = 0x7

.field static final TRANSACTION_onUpdateWifiInfo:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 60
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    .line 71
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;
    .locals 1

    .line 506
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;)Z
    .locals 1

    .line 499
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 500
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 212
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onNotifyCarPlayAvailability()V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 203
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v3, v1

    .line 206
    :cond_0
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onUpdateDevice(Z)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 196
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onStopLocationUpdate()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 187
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onStartLocationUpdate(B)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 178
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onNotifyCmd(I)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 161
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 172
    invoke-virtual/range {v2 .. v7}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onUpdateRouteGuidance(Ljava/lang/String;IIILjava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 147
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    sget-object p1, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;

    .line 155
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onUpdateCallInfo(Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 133
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    sget-object p1, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;

    .line 141
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onUpdateNowPlayingInfo(Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 120
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move v3, v1

    .line 127
    :cond_3
    invoke-virtual {p0, p1, p4, v3}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 111
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v3, v1

    .line 114
    :cond_4
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onNotifyWirelessCPSts(Z)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onUpdateWifiInfo()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2MessageListener$Stub;->onMessageReceived(I[B)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 88
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
