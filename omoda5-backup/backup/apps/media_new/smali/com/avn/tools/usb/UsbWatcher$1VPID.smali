.class Lcom/avn/tools/usb/UsbWatcher$1VPID;
.super Ljava/lang/Object;
.source "UsbWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avn/tools/usb/UsbWatcher;->findUnsupportedDeviceByPID(Landroid/hardware/usb/UsbDevice;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VPID"
.end annotation


# instance fields
.field pid:I

.field final synthetic this$0:Lcom/avn/tools/usb/UsbWatcher;

.field vid:I


# direct methods
.method constructor <init>(Lcom/avn/tools/usb/UsbWatcher;II)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/avn/tools/usb/UsbWatcher$1VPID;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p2, p0, Lcom/avn/tools/usb/UsbWatcher$1VPID;->vid:I

    .line 620
    iput p3, p0, Lcom/avn/tools/usb/UsbWatcher$1VPID;->pid:I

    return-void
.end method
