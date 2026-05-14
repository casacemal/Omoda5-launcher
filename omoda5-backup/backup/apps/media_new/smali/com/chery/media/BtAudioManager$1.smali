.class Lcom/chery/media/BtAudioManager$1;
.super Ljava/lang/Object;
.source "BtAudioManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/BtAudioManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/BtAudioManager;


# direct methods
.method constructor <init>(Lcom/chery/media/BtAudioManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/chery/media/BtAudioManager$1;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 98
    invoke-static {}, Lcom/chery/media/BtAudioManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2DP connected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/chery/media/BtAudioManager$1;->this$0:Lcom/chery/media/BtAudioManager;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p0, p2}, Lcom/chery/media/BtAudioManager;->access$102(Lcom/chery/media/BtAudioManager;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/chery/media/BtAudioManager$1;->this$0:Lcom/chery/media/BtAudioManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/media/BtAudioManager;->access$102(Lcom/chery/media/BtAudioManager;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    :cond_0
    return-void
.end method
