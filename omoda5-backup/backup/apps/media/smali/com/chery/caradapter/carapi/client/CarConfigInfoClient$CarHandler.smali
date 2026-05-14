.class Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;
.super Landroid/os/Handler;
.source "CarConfigInfoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;Landroid/os/Looper;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    .line 46
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$000(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$100(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V

    .line 54
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$200(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$300(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V

    .line 55
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$400(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$500(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V

    .line 56
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$600(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$700(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V

    .line 57
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$800(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$900(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V

    .line 59
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: mEcuHwNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1200(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: mEcuSwNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1300(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: mEcuSerialNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1400(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: mVehiclePartNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1500(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: mUuid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1600(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1500(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "persist.Config.chery.config.partno"

    const-string v2, ""

    .line 67
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v2, v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1502(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: mVehiclePartNumber debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1500(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1700(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/interfaces/IConfigListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1700(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/interfaces/IConfigListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/chery/caradapter/carapi/interfaces/IConfigListener;->onConfigSuccess()V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1802(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;Z)Z

    .line 80
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
