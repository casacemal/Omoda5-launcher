.class Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;
.super Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;
.source "DeviceManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;


# direct methods
.method constructor <init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V
    .locals 2

    .line 21
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$000(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onDeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V

    goto :goto_0

    :cond_0
    const-string v0, "DeviceManagerClient"

    const-string v1, "onDeviceUpdate: listener is null"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 32
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$000(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "DeviceManagerClient"

    const-string v1, "onNotification: listener is null"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRequestBluetoothPair(Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$000(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onRequestBluetoothPair(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "DeviceManagerClient"

    const-string v1, "onRequestBluetoothPair: listener is null"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSessionStateUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 54
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$1;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$000(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onSessionStateUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "DeviceManagerClient"

    const-string v1, "onSessionStateUpdate: listener is null"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
