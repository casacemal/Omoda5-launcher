.class public abstract Lcom/chery/eol/IEolMediaService$Stub;
.super Landroid/os/Binder;
.source "IEolMediaService.java"

# interfaces
.implements Lcom/chery/eol/IEolMediaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/eol/IEolMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/eol/IEolMediaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.chery.eol.IEolMediaService"

.field static final TRANSACTION_changeCurrentSrc:I = 0x2

.field static final TRANSACTION_getCurrentSrc:I = 0x1

.field static final TRANSACTION_getDesiredFileAndTime:I = 0x8

.field static final TRANSACTION_setDesiredFileOrTime:I = 0x7

.field static final TRANSACTION_setFastPlayMode:I = 0x5

.field static final TRANSACTION_setPlayMode:I = 0x4

.field static final TRANSACTION_setPlayPauseState:I = 0x3

.field static final TRANSACTION_setSkipTrack:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.chery.eol.IEolMediaService"

    .line 50
    invoke-virtual {p0, p0, v0}, Lcom/chery/eol/IEolMediaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/chery/eol/IEolMediaService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.chery.eol.IEolMediaService"

    .line 61
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    instance-of v1, v0, Lcom/chery/eol/IEolMediaService;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Lcom/chery/eol/IEolMediaService;

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Lcom/chery/eol/IEolMediaService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/chery/eol/IEolMediaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/chery/eol/IEolMediaService;
    .locals 1

    .line 350
    sget-object v0, Lcom/chery/eol/IEolMediaService$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEolMediaService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/chery/eol/IEolMediaService;)Z
    .locals 1

    .line 340
    sget-object v0, Lcom/chery/eol/IEolMediaService$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEolMediaService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 344
    sput-object p0, Lcom/chery/eol/IEolMediaService$Stub$Proxy;->sDefaultImpl:Lcom/chery/eol/IEolMediaService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 341
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

    const-string v2, "com.chery.eol.IEolMediaService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 145
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/chery/eol/IEolMediaService$Stub;->getDesiredFileAndTime()[B

    move-result-object p0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 136
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolMediaService$Stub;->setDesiredFileOrTime([B)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolMediaService$Stub;->setSkipTrack(B)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 118
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolMediaService$Stub;->setFastPlayMode(B)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 109
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolMediaService$Stub;->setPlayMode([B)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 100
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolMediaService$Stub;->setPlayPauseState(B)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/chery/eol/IEolMediaService$Stub;->changeCurrentSrc(B)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 83
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/chery/eol/IEolMediaService$Stub;->getCurrentSrc()I

    move-result p0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 78
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
