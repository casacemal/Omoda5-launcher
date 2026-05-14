.class Lcom/chery/btphone/livedata/BtCallStateLiveData$1;
.super Ljava/lang/Object;
.source "BtCallStateLiveData.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/btphone/livedata/BtCallStateLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/btphone/livedata/BtCallStateLiveData;


# direct methods
.method constructor <init>(Lcom/chery/btphone/livedata/BtCallStateLiveData;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/BtCallStateLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/BtCallStateLiveData;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p1, p2}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->access$002(Lcom/chery/btphone/livedata/BtCallStateLiveData;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 51
    iget-object p0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/BtCallStateLiveData;

    invoke-static {p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->access$100(Lcom/chery/btphone/livedata/BtCallStateLiveData;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
