.class public abstract Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;
.super Landroid/os/Binder;
.source "ICPServiceListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.proxy.ICPServiceListener"

.field static final TRANSACTION_onNotiftIApAuthStatus:I = 0xc

.field static final TRANSACTION_onNotifyCPReadyToAuth:I = 0x9

.field static final TRANSACTION_onNotifyDisableBt:I = 0x6

.field static final TRANSACTION_onNotifyVideoChange:I = 0x7

.field static final TRANSACTION_onNotifyWifi:I = 0xb

.field static final TRANSACTION_onNotifyWirelessCPEnalbe:I = 0x8

.field static final TRANSACTION_onUSBIAP2DeviceStsChanged:I = 0xa

.field static final TRANSACTION_onUpdateCallInfo:I = 0x3

.field static final TRANSACTION_onUpdateMediaToken:I = 0x1

.field static final TRANSACTION_onUpdateNaviInfo:I = 0x4

.field static final TRANSACTION_onUpdateSiriSts:I = 0x5

.field static final TRANSACTION_onUpdateVideoFocus:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.proxy.ICPServiceListener"

    .line 58
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.proxy.ICPServiceListener"

    .line 69
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    if-eqz v1, :cond_1

    .line 71
    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;
    .locals 1

    .line 518
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)Z
    .locals 1

    .line 511
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 512
    sput-object p0, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v3, 0x5f4e5446

    const/4 v6, 0x1

    const-string v4, "com.yfve.t19c.projection.carplay.proxy.ICPServiceListener"

    if-eq p1, v3, :cond_7

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 219
    :pswitch_0
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    invoke-virtual {p0, v1, v2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onNotiftIApAuthStatus(II)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 204
    :pswitch_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v3, v6

    .line 210
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onNotifyWifi(IZLjava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 193
    :pswitch_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v6

    .line 197
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {p0, v3, v1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onUSBIAP2DeviceStsChanged(ZLjava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 182
    :pswitch_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    invoke-virtual {p0, v1, v2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onNotifyCPReadyToAuth(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 173
    :pswitch_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v6

    .line 176
    :cond_2
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onNotifyWirelessCPEnalbe(Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 164
    :pswitch_5
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v3, v6

    .line 167
    :cond_3
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onNotifyVideoChange(Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 155
    :pswitch_6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onNotifyDisableBt(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 146
    :pswitch_7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v3, v6

    .line 149
    :cond_4
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onUpdateSiriSts(Z)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 129
    :pswitch_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onUpdateNaviInfo(Ljava/lang/String;IIILjava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 114
    :pswitch_9
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v7

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 105
    :pswitch_a
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v3, v6

    .line 108
    :cond_5
    invoke-virtual {p0, v3}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onUpdateVideoFocus(Z)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 91
    :pswitch_b
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    sget-object v1, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-virtual {p0, v1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;->onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 86
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

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
