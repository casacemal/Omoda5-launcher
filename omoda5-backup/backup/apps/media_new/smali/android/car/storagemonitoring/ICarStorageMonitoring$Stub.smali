.class public abstract Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;
.super Landroid/os/Binder;
.source "ICarStorageMonitoring.java"

# interfaces
.implements Landroid/car/storagemonitoring/ICarStorageMonitoring;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/storagemonitoring/ICarStorageMonitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.storagemonitoring.ICarStorageMonitoring"

.field static final TRANSACTION_getAggregateIoStats:I = 0x6

.field static final TRANSACTION_getBootIoStats:I = 0x5

.field static final TRANSACTION_getIoStatsDeltas:I = 0x7

.field static final TRANSACTION_getPreEolIndicatorStatus:I = 0x2

.field static final TRANSACTION_getShutdownDiskWriteAmount:I = 0xa

.field static final TRANSACTION_getWearEstimate:I = 0x3

.field static final TRANSACTION_getWearEstimateHistory:I = 0x4

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.storagemonitoring.ICarStorageMonitoring"

    .line 84
    invoke-virtual {p0, p0, v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/ICarStorageMonitoring;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.storagemonitoring.ICarStorageMonitoring"

    .line 95
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Landroid/car/storagemonitoring/ICarStorageMonitoring;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Landroid/car/storagemonitoring/ICarStorageMonitoring;

    return-object v0

    .line 99
    :cond_1
    new-instance v0, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/storagemonitoring/ICarStorageMonitoring;
    .locals 1

    .line 445
    sget-object v0, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;->sDefaultImpl:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/storagemonitoring/ICarStorageMonitoring;)Z
    .locals 1

    .line 438
    sget-object v0, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;->sDefaultImpl:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 439
    sput-object p0, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;->sDefaultImpl:Landroid/car/storagemonitoring/ICarStorageMonitoring;

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

    const-string v2, "android.car.storagemonitoring.ICarStorageMonitoring"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 189
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->getShutdownDiskWriteAmount()J

    move-result-wide p0

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 180
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/storagemonitoring/IIoStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/IIoStatsListener;

    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->unregisterListener(Landroid/car/storagemonitoring/IIoStatsListener;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 171
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/storagemonitoring/IIoStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/IIoStatsListener;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->registerListener(Landroid/car/storagemonitoring/IIoStatsListener;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->getIoStatsDeltas()Ljava/util/List;

    move-result-object p0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 155
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->getAggregateIoStats()Ljava/util/List;

    move-result-object p0

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 147
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->getBootIoStats()Ljava/util/List;

    move-result-object p0

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 139
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->getWearEstimateHistory()Ljava/util/List;

    move-result-object p0

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 125
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->getWearEstimate()Landroid/car/storagemonitoring/WearEstimate;

    move-result-object p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p0, p3, v1}, Landroid/car/storagemonitoring/WearEstimate;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 133
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 117
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->getPreEolIndicatorStatus()I

    move-result p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 112
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
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
