.class Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;
.super Landroid/os/Handler;
.source "CarIpcDisplayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# static fields
.field private static final MSG_ICM_RADIO_SEND_INTERVAL:I = 0x32

.field private static final MSG_ICM_SEND_INTERVAL:I = 0x78


# instance fields
.field private mIcmTimeStamp:J

.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;Landroid/os/Looper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    .line 52
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private icmAmValue(I)V
    .locals 7

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 114
    iget-wide v2, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->mIcmTimeStamp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x32

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 116
    iput-wide v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->mIcmTimeStamp:J

    .line 117
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const v0, 0x2140301f

    invoke-static {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$100(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;II)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    sub-long/2addr v4, v2

    invoke-static {p0, p1, v4, v5}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$700(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;IJ)V

    :goto_0
    return-void
.end method

.method private icmFmValue(F)V
    .locals 7

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 102
    iget-wide v2, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->mIcmTimeStamp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x32

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 104
    iput-wide v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->mIcmTimeStamp:J

    .line 105
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const v0, 0x2160301e

    invoke-static {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$500(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;IF)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    sub-long/2addr v4, v2

    invoke-static {p0, p1, v4, v5}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$600(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;FJ)V

    :goto_0
    return-void
.end method

.method private icmReceived([B)V
    .locals 6

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 90
    iget-wide v2, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->mIcmTimeStamp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x78

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 92
    iput-wide v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->mIcmTimeStamp:J

    .line 93
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const v0, 0x21703000

    invoke-static {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$300(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;I[B)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    invoke-static {p0, p1, v4, v5}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$400(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;[BJ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2170302d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const v1, 0x21403046

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$100(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;II)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const v1, 0x21403020

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$100(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;II)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const v1, 0x2140301c

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$100(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;II)V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const v1, 0x2140301d

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$100(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;II)V

    goto :goto_0

    .line 68
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->icmFmValue(F)V

    goto :goto_0

    .line 71
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->icmAmValue(I)V

    goto :goto_0

    .line 59
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->icmReceived([B)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$200(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;I)V

    .line 85
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
