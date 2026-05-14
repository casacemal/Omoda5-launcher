.class Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avn/tools/usb/UsbWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbMountReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avn/tools/usb/UsbWatcher;


# direct methods
.method constructor <init>(Lcom/avn/tools/usb/UsbWatcher;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 345
    invoke-static {}, Lcom/avn/tools/usb/UsbWatcher;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    aput-object v1, v3, v4

    const-string v1, "key:%s value:%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const-string v0, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.os.storage.extra.VOLUME_STATE"

    .line 350
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 352
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {p0, v4}, Lcom/avn/tools/usb/UsbWatcher;->access$700(Lcom/avn/tools/usb/UsbWatcher;Z)V

    goto :goto_2

    :cond_2
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 357
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 358
    iget-object p0, p0, Lcom/avn/tools/usb/UsbWatcher$UsbMountReceiver;->this$0:Lcom/avn/tools/usb/UsbWatcher;

    invoke-static {p0, v4}, Lcom/avn/tools/usb/UsbWatcher;->access$700(Lcom/avn/tools/usb/UsbWatcher;Z)V

    goto :goto_2

    :cond_3
    const-string p0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 360
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method
