.class Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;
.super Landroid/os/Handler;
.source "CarBasicClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarBasicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarBasicClient;Landroid/os/Looper;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 450
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 455
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 481
    :sswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarBasicClient;F)V

    goto/16 :goto_0

    .line 532
    :sswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2500(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 523
    :sswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    const/4 v1, 0x3

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2200(Lcom/chery/caradapter/carapi/client/CarBasicClient;II)V

    goto/16 :goto_0

    .line 520
    :sswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    const/4 v1, 0x2

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2200(Lcom/chery/caradapter/carapi/client/CarBasicClient;II)V

    goto/16 :goto_0

    .line 517
    :sswitch_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2200(Lcom/chery/caradapter/carapi/client/CarBasicClient;II)V

    goto/16 :goto_0

    .line 514
    :sswitch_5
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2200(Lcom/chery/caradapter/carapi/client/CarBasicClient;II)V

    goto/16 :goto_0

    .line 502
    :sswitch_6
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1700(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 472
    :sswitch_7
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$600(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 490
    :sswitch_8
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1300(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 487
    :sswitch_9
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1200(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 475
    :sswitch_a
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$700(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 469
    :sswitch_b
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$500(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 466
    :sswitch_c
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$400(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto/16 :goto_0

    .line 463
    :sswitch_d
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$300(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 460
    :sswitch_e
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$200(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 457
    :sswitch_f
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$100(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 529
    :sswitch_10
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2400(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 526
    :sswitch_11
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2300(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 499
    :sswitch_12
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1600(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 496
    :sswitch_13
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1500(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 493
    :sswitch_14
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1400(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 484
    :sswitch_15
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 511
    :sswitch_16
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2100(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 508
    :sswitch_17
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2000(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 478
    :sswitch_18
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$800(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V

    goto :goto_0

    .line 505
    :sswitch_19
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1900(Lcom/chery/caradapter/carapi/client/CarBasicClient;Ljava/lang/String;)V

    .line 537
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21103034 -> :sswitch_19
        0x21402000 -> :sswitch_18
        0x21402016 -> :sswitch_17
        0x21402018 -> :sswitch_16
        0x21402024 -> :sswitch_15
        0x2140203b -> :sswitch_14
        0x2140203c -> :sswitch_13
        0x2140203d -> :sswitch_12
        0x2140203e -> :sswitch_11
        0x21402048 -> :sswitch_10
        0x21403001 -> :sswitch_f
        0x21403002 -> :sswitch_e
        0x21403003 -> :sswitch_d
        0x21403005 -> :sswitch_c
        0x21403006 -> :sswitch_b
        0x21403007 -> :sswitch_a
        0x2140302c -> :sswitch_9
        0x21403035 -> :sswitch_8
        0x21403036 -> :sswitch_7
        0x2140303c -> :sswitch_6
        0x21403042 -> :sswitch_5
        0x21403043 -> :sswitch_4
        0x21403044 -> :sswitch_3
        0x21403045 -> :sswitch_2
        0x2140306d -> :sswitch_1
        0x21602023 -> :sswitch_0
    .end sparse-switch
.end method
