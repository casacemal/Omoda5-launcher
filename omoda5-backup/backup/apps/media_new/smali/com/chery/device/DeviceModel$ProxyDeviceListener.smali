.class Lcom/chery/device/DeviceModel$ProxyDeviceListener;
.super Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/device/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyDeviceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/device/DeviceModel;


# direct methods
.method private constructor <init>(Lcom/chery/device/DeviceModel;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/chery/device/DeviceModel$ProxyDeviceListener;->this$0:Lcom/chery/device/DeviceModel;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/device/DeviceModel;Lcom/chery/device/DeviceModel$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/chery/device/DeviceModel$ProxyDeviceListener;-><init>(Lcom/chery/device/DeviceModel;)V

    return-void
.end method


# virtual methods
.method public onDeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onDeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V

    if-eqz p1, :cond_0

    .line 149
    invoke-static {}, Lcom/chery/device/DeviceModel;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yfve/t19c/projection/devicelist/Device;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p0, p0, Lcom/chery/device/DeviceModel$ProxyDeviceListener;->this$0:Lcom/chery/device/DeviceModel;

    invoke-static {p0, p1}, Lcom/chery/device/DeviceModel;->access$200(Lcom/chery/device/DeviceModel;Lcom/yfve/t19c/projection/devicelist/Device;)V

    :cond_0
    return-void
.end method

.method public onNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 157
    invoke-super/range {p0 .. p5}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestBluetoothPair(Ljava/lang/String;)V
    .locals 3

    .line 162
    invoke-super {p0, p1}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onRequestBluetoothPair(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/chery/device/DeviceModel;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestBluetoothPair mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/chery/device/DeviceModel$ProxyDeviceListener;->this$0:Lcom/chery/device/DeviceModel;

    invoke-static {v0}, Lcom/chery/device/DeviceModel;->access$300(Lcom/chery/device/DeviceModel;)Lcom/chery/device/DeviceModel$DeviceConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/chery/device/DeviceModel$ProxyDeviceListener;->this$0:Lcom/chery/device/DeviceModel;

    invoke-static {p0}, Lcom/chery/device/DeviceModel;->access$300(Lcom/chery/device/DeviceModel;)Lcom/chery/device/DeviceModel$DeviceConnectListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/chery/device/DeviceModel$DeviceConnectListener;->onRequestBluetoothPair(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSessionStateUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yfve/t19c/projection/devicelist/OnDeviceListListener;->onSessionStateUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/chery/device/DeviceModel;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStateUpdate mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/chery/device/DeviceModel$ProxyDeviceListener;->this$0:Lcom/chery/device/DeviceModel;

    invoke-static {v0}, Lcom/chery/device/DeviceModel;->access$300(Lcom/chery/device/DeviceModel;)Lcom/chery/device/DeviceModel$DeviceConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/chery/device/DeviceModel$ProxyDeviceListener;->this$0:Lcom/chery/device/DeviceModel;

    invoke-static {p0}, Lcom/chery/device/DeviceModel;->access$300(Lcom/chery/device/DeviceModel;)Lcom/chery/device/DeviceModel$DeviceConnectListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/chery/device/DeviceModel$DeviceConnectListener;->onSessionStateUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
