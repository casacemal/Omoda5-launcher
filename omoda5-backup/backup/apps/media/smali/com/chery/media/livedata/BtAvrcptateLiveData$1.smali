.class Lcom/chery/media/livedata/BtAvrcptateLiveData$1;
.super Ljava/lang/Object;
.source "BtAvrcptateLiveData.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/livedata/BtAvrcptateLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/livedata/BtAvrcptateLiveData;


# direct methods
.method constructor <init>(Lcom/chery/media/livedata/BtAvrcptateLiveData;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;->this$0:Lcom/chery/media/livedata/BtAvrcptateLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;->this$0:Lcom/chery/media/livedata/BtAvrcptateLiveData;

    check-cast p2, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {p1, p2}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->access$002(Lcom/chery/media/livedata/BtAvrcptateLiveData;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;

    .line 44
    iget-object p1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;->this$0:Lcom/chery/media/livedata/BtAvrcptateLiveData;

    invoke-static {p1}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->access$000(Lcom/chery/media/livedata/BtAvrcptateLiveData;)Landroid/bluetooth/BluetoothAvrcpController;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;->this$0:Lcom/chery/media/livedata/BtAvrcptateLiveData;

    invoke-static {p1}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->access$000(Lcom/chery/media/livedata/BtAvrcptateLiveData;)Landroid/bluetooth/BluetoothAvrcpController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAvrcpController;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;->this$0:Lcom/chery/media/livedata/BtAvrcptateLiveData;

    invoke-static {v0}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->access$000(Lcom/chery/media/livedata/BtAvrcptateLiveData;)Landroid/bluetooth/BluetoothAvrcpController;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAvrcpController;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;->this$0:Lcom/chery/media/livedata/BtAvrcptateLiveData;

    invoke-static {p0, p2}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->access$100(Lcom/chery/media/livedata/BtAvrcptateLiveData;I)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
