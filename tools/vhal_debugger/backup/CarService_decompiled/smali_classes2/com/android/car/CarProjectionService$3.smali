.class Lcom/android/car/CarProjectionService$3;
.super Landroid/content/BroadcastReceiver;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/CarProjectionService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarProjectionService;


# direct methods
.method constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarProjectionService;

    .line 734
    iput-object p1, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 737
    const/16 v0, 0xb

    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 739
    .local v1, "currState":I
    const-string v2, "previous_wifi_state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 741
    .local v0, "prevState":I
    const-string v2, "wifi_ap_error_code"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 742
    .local v8, "errorCode":I
    nop

    .line 743
    const-string v2, "wifi_ap_interface_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 744
    .local v9, "ifaceName":Ljava/lang/String;
    const-string v2, "wifi_ap_mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 746
    .local v10, "mode":I
    iget-object v2, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    move v3, v1

    move v4, v0

    move v5, v8

    move-object v6, v9

    move v7, v10

    invoke-static/range {v2 .. v7}, Lcom/android/car/CarProjectionService;->access$1400(Lcom/android/car/CarProjectionService;IIILjava/lang/String;I)V

    .line 747
    return-void
.end method
