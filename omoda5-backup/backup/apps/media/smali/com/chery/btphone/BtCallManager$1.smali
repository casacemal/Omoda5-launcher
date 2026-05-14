.class Lcom/chery/btphone/BtCallManager$1;
.super Ljava/lang/Object;
.source "BtCallManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/btphone/BtCallManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/btphone/BtCallManager;


# direct methods
.method constructor <init>(Lcom/chery/btphone/BtCallManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/chery/btphone/BtCallManager$1;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager$1;->this$0:Lcom/chery/btphone/BtCallManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p0, p2}, Lcom/chery/btphone/BtCallManager;->access$002(Lcom/chery/btphone/BtCallManager;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/chery/btphone/BtCallManager$1;->this$0:Lcom/chery/btphone/BtCallManager;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/chery/btphone/BtCallManager;->access$102(Lcom/chery/btphone/BtCallManager;I)I

    .line 111
    iget-object p1, p0, Lcom/chery/btphone/BtCallManager$1;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-static {p1, v0}, Lcom/chery/btphone/BtCallManager;->access$202(Lcom/chery/btphone/BtCallManager;I)I

    .line 112
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager$1;->this$0:Lcom/chery/btphone/BtCallManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/btphone/BtCallManager;->access$002(Lcom/chery/btphone/BtCallManager;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method
