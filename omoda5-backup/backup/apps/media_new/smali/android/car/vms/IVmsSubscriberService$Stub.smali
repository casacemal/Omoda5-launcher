.class public abstract Landroid/car/vms/IVmsSubscriberService$Stub;
.super Landroid/os/Binder;
.source "IVmsSubscriberService.java"

# interfaces
.implements Landroid/car/vms/IVmsSubscriberService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/IVmsSubscriberService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/IVmsSubscriberService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.vms.IVmsSubscriberService"

.field static final TRANSACTION_addVmsSubscriber:I = 0x2

.field static final TRANSACTION_addVmsSubscriberPassive:I = 0x3

.field static final TRANSACTION_addVmsSubscriberToNotifications:I = 0x1

.field static final TRANSACTION_addVmsSubscriberToPublisher:I = 0x4

.field static final TRANSACTION_getAvailableLayers:I = 0x9

.field static final TRANSACTION_getPublisherInfo:I = 0xa

.field static final TRANSACTION_removeVmsSubscriber:I = 0x6

.field static final TRANSACTION_removeVmsSubscriberPassive:I = 0x7

.field static final TRANSACTION_removeVmsSubscriberToNotifications:I = 0x5

.field static final TRANSACTION_removeVmsSubscriberToPublisher:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.vms.IVmsSubscriberService"

    .line 95
    invoke-virtual {p0, p0, v0}, Landroid/car/vms/IVmsSubscriberService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.vms.IVmsSubscriberService"

    .line 106
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    instance-of v1, v0, Landroid/car/vms/IVmsSubscriberService;

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Landroid/car/vms/IVmsSubscriberService;

    return-object v0

    .line 110
    :cond_1
    new-instance v0, Landroid/car/vms/IVmsSubscriberService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/vms/IVmsSubscriberService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/vms/IVmsSubscriberService;
    .locals 1

    .line 561
    sget-object v0, Landroid/car/vms/IVmsSubscriberService$Stub$Proxy;->sDefaultImpl:Landroid/car/vms/IVmsSubscriberService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/vms/IVmsSubscriberService;)Z
    .locals 1

    .line 554
    sget-object v0, Landroid/car/vms/IVmsSubscriberService$Stub$Proxy;->sDefaultImpl:Landroid/car/vms/IVmsSubscriberService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 555
    sput-object p0, Landroid/car/vms/IVmsSubscriberService$Stub$Proxy;->sDefaultImpl:Landroid/car/vms/IVmsSubscriberService;

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

    const-string v2, "android.car.vms.IVmsSubscriberService"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 246
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 249
    invoke-virtual {p0, p1}, Landroid/car/vms/IVmsSubscriberService$Stub;->getPublisherInfo(I)[B

    move-result-object p0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 232
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/car/vms/IVmsSubscriberService$Stub;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object p0

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {p0, p3, v1}, Landroid/car/vms/VmsAvailableLayers;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 240
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 214
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 219
    sget-object p4, Landroid/car/vms/VmsLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/car/vms/VmsLayer;

    .line 225
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 226
    invoke-virtual {p0, p1, v0, p2}, Landroid/car/vms/IVmsSubscriberService$Stub;->removeVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 205
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Landroid/car/vms/IVmsSubscriberService$Stub;->removeVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 189
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 194
    sget-object p4, Landroid/car/vms/VmsLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/car/vms/VmsLayer;

    .line 199
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/car/vms/IVmsSubscriberService$Stub;->removeVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 180
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Landroid/car/vms/IVmsSubscriberService$Stub;->removeVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 162
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 167
    sget-object p4, Landroid/car/vms/VmsLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/car/vms/VmsLayer;

    .line 173
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 174
    invoke-virtual {p0, p1, v0, p2}, Landroid/car/vms/IVmsSubscriberService$Stub;->addVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 153
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Landroid/car/vms/IVmsSubscriberService$Stub;->addVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 137
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 142
    sget-object p4, Landroid/car/vms/VmsLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/car/vms/VmsLayer;

    .line 147
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/car/vms/IVmsSubscriberService$Stub;->addVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 128
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Landroid/car/vms/IVmsSubscriberService$Stub;->addVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 123
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
