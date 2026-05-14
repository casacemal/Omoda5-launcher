.class Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;
.super Ljava/lang/Object;
.source "CarPowerClient.java"

# interfaces
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarPowerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyCarPowerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarPowerClient;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarPowerClient;Lcom/chery/caradapter/carapi/client/CarPowerClient$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarPowerClient;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3

    .line 152
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->access$202(Lcom/chery/caradapter/carapi/client/CarPowerClient;I)I

    .line 154
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->access$300(Lcom/chery/caradapter/carapi/client/CarPowerClient;)Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    .line 155
    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->access$200(Lcom/chery/caradapter/carapi/client/CarPowerClient;)I

    move-result p0

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, v0, p0, v0}, Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
