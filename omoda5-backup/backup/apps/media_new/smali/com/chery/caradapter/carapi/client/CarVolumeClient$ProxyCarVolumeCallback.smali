.class Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;
.super Landroid/car/media/CarAudioManager$CarVolumeCallback;
.source "CarVolumeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarVolumeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyCarVolumeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarVolumeClient;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-direct {p0}, Landroid/car/media/CarAudioManager$CarVolumeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarVolumeClient;Lcom/chery/caradapter/carapi/client/CarVolumeClient$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarVolumeClient;)V

    return-void
.end method


# virtual methods
.method public onGroupMuteChanged(III)V
    .locals 3

    .line 308
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 309
    iput v1, v0, Landroid/os/Message;->what:I

    .line 310
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zoneId"

    .line 311
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "groupId"

    .line 312
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "flags"

    .line 313
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 315
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->access$400(Lcom/chery/caradapter/carapi/client/CarVolumeClient;)Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGroupVolumeChanged(III)V
    .locals 3

    .line 285
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 286
    iput v1, v0, Landroid/os/Message;->what:I

    .line 287
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zoneId"

    .line 288
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "groupId"

    .line 289
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "flags"

    .line 290
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 292
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->access$400(Lcom/chery/caradapter/carapi/client/CarVolumeClient;)Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMasterMuteChanged(II)V
    .locals 3

    .line 297
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 298
    iput v1, v0, Landroid/os/Message;->what:I

    .line 299
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zoneId"

    .line 300
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "flags"

    .line 301
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 303
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarVolumeClient$ProxyCarVolumeCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->access$400(Lcom/chery/caradapter/carapi/client/CarVolumeClient;)Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient$CarHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
