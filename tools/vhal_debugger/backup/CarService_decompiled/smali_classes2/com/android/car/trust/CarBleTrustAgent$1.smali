.class Lcom/android/car/trust/CarBleTrustAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "CarBleTrustAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/trust/CarBleTrustAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/trust/CarBleTrustAgent;


# direct methods
.method constructor <init>(Lcom/android/car/trust/CarBleTrustAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/trust/CarBleTrustAgent;

    .line 225
    iput-object p1, p0, Lcom/android/car/trust/CarBleTrustAgent$1;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/car/trust/CarBleTrustAgent$1;->this$0:Lcom/android/car/trust/CarBleTrustAgent;

    const/4 v1, -0x1

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/trust/CarBleTrustAgent;->access$000(Lcom/android/car/trust/CarBleTrustAgent;I)V

    .line 232
    :cond_0
    return-void
.end method
