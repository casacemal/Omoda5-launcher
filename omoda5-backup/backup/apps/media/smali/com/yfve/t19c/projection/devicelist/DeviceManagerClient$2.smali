.class Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;
.super Ljava/lang/Object;
.source "DeviceManagerClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;


# direct methods
.method constructor <init>(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() called    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$200(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$200(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$2;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$202(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;Lcom/yfve/t19c/projection/devicelist/DeviceListManager;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    :cond_0
    return-void
.end method
