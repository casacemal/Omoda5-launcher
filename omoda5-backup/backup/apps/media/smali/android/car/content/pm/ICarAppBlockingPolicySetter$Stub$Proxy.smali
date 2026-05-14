.class Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarAppBlockingPolicySetter.java"

# interfaces
.implements Landroid/car/content/pm/ICarAppBlockingPolicySetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/content/pm/ICarAppBlockingPolicySetter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 90
    iget-object p0, p0, Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.car.content.pm.ICarAppBlockingPolicySetter"

    return-object p0
.end method

.method public setAppBlockingPolicy(Landroid/car/content/pm/CarAppBlockingPolicy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.content.pm.ICarAppBlockingPolicySetter"

    .line 101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p1, v0, v3}, Landroid/car/content/pm/CarAppBlockingPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    :goto_0
    iget-object p0, p0, Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 110
    invoke-static {}, Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub;->getDefaultImpl()Landroid/car/content/pm/ICarAppBlockingPolicySetter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 111
    invoke-static {}, Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub;->getDefaultImpl()Landroid/car/content/pm/ICarAppBlockingPolicySetter;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/content/pm/ICarAppBlockingPolicySetter;->setAppBlockingPolicy(Landroid/car/content/pm/CarAppBlockingPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
