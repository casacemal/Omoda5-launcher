.class Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;
.super Landroid/os/Handler;
.source "CarIntelligentKeyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;Landroid/os/Looper;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    .line 41
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$300(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$200(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)V

    goto :goto_0

    .line 48
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$100(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)V

    .line 59
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21403021
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
