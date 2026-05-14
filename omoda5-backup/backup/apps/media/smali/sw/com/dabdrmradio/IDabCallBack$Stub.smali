.class public abstract Lsw/com/dabdrmradio/IDabCallBack$Stub;
.super Landroid/os/Binder;
.source "IDabCallBack.java"

# interfaces
.implements Lsw/com/dabdrmradio/IDabCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw/com/dabdrmradio/IDabCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsw/com/dabdrmradio/IDabCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "sw.com.dabdrmradio.IDabCallBack"

.field static final TRANSACTION_notifyDabAnnouncementState:I = 0xa

.field static final TRANSACTION_notifyDabAnnouncementSwitch:I = 0x8

.field static final TRANSACTION_notifyDabBandSelect:I = 0x7

.field static final TRANSACTION_notifyDabChipPara:I = 0xb

.field static final TRANSACTION_notifyDabCurrentDynamicLabel:I = 0x6

.field static final TRANSACTION_notifyDabCurrentServiceInfor:I = 0x2

.field static final TRANSACTION_notifyDabCurrentServiceSignallevel:I = 0x3

.field static final TRANSACTION_notifyDabDateTime:I = 0x12

.field static final TRANSACTION_notifyDabEPGInfo:I = 0x14

.field static final TRANSACTION_notifyDabErrorState:I = 0x11

.field static final TRANSACTION_notifyDabFmRdsInfo:I = 0xe

.field static final TRANSACTION_notifyDabFmRdsScan:I = 0xf

.field static final TRANSACTION_notifyDabImage:I = 0x9

.field static final TRANSACTION_notifyDabLinkingOption:I = 0x10

.field static final TRANSACTION_notifyDabLinkingServiceInfor:I = 0xc

.field static final TRANSACTION_notifyDabLogo:I = 0x13

.field static final TRANSACTION_notifyDabPlayState:I = 0x1

.field static final TRANSACTION_notifyDabScanState:I = 0x5

.field static final TRANSACTION_notifyDabServiceList:I = 0x4

.field static final TRANSACTION_notifyDabVBERState:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "sw.com.dabdrmradio.IDabCallBack"

    .line 84
    invoke-virtual {p0, p0, v0}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lsw/com/dabdrmradio/IDabCallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "sw.com.dabdrmradio.IDabCallBack"

    .line 95
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Lsw/com/dabdrmradio/IDabCallBack;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Lsw/com/dabdrmradio/IDabCallBack;

    return-object v0

    .line 99
    :cond_1
    new-instance v0, Lsw/com/dabdrmradio/IDabCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lsw/com/dabdrmradio/IDabCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lsw/com/dabdrmradio/IDabCallBack;
    .locals 1

    .line 817
    sget-object v0, Lsw/com/dabdrmradio/IDabCallBack$Stub$Proxy;->sDefaultImpl:Lsw/com/dabdrmradio/IDabCallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lsw/com/dabdrmradio/IDabCallBack;)Z
    .locals 1

    .line 810
    sget-object v0, Lsw/com/dabdrmradio/IDabCallBack$Stub$Proxy;->sDefaultImpl:Lsw/com/dabdrmradio/IDabCallBack;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 811
    sput-object p0, Lsw/com/dabdrmradio/IDabCallBack$Stub$Proxy;->sDefaultImpl:Lsw/com/dabdrmradio/IDabCallBack;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "sw.com.dabdrmradio.IDabCallBack"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 317
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    sget-object p1, Lsw/com/dabdrmradio/DabEPGTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsw/com/dabdrmradio/DabEPGTime;

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 328
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 329
    sget-object p1, Lsw/com/dabdrmradio/DabEPGTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lsw/com/dabdrmradio/DabEPGTime;

    :cond_1
    move-object v5, v0

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 339
    sget-object p1, Lsw/com/dabdrmradio/DabEPGProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v2, p0

    .line 340
    invoke-virtual/range {v2 .. v8}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabEPGInfo(Ljava/lang/String;Lsw/com/dabdrmradio/DabEPGTime;Lsw/com/dabdrmradio/DabEPGTime;IILjava/util/List;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 301
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 306
    sget-object p4, Lsw/com/dabdrmradio/DabImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lsw/com/dabdrmradio/DabImage;

    .line 311
    :cond_2
    invoke-virtual {p0, p1, v0}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabLogo(Ljava/lang/String;Lsw/com/dabdrmradio/DabImage;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 287
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 290
    sget-object p1, Lsw/com/dabdrmradio/DabEPGTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lsw/com/dabdrmradio/DabEPGTime;

    .line 295
    :cond_3
    invoke-virtual {p0, v0}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabDateTime(Lsw/com/dabdrmradio/DabEPGTime;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 278
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 281
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabErrorState(B)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 269
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 272
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabLinkingOption(B)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 260
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 263
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabFmRdsScan(B)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 251
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabFmRdsInfo(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 238
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 245
    invoke-virtual {p0, p1, p4, p2}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabVBERState(BBB)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 229
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabLinkingServiceInfor(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 218
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 223
    invoke-virtual {p0, p1, p2}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabChipPara(BB)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 212
    invoke-virtual {p0, p1, p2}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabAnnouncementState(BB)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 193
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 196
    sget-object p1, Lsw/com/dabdrmradio/DabImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lsw/com/dabdrmradio/DabImage;

    .line 201
    :cond_4
    invoke-virtual {p0, v0}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabImage(Lsw/com/dabdrmradio/DabImage;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 187
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabAnnouncementSwitch(I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabBandSelect(B)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 166
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabCurrentDynamicLabel(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 155
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 160
    invoke-virtual {p0, p1, p2}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabScanState(II)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 146
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabServiceList(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 137
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabCurrentServiceSignallevel(I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 128
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabCurrentServiceInfor(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 117
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 122
    invoke-virtual {p0, p1, p2}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->notifyDabPlayState(II)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :cond_5
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
