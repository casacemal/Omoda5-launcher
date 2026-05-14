.class Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;
.super Landroid/os/Handler;
.source "CarAmblightClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarAmblightClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarAmblightClient;Landroid/os/Looper;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x21403040

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$400(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$300(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$200(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$100(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$500(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V

    .line 65
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$600(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)V

    .line 70
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21403028
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
