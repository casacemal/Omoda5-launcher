.class Landroid/car/user/IUserNoticeUI$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUserNoticeUI.java"

# interfaces
.implements Landroid/car/user/IUserNoticeUI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/user/IUserNoticeUI$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/user/IUserNoticeUI;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/car/user/IUserNoticeUI$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/car/user/IUserNoticeUI$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.car.user.IUserNoticeUI"

    return-object p0
.end method

.method public setCallbackBinder(Landroid/car/user/IUserNotice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.user.IUserNoticeUI"

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Landroid/car/user/IUserNotice;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 104
    iget-object p0, p0, Landroid/car/user/IUserNoticeUI$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 105
    invoke-static {}, Landroid/car/user/IUserNoticeUI$Stub;->getDefaultImpl()Landroid/car/user/IUserNoticeUI;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 106
    invoke-static {}, Landroid/car/user/IUserNoticeUI$Stub;->getDefaultImpl()Landroid/car/user/IUserNoticeUI;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/user/IUserNoticeUI;->setCallbackBinder(Landroid/car/user/IUserNotice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
