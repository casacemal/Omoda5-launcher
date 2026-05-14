.class Lcom/chery/media/livedata/BtA2dpStateLiveData$1;
.super Ljava/lang/Object;
.source "BtA2dpStateLiveData.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/livedata/BtA2dpStateLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/livedata/BtA2dpStateLiveData;


# direct methods
.method constructor <init>(Lcom/chery/media/livedata/BtA2dpStateLiveData;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpStateLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 40
    iget-object p1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpStateLiveData;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p1, p2}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->access$002(Lcom/chery/media/livedata/BtA2dpStateLiveData;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 43
    iget-object p1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpStateLiveData;

    invoke-static {p1}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->access$000(Lcom/chery/media/livedata/BtA2dpStateLiveData;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpStateLiveData;

    invoke-static {p1}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->access$000(Lcom/chery/media/livedata/BtA2dpStateLiveData;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpStateLiveData;

    invoke-static {v0}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->access$000(Lcom/chery/media/livedata/BtA2dpStateLiveData;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpStateLiveData;

    invoke-static {p0, p2}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->access$100(Lcom/chery/media/livedata/BtA2dpStateLiveData;I)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
