.class public abstract Lcom/chery/eol/IEOLSettingInterface$Stub;
.super Landroid/os/Binder;
.source "IEOLSettingInterface.java"

# interfaces
.implements Lcom/chery/eol/IEOLSettingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/eol/IEOLSettingInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/eol/IEOLSettingInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.chery.eol.IEOLSettingInterface"

.field static final TRANSACTION_getArkamysSettingsStatus:I = 0x13

.field static final TRANSACTION_getBalanceLevel:I = 0x5

.field static final TRANSACTION_getEQSettingsStatus:I = 0xb

.field static final TRANSACTION_getEQUserDefineBaseValue:I = 0xd

.field static final TRANSACTION_getEQUserDefineHighValue:I = 0x11

.field static final TRANSACTION_getEQUserDefineMidValue:I = 0xf

.field static final TRANSACTION_getFadeLevel:I = 0x3

.field static final TRANSACTION_getLoudnessStatus:I = 0x7

.field static final TRANSACTION_getSpeedVolumeStatus:I = 0x9

.field static final TRANSACTION_getVolumeLevel:I = 0x1

.field static final TRANSACTION_setArkamysSettingsStatus:I = 0x14

.field static final TRANSACTION_setBalanceLevel:I = 0x6

.field static final TRANSACTION_setEQSettingsStatus:I = 0xc

.field static final TRANSACTION_setEQUserDefineBaseValue:I = 0xe

.field static final TRANSACTION_setEQUserDefineHighValue:I = 0x12

.field static final TRANSACTION_setEQUserDefineMidValue:I = 0x10

.field static final TRANSACTION_setFadeLevel:I = 0x4

.field static final TRANSACTION_setLoudnessStatus:I = 0x8

.field static final TRANSACTION_setSpeedVolumeStatus:I = 0xa

.field static final TRANSACTION_setVolumeLevel:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.chery.eol.IEOLSettingInterface"

    .line 94
    invoke-virtual {p0, p0, v0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/chery/eol/IEOLSettingInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.chery.eol.IEOLSettingInterface"

    .line 105
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    instance-of v1, v0, Lcom/chery/eol/IEOLSettingInterface;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lcom/chery/eol/IEOLSettingInterface;

    return-object v0

    .line 109
    :cond_1
    new-instance v0, Lcom/chery/eol/IEOLSettingInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/chery/eol/IEOLSettingInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/chery/eol/IEOLSettingInterface;
    .locals 1

    .line 748
    sget-object v0, Lcom/chery/eol/IEOLSettingInterface$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEOLSettingInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/chery/eol/IEOLSettingInterface;)Z
    .locals 1

    .line 738
    sget-object v0, Lcom/chery/eol/IEOLSettingInterface$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEOLSettingInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 742
    sput-object p0, Lcom/chery/eol/IEOLSettingInterface$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEOLSettingInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 739
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

    const-string v2, "com.chery.eol.IEOLSettingInterface"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 292
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 295
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setArkamysSettingsStatus(I)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 284
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getArkamysSettingsStatus()I

    move-result p0

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 275
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 278
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setEQUserDefineHighValue(I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 267
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getEQUserDefineHighValue()I

    move-result p0

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 258
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 261
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setEQUserDefineMidValue(I)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 250
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getEQUserDefineMidValue()I

    move-result p0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 241
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 244
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setEQUserDefineBaseValue(I)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 233
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getEQUserDefineBaseValue()I

    move-result p0

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 224
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setEQSettingsStatus(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 216
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getEQSettingsStatus()I

    move-result p0

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 207
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setSpeedVolumeStatus(I)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 199
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getSpeedVolumeStatus()I

    move-result p0

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 190
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setLoudnessStatus(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 182
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getLoudnessStatus()I

    move-result p0

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 173
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setBalanceLevel(I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 165
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getBalanceLevel()I

    move-result p0

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 156
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setFadeLevel(I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 148
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getFadeLevel()I

    move-result p0

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 137
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/chery/eol/IEOLSettingInterface$Stub;->setVolumeLevel(II)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEOLSettingInterface$Stub;->getVolumeLevel(I)I

    move-result p0

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 122
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
