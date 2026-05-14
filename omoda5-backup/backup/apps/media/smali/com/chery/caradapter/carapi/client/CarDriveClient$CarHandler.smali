.class Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;
.super Landroid/os/Handler;
.source "CarDriveClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarDriveClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarDriveClient;Landroid/os/Looper;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 496
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 501
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x21403041

    if-eq v0, v1, :cond_2

    const v1, 0x21403049

    if-eq v0, v1, :cond_1

    const v1, 0x21403055

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2200(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 569
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2300(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 563
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2100(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 560
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2000(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 557
    :pswitch_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1900(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 554
    :pswitch_5
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1800(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 551
    :pswitch_6
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1700(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 548
    :pswitch_7
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1600(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 545
    :pswitch_8
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1500(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 542
    :pswitch_9
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1400(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 539
    :pswitch_a
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1300(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 536
    :pswitch_b
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1200(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 533
    :pswitch_c
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto/16 :goto_0

    .line 530
    :pswitch_d
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 527
    :pswitch_e
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$900(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 524
    :pswitch_f
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$800(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 521
    :pswitch_10
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$700(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 518
    :pswitch_11
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$600(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 515
    :pswitch_12
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$500(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 512
    :pswitch_13
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$400(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 509
    :pswitch_14
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$300(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 506
    :pswitch_15
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$200(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 503
    :pswitch_16
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$100(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2600(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2500(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2400(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V

    .line 583
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21403008
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21403037
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
