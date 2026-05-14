.class Lcom/chery/media/model/business/UsbScannerBusiness$1;
.super Ljava/lang/Object;
.source "UsbScannerBusiness.java"

# interfaces
.implements Lcom/chery/media/UsbScannerManagerTool$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbScannerBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UsbScannerBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbScannerBusiness;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMounted(Ljava/lang/String;Z)V
    .locals 3

    .line 125
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMounted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " alreadyAttached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 130
    new-instance p2, Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$700(Lcom/chery/media/model/business/UsbScannerBusiness;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->show()V

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    const/4 p2, 0x1

    invoke-static {p0, v0, p2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$100(Lcom/chery/media/model/business/UsbScannerBusiness;IZLjava/lang/String;)V

    return-void
.end method

.method public onReady()V
    .locals 11

    .line 101
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReady"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->getInstance()Lcom/chery/media/UsbScannerManagerTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/UsbScannerManagerTool;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->getInstance()Lcom/chery/media/UsbScannerManagerTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/UsbScannerManagerTool;->getMountPath()Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v9, v1, v4}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$100(Lcom/chery/media/model/business/UsbScannerBusiness;IZLjava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->getInstance()Lcom/chery/media/UsbScannerManagerTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/UsbScannerManagerTool;->getScanStatus()I

    move-result v5

    const/16 v0, 0x22

    if-eq v5, v0, :cond_0

    const/16 v0, 0x23

    if-ne v5, v0, :cond_1

    .line 110
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$200(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 111
    new-instance v7, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 112
    new-instance v8, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 113
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    new-instance v10, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/chery/media/model/business/UsbScannerBusiness$1$1;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness$1;ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v0, v9, v10}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$600(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onScanStatusChanged(I)V
    .locals 11

    .line 178
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/chery/media/UsbScannerManagerTool;->getInstance()Lcom/chery/media/UsbScannerManagerTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/UsbScannerManagerTool;->getMountPath()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    if-eq p1, v2, :cond_1

    const/16 v2, 0x23

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {p0, v0, v4, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1700(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/String;I)V

    goto :goto_1

    .line 182
    :cond_1
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$200(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 183
    new-instance v7, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 184
    new-instance v8, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 185
    iget-object v9, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    new-instance v10, Lcom/chery/media/model/business/UsbScannerBusiness$1$2;

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/chery/media/model/business/UsbScannerBusiness$1$2;-><init>(Lcom/chery/media/model/business/UsbScannerBusiness$1;ILjava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v9, v0, v10}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$600(Lcom/chery/media/model/business/UsbScannerBusiness;ILjava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onUnMounted()V
    .locals 7

    .line 138
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnMounted"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$700(Lcom/chery/media/model/business/UsbScannerBusiness;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$700(Lcom/chery/media/model/business/UsbScannerBusiness;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$200(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$800(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$900(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1000(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1100(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1200(Lcom/chery/media/model/business/UsbScannerBusiness;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v3}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$100(Lcom/chery/media/model/business/UsbScannerBusiness;IZLjava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1500(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "to quit update thread for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 161
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1600(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1500(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1300(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 167
    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "handler of update thread for %s is null yet, not to quit"

    .line 166
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/UsbScannerBusiness$1;->this$0:Lcom/chery/media/model/business/UsbScannerBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$1400(Lcom/chery/media/model/business/UsbScannerBusiness;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 172
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no update thread for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
