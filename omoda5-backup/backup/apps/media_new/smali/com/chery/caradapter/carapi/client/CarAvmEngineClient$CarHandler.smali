.class Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;
.super Landroid/os/Handler;
.source "CarAvmEngineClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;Landroid/os/Looper;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    .line 37
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$800(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 62
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$700(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$600(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 56
    :pswitch_5
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$500(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 53
    :pswitch_6
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$400(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 50
    :pswitch_7
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$300(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 47
    :pswitch_8
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$200(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    goto :goto_0

    .line 44
    :pswitch_9
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$100(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V

    .line 73
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2170c000
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
