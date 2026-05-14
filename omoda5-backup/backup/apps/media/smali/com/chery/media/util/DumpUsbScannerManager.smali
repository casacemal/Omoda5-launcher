.class public Lcom/chery/media/util/DumpUsbScannerManager;
.super Ljava/lang/Object;
.source "DumpUsbScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;,
        Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;,
        Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DumpUsbScannerManager"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

.field private usbScannerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private usbServiceListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbServiceListenerList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbScannerListeners:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mContext:Landroid/content/Context;

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager;->handler:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;-><init>(Lcom/chery/media/util/DumpUsbScannerManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/util/DumpUsbScannerManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbScannerListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/util/DumpUsbScannerManager;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/util/DumpUsbScannerManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbServiceListenerList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addServiceListener(Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbServiceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbServiceListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addUsbScannerListener(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbScannerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbScannerListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {p0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->connect()V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {v0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {p0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public getPriority(II)I
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPriority, type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->getPriority(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getScanStatus(II)I
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScanStatus, type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 p0, 0x20

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->getScanStatus(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public isUsbServiceConnected()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {p0}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->isConnected()Z

    move-result p0

    return p0
.end method

.method public removeScanListener(Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerListener;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbScannerListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeServiceListener(Lcom/chery/media/util/DumpUsbScannerManager$UsbServiceListener;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->usbServiceListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPriority(III)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPriority, type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "scanType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DumpUsbScannerManager"

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/chery/media/util/DumpUsbScannerManager;->mUsbConnection:Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/util/DumpUsbScannerManager$UsbScannerConnection;->setPriority(III)V

    :goto_0
    return-void
.end method
