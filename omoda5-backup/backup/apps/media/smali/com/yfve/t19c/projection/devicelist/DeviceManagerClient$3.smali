.class Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;
.super Ljava/lang/Object;
.source "DeviceManagerClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 74
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected() called with: name = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]    "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceManagerClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p2}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$202(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;Lcom/yfve/t19c/projection/devicelist/DeviceListManager;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$300(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 81
    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$400(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$500(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$200(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$400(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;->registerListener(Lcom/yfve/t19c/projection/devicelist/OnConnectListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected() called with: name = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]    "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceManagerClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$400(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$500(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    :try_start_0
    iget-object p1, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$200(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/DeviceListManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient$3;->this$0:Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;->access$400(Lcom/yfve/t19c/projection/devicelist/DeviceManagerClient;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yfve/t19c/projection/devicelist/DeviceListManager;->unregisterListener(Lcom/yfve/t19c/projection/devicelist/OnConnectListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
