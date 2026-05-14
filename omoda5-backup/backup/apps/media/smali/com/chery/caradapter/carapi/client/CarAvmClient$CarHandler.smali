.class Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;
.super Landroid/os/Handler;
.source "CarAvmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarAvmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarAvmClient;Landroid/os/Looper;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 46
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    const/16 v1, 0x33

    if-eq v0, v1, :cond_3

    const v1, 0x21402006

    if-eq v0, v1, :cond_2

    const v1, 0x21402011

    if-eq v0, v1, :cond_1

    const v1, 0x2140203f

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$200(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$300(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$100(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)V

    goto :goto_0

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$500(Lcom/chery/caradapter/carapi/client/CarAvmClient;)V

    goto :goto_0

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$400(Lcom/chery/caradapter/carapi/client/CarAvmClient;)V

    .line 70
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
