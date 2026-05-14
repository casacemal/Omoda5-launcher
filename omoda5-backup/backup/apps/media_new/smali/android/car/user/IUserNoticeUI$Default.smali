.class public Landroid/car/user/IUserNoticeUI$Default;
.super Ljava/lang/Object;
.source "IUserNoticeUI.java"

# interfaces
.implements Landroid/car/user/IUserNoticeUI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/user/IUserNoticeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setCallbackBinder(Landroid/car/user/IUserNotice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
