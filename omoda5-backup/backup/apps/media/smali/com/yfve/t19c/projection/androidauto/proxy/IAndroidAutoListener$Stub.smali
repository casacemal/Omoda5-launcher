.class public abstract Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;
.super Landroid/os/Binder;
.source "IAndroidAutoListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

.field static final TRANSACTION_OnPrepareRemoteHfpDevice:I = 0xa

.field static final TRANSACTION_onAAMediaSourceResponse:I = 0xd

.field static final TRANSACTION_onAuthenticationResult:I = 0xb

.field static final TRANSACTION_onHidePermissionPrompt:I = 0x7

.field static final TRANSACTION_onNotification:I = 0x4

.field static final TRANSACTION_onNotifyDevTransport:I = 0x1

.field static final TRANSACTION_onResizeSurfaceView:I = 0x9

.field static final TRANSACTION_onSessionStatusUpdate:I = 0x3

.field static final TRANSACTION_onSetVideoFocus:I = 0x2

.field static final TRANSACTION_onShowPermissionPrompt:I = 0x6

.field static final TRANSACTION_onTakeOverDilarPage:I = 0xc

.field static final TRANSACTION_onUpdateActivityState:I = 0xe

.field static final TRANSACTION_onUpdateMediaToken:I = 0x5

.field static final TRANSACTION_onUpdateVoiceSessionState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 64
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    .line 75
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    instance-of v1, v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    if-eqz v1, :cond_1

    .line 77
    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    return-object v0

    .line 79
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;
    .locals 1

    .line 552
    sget-object v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)Z
    .locals 1

    .line 545
    sget-object v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 546
    sput-object p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

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

    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener"

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 225
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onUpdateActivityState(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 216
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onAAMediaSourceResponse(I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 210
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onTakeOverDilarPage(Z)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 198
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onAuthenticationResult(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 189
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->OnPrepareRemoteHfpDevice(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 176
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 183
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onResizeSurfaceView(III)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 167
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onUpdateVoiceSessionState(I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 160
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onHidePermissionPrompt()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 153
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onShowPermissionPrompt()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 139
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    sget-object p1, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSession$Token;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 147
    :goto_1
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 130
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onNotification(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 117
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1, p4, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onSessionStatusUpdate(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 108
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onSetVideoFocus(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 97
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 92
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
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
