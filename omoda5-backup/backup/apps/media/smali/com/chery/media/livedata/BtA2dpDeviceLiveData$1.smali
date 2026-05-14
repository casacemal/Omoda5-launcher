.class Lcom/chery/media/livedata/BtA2dpDeviceLiveData$1;
.super Ljava/lang/Object;
.source "BtA2dpDeviceLiveData.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/livedata/BtA2dpDeviceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/livedata/BtA2dpDeviceLiveData;


# direct methods
.method constructor <init>(Lcom/chery/media/livedata/BtA2dpDeviceLiveData;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpDeviceLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpDeviceLiveData;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p1, p2}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->access$002(Lcom/chery/media/livedata/BtA2dpDeviceLiveData;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 49
    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$1;->this$0:Lcom/chery/media/livedata/BtA2dpDeviceLiveData;

    invoke-virtual {p0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->updateName()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
