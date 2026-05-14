.class Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;
.super Landroid/os/Handler;
.source "CarPowerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarPowerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarPowerClient;Landroid/os/Looper;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->access$400(Lcom/chery/caradapter/carapi/client/CarPowerClient;I)V

    .line 172
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
