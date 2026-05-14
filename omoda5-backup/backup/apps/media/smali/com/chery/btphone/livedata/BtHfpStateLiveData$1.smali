.class Lcom/chery/btphone/livedata/BtHfpStateLiveData$1;
.super Ljava/lang/Object;
.source "BtHfpStateLiveData.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/btphone/livedata/BtHfpStateLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/btphone/livedata/BtHfpStateLiveData;


# direct methods
.method constructor <init>(Lcom/chery/btphone/livedata/BtHfpStateLiveData;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/BtHfpStateLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/BtHfpStateLiveData;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p1, p2}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->access$002(Lcom/chery/btphone/livedata/BtHfpStateLiveData;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 42
    iget-object p0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/BtHfpStateLiveData;

    invoke-static {p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->access$100(Lcom/chery/btphone/livedata/BtHfpStateLiveData;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
