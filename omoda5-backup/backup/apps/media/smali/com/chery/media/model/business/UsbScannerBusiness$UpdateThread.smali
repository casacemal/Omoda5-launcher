.class Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;
.super Ljava/lang/Thread;
.source "UsbScannerBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/UsbScannerBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

.field private final usbType:I


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/UsbScannerBusiness;I)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 202
    iput p2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->usbType:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 206
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->usbType:I

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "update thread for %s enter"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 209
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 211
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->usbType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 213
    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1500(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->usbType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1600(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->usbType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v4

    .line 215
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 216
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 219
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->usbType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 222
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$UpdateThread;->usbType:I

    invoke-static {p0}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "update thread for %s quit"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
