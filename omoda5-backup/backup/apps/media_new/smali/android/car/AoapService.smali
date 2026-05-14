.class public abstract Landroid/car/AoapService;
.super Landroid/app/Service;
.source "AoapService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/AoapService$IncomingHandler;,
        Landroid/car/AoapService$Result;
    }
.end annotation


# static fields
.field public static final KEY_DEVICE:Ljava/lang/String; = "usb-device"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final MSG_CAN_SWITCH_TO_AOAP:I = 0x3

.field public static final MSG_CAN_SWITCH_TO_AOAP_RESPONSE:I = 0x4

.field public static final MSG_NEW_DEVICE_ATTACHED:I = 0x1

.field public static final MSG_NEW_DEVICE_ATTACHED_RESPONSE:I = 0x2

.field public static final RESULT_DEVICE_NOT_SUPPORTED:I = 0x1

.field public static final RESULT_DO_NOT_SWITCH_TO_AOAP:I = 0x2

.field public static final RESULT_OK:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBound:Z

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Landroid/car/AoapService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/car/AoapService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Landroid/car/AoapService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public canSwitchToAoap(Landroid/hardware/usb/UsbDevice;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bound: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/car/AoapService;->mBound:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public abstract isDeviceSupported(Landroid/hardware/usb/UsbDevice;)I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 163
    iget-boolean p1, p0, Landroid/car/AoapService;->mBound:Z

    if-eqz p1, :cond_0

    .line 164
    sget-object p1, Landroid/car/AoapService;->TAG:Ljava/lang/String;

    const-string v0, "Received onBind event when the service was already bound"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Landroid/car/AoapService;->mBound:Z

    .line 167
    iget-object p0, p0, Landroid/car/AoapService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 157
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 158
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/car/AoapService$IncomingHandler;

    invoke-direct {v1, p0}, Landroid/car/AoapService$IncomingHandler;-><init>(Landroid/car/AoapService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/car/AoapService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Landroid/car/AoapService;->mBound:Z

    .line 173
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
