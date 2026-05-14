.class Lcom/chery/btphone/BtCallManager$3;
.super Landroid/content/BroadcastReceiver;
.source "BtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/btphone/BtCallManager;
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

    .line 139
    iput-object p1, p0, Lcom/chery/btphone/BtCallManager$3;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.bluetooth.pbap.extra.SYNC_TYPE"

    const/4 v0, -0x1

    .line 142
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.pbap.extra.SYNC_STATE"

    .line 143
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 144
    invoke-static {}, Lcom/chery/btphone/BtCallManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update type to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager$3;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-static {p0, p2}, Lcom/chery/btphone/BtCallManager;->access$202(Lcom/chery/btphone/BtCallManager;I)I

    goto :goto_0

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager$3;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-static {p0, p2}, Lcom/chery/btphone/BtCallManager;->access$102(Lcom/chery/btphone/BtCallManager;I)I

    :goto_0
    return-void
.end method
