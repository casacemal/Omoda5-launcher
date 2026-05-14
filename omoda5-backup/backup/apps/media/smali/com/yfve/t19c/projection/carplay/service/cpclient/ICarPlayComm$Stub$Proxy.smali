.class Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarPlayComm.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    return-object p0
.end method

.method public lunchCarPlayApp(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 671
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 674
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 675
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->lunchCarPlayApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 678
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public prepareAltAudio()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1125
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1126
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1127
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1128
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->prepareAltAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1131
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public prepareMainAudio()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1071
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1072
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1073
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1074
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->prepareMainAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1077
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public refreshBonjour(ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1357
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1359
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1360
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1361
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->refreshBonjour(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1364
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerCarPlayAudioListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1034
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1035
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1036
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1037
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1038
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->registerCarPlayAudioListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayAudioListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1041
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerCarPlayServerListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 773
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 774
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 775
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 776
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 777
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->registerCarPlayServerListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayServerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 780
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 810
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 811
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 812
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 813
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 814
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->registerCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 817
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerCommListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 998
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 999
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1000
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1001
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->registerCommListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1004
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestAudioResource(IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 920
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 922
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 924
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 925
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->requestAudioResource(IZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 927
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 931
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestBorrowAudio(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1299
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1301
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1302
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->requestBorrowAudio(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1305
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestBorrowVideo(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1317
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1319
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1321
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1322
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->requestBorrowVideo(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1325
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestResource(IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 898
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 900
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 902
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 903
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->requestResource(IZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 905
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 909
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestVideoResource(IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 942
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 944
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 946
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 947
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->requestVideoResource(IZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 949
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 953
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendChangeModeRequest(IIIIIIIIIII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 866
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p1

    .line 867
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v5, p2

    .line 868
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    .line 869
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 870
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 871
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    .line 872
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 873
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p8

    .line 874
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v12, p9

    .line 875
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v13, p10

    .line 876
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v14, p11

    .line 877
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v3, p0

    .line 878
    iget-object v3, v3, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v15, 0x0

    invoke-interface {v3, v4, v1, v2, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 879
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 880
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-interface/range {v3 .. v14}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendChangeModeRequest(IIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 883
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 886
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public sendHardKey(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1179
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1181
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1183
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1184
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendHardKey(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1187
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendIAPMessage([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 848
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 850
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 851
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 852
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendIAPMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendLimitedUIRequest(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1278
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1279
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1281
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1282
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendLimitedUIRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1285
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendNightModeRequest(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1259
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1260
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1262
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1263
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendNightModeRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1266
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendSiriRequest(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1242
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1245
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1246
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendSiriRequest(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendUIRequest([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 962
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 964
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 965
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 966
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendUIRequest([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setBtMac(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 690
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 693
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 694
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->setBtMac(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 697
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setGraphic(Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1201
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    invoke-virtual {p1, v0, v2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    :goto_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1208
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1209
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->setGraphic(Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1212
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 709
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 711
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    invoke-virtual {p1, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    :goto_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 718
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 719
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 722
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startAltAudio()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1144
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1145
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1146
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->startAltAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1149
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startCarPlayServer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 635
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 636
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 637
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 638
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->startCarPlayServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 641
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startCarPlaySession(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 597
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 599
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 601
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 602
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->startCarPlaySession(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 605
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startMainAudio()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1089
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1091
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1092
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->startMainAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1095
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startVideoStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 734
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 735
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 736
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 737
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->startVideoStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 740
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopAltAudio()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1162
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1163
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1164
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->stopAltAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1167
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopCarPlayServer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 653
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 655
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 656
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->stopCarPlayServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 659
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopCarPlaySession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 617
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 618
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 619
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 620
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->stopCarPlaySession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 623
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopMainAudio()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1107
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1108
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1109
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1110
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->stopMainAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1113
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopVideoStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 752
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 753
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 754
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 755
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->stopVideoStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 758
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public touchScreenUpdate(BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 978
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 980
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 983
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 984
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->touchScreenUpdate(BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterCarPlayAudioListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1053
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1054
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1055
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1056
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->unregisterCarPlayAudioListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1059
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterCarPlayServerListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 792
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 793
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 794
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 795
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->unregisterCarPlayServerListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 798
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 829
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 830
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 831
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 832
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 833
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->unregisterCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 836
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterCommListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1016
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1018
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1019
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->unregisterCommListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1022
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public updateAppSts(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1223
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1229
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1230
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->updateAppSts(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public updateRightHandDrive(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    .line 1337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1338
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1340
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1341
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->updateRightHandDrive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1344
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
