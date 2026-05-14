.class Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;
.super Landroid/os/Handler;
.source "CarVolumeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarVolumeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarVolumeClient;Landroid/os/Looper;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    .line 42
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "groupId"

    const-string v3, "flags"

    const-string v4, "zoneId"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 76
    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-static {v3, v1, v2, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->access$300(Lcom/chery/caradapter/carapi/client/CarVolumeClient;III)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 67
    :cond_3
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-static {v2, v1, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->access$200(Lcom/chery/caradapter/carapi/client/CarVolumeClient;II)V

    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 57
    :cond_5
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-static {v3, v1, v2, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->access$100(Lcom/chery/caradapter/carapi/client/CarVolumeClient;III)V

    .line 82
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
