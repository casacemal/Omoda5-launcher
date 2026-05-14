.class public abstract Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;
.super Landroid/os/Binder;
.source "ICarPlaySessionListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener"

.field static final TRANSACTION_onControl:I = 0x4

.field static final TRANSACTION_onDuckAudio:I = 0x6

.field static final TRANSACTION_onFinalize:I = 0x2

.field static final TRANSACTION_onInitialize:I = 0x1

.field static final TRANSACTION_onModesChanged:I = 0x5

.field static final TRANSACTION_onPrepareCpSession:I = 0xa

.field static final TRANSACTION_onRequestUI:I = 0x8

.field static final TRANSACTION_onSetEnhancedSiriParams:I = 0x9

.field static final TRANSACTION_onStarted:I = 0x3

.field static final TRANSACTION_onSuggestUI:I = 0xb

.field static final TRANSACTION_onUnduckAudio:I = 0x7

.field static final TRANSACTION_onVideoChange:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener"

    .line 58
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener"

    .line 69
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    instance-of v1, v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    if-eqz v1, :cond_1

    .line 71
    check-cast v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;
    .locals 1

    .line 495
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)Z
    .locals 1

    .line 488
    sget-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 489
    sput-object p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

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

    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 208
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onVideoChange(Z)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 199
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 202
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onSuggestUI(Ljava/util/List;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 188
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 193
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onPrepareCpSession(Ljava/lang/String;Z)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 177
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onSetEnhancedSiriParams(II)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 168
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onRequestUI([B)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 159
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onUnduckAudio(I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 148
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onDuckAudio(II)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v0

    .line 139
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v0

    .line 141
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 142
    invoke-virtual/range {v2 .. v7}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onModesChanged(IIZZI)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 120
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onControl(I[B)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 109
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onFinalize(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;->onInitialize()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 86
    :cond_4
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
