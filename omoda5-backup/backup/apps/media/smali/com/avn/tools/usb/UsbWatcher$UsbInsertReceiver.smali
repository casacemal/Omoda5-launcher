.class Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avn/tools/usb/UsbWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbInsertReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avn/tools/usb/UsbWatcher;


# direct methods
.method constructor <init>(Lcom/avn/tools/usb/UsbWatcher;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "device"

    .line 278
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "device id: %d"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    .line 281
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EXCEPTION: insert UsbDevice NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "device name: %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    move p1, v3

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    if-ne p1, v3, :cond_2

    move p1, v1

    .line 297
    :goto_0
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "device usbType: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {v0}, Lcom/avn/tools/usb/UsbWatcher;->access$100(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    .line 299
    invoke-virtual {v0}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->isInserted()Z

    move-result v4

    if-nez v4, :cond_6

    .line 300
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    const-string v6, "%s inserted!"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v4, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {v4}, Lcom/avn/tools/usb/UsbWatcher;->access$200(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iput v3, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->connectionState:I

    .line 303
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    iput v4, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->devideId:I

    .line 304
    iget-object v4, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {v4, p1, p2}, Lcom/avn/tools/usb/UsbWatcher;->access$300(Lcom/avn/tools/usb/UsbWatcher;ILandroid/hardware/usb/UsbDevice;)V

    .line 305
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    iget v6, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->category:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%s category: %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {v4, p2}, Lcom/avn/tools/usb/UsbWatcher;->access$400(Lcom/avn/tools/usb/UsbWatcher;Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->serialNumber:Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v4, v1, v2

    iget-object v0, v0, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->serialNumber:Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, "%s serialNumber: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {p0, p1}, Lcom/avn/tools/usb/UsbWatcher;->access$500(Lcom/avn/tools/usb/UsbWatcher;I)V

    goto/16 :goto_1

    :cond_2
    return-void

    :cond_3
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p2, :cond_4

    .line 313
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EXCEPTION: remove UsbDevice NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_4
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {p1}, Lcom/avn/tools/usb/UsbWatcher;->access$100(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {v1}, Lcom/avn/tools/usb/UsbWatcher;->access$100(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    .line 321
    iget v4, v1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->devideId:I

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 322
    invoke-virtual {v1}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->isInserted()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 323
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->name:Ljava/lang/String;

    aput-object v1, p2, v2

    const-string v1, "%s removed!"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {p1}, Lcom/avn/tools/usb/UsbWatcher;->access$200(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object p1, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {p1}, Lcom/avn/tools/usb/UsbWatcher;->access$100(Lcom/avn/tools/usb/UsbWatcher;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;

    invoke-virtual {p1}, Lcom/avn/tools/usb/UsbWatcher$DeviceInfo;->clear()V

    .line 326
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$UsbInsertReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {p0, v0}, Lcom/avn/tools/usb/UsbWatcher;->access$600(Lcom/avn/tools/usb/UsbWatcher;I)V

    :cond_6
    :goto_1
    return-void
.end method
