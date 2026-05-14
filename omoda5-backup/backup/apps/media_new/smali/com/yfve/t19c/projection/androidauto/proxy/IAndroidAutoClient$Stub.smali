.class public abstract Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;
.super Landroid/os/Binder;
.source "IAndroidAutoClient.java"

# interfaces
.implements Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

.field static final TRANSACTION_exitActivity:I = 0x3

.field static final TRANSACTION_getActivityState:I = 0x11

.field static final TRANSACTION_getMediaToken:I = 0xa

.field static final TRANSACTION_getSessionState:I = 0xb

.field static final TRANSACTION_getWhetherTakeOverPage:I = 0xf

.field static final TRANSACTION_lunchApp:I = 0x7

.field static final TRANSACTION_registerCallStatusListener:I = 0xc

.field static final TRANSACTION_registerListener:I = 0x2

.field static final TRANSACTION_requestUI:I = 0x4

.field static final TRANSACTION_responsePrepareHfpDevice:I = 0xe

.field static final TRANSACTION_setSurface:I = 0x8

.field static final TRANSACTION_startSession:I = 0x5

.field static final TRANSACTION_stopSession:I = 0x6

.field static final TRANSACTION_switchMediaSource:I = 0x10

.field static final TRANSACTION_unregisterCallStatusListener:I = 0xd

.field static final TRANSACTION_unregisterListener:I = 0x1

.field static final TRANSACTION_userInputTouch:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 77
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    .line 88
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    instance-of v1, v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-eqz v1, :cond_1

    .line 90
    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    return-object v0

    .line 92
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;
    .locals 1

    .line 666
    sget-object v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;)Z
    .locals 1

    .line 659
    sget-object v0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 660
    sput-object p0, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 278
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 270
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getActivityState()I

    move-result p0

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 261
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->switchMediaSource(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 253
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getWhetherTakeOverPage()Z

    move-result p0

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 244
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 247
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->responsePrepareHfpDevice(I)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 235
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;

    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->unregisterCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 226
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->registerCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 218
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getSessionState()I

    move-result p0

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 204
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->getMediaToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {p0, p3, v1}, Landroid/media/session/MediaSession$Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 185
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v2, p0

    .line 198
    invoke-virtual/range {v2 .. v9}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->userInputTouch(J[I[I[III)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 171
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 174
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 179
    :goto_1
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->setSurface(Landroid/view/Surface;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 162
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->lunchApp(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 155
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->stopSession()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 144
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    .line 149
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->startSession(Ljava/lang/String;Z)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 135
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->requestUI(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 128
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->exitActivity()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 119
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->registerListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 110
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->unregisterListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
