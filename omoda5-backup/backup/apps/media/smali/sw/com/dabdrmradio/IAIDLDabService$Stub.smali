.class public abstract Lsw/com/dabdrmradio/IAIDLDabService$Stub;
.super Landroid/os/Binder;
.source "IAIDLDabService.java"

# interfaces
.implements Lsw/com/dabdrmradio/IAIDLDabService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw/com/dabdrmradio/IAIDLDabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "sw.com.dabdrmradio.IAIDLDabService"

.field static final TRANSACTION_nativeCmdDabAnnouncementSwitch:I = 0x6

.field static final TRANSACTION_nativeCmdDabBandSelect:I = 0x5

.field static final TRANSACTION_nativeCmdDabChipPara:I = 0xa

.field static final TRANSACTION_nativeCmdDabClose:I = 0x1

.field static final TRANSACTION_nativeCmdDabEnsembleServiceComponentSeek:I = 0x4

.field static final TRANSACTION_nativeCmdDabInitAnnounceBandScanFreq:I = 0x7

.field static final TRANSACTION_nativeCmdDabLinkingOption:I = 0xe

.field static final TRANSACTION_nativeCmdDabScanStart:I = 0x2

.field static final TRANSACTION_nativeCmdDabServiceComponentSelectPlay:I = 0x3

.field static final TRANSACTION_nativeCmdDabSetFmRdsInfo:I = 0xc

.field static final TRANSACTION_nativeCmdDabSetFmRdsScan:I = 0xd

.field static final TRANSACTION_nativeCmdDabSetVBER:I = 0xb

.field static final TRANSACTION_nativeGetVersion:I = 0x8

.field static final TRANSACTION_registerCallBack:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "sw.com.dabdrmradio.IAIDLDabService"

    .line 65
    invoke-virtual {p0, p0, v0}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lsw/com/dabdrmradio/IAIDLDabService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "sw.com.dabdrmradio.IAIDLDabService"

    .line 76
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    instance-of v1, v0, Lsw/com/dabdrmradio/IAIDLDabService;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Lsw/com/dabdrmradio/IAIDLDabService;

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;

    invoke-direct {v0, p0}, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lsw/com/dabdrmradio/IAIDLDabService;
    .locals 1

    .line 590
    sget-object v0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->sDefaultImpl:Lsw/com/dabdrmradio/IAIDLDabService;

    return-object v0
.end method

.method public static setDefaultImpl(Lsw/com/dabdrmradio/IAIDLDabService;)Z
    .locals 1

    .line 583
    sget-object v0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->sDefaultImpl:Lsw/com/dabdrmradio/IAIDLDabService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 584
    sput-object p0, Lsw/com/dabdrmradio/IAIDLDabService$Stub$Proxy;->sDefaultImpl:Lsw/com/dabdrmradio/IAIDLDabService;

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

    const-string v2, "sw.com.dabdrmradio.IAIDLDabService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 252
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 255
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabLinkingOption(B)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 239
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 246
    invoke-virtual {p0, p1, p4, p2}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabSetFmRdsScan(BII)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 218
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    move-object v2, p0

    .line 233
    invoke-virtual/range {v2 .. v9}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabSetFmRdsInfo(IILjava/lang/String;BBBB)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 212
    invoke-virtual {p0, p1, p2}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabSetVBER(BI)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 196
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 201
    invoke-virtual {p0, p1, p2}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabChipPara(BB)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 187
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lsw/com/dabdrmradio/IDabCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lsw/com/dabdrmradio/IDabCallBack;

    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->registerCallBack(Lsw/com/dabdrmradio/IDabCallBack;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 179
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeGetVersion()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 158
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v2, p0

    .line 173
    invoke-virtual/range {v2 .. v9}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabInitAnnounceBandScanFreq(IBBIIII)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 149
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabAnnouncementSwitch(I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 143
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabBandSelect(B)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 129
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 134
    invoke-virtual {p0, p1, p2}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabEnsembleServiceComponentSeek(BB)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 123
    invoke-virtual {p0, p1, p4, v0, p2}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabServiceComponentSelectPlay(IIII)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabScanStart(B)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->nativeCmdDabClose()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
