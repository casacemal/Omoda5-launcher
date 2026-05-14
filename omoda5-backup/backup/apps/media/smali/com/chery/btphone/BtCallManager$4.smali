.class Lcom/chery/btphone/BtCallManager$4;
.super Ljava/lang/Thread;
.source "BtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/btphone/BtCallManager;->startDownload()V
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

    .line 238
    iput-object p1, p0, Lcom/chery/btphone/BtCallManager$4;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 242
    iget-object v4, p0, Lcom/chery/btphone/BtCallManager$4;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-virtual {v4}, Lcom/chery/btphone/BtCallManager;->downloadCallLog()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/chery/btphone/BtCallManager$4;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-static {v2}, Lcom/chery/btphone/BtCallManager;->access$200(Lcom/chery/btphone/BtCallManager;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 247
    invoke-static {}, Lcom/chery/btphone/BtCallManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calllog sync finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager$4;->this$0:Lcom/chery/btphone/BtCallManager;

    invoke-virtual {p0}, Lcom/chery/btphone/BtCallManager;->downloadPhoneBook()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 251
    invoke-static {}, Lcom/chery/btphone/BtCallManager;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contact syncing."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    :cond_0
    invoke-static {}, Lcom/chery/btphone/BtCallManager;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contact sync failed."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0xc8

    .line 259
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {}, Lcom/chery/btphone/BtCallManager;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "calllog sync failed."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
