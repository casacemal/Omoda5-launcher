.class Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;
.super Ljava/lang/Object;
.source "VrPlatformService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/manager/platformmanager/VrPlatformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;


# direct methods
.method constructor <init>(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected lib version: 103"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$300(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Z

    move-result p1

    const-string v0, "onServiceConnected isVrInitStatusOk()"

    const-string v1, "onServiceConnected mInitListener == null"

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/chery/libvr/bean/InitListener;->onConnectedToRemote()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p2}, Lcom/chery/libvr/apps/IVrFunctionBinderPool$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$002(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;Lcom/chery/libvr/apps/IVrFunctionBinderPool;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    .line 162
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$000(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    move-result-object p1

    if-nez p1, :cond_3

    .line 163
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected mBinderPoolInterface == null"

    invoke-static {p1, p2}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/chery/libvr/bean/InitListener;->onDisconnectedToRemote()V

    goto :goto_1

    .line 168
    :cond_2
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mBinderPoolInterface OK"

    invoke-static {p1, p2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$000(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p2}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$500(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrInitStatusCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/chery/libvr/apps/IVrFunctionBinderPool;->registerVrInitStatusCallback(Lcom/chery/libvr/apps/IVrInitStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 180
    :goto_2
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$300(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 181
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/chery/libvr/bean/InitListener;->onConnectedToRemote()V

    goto :goto_3

    .line 186
    :cond_4
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_5
    :goto_3
    :try_start_1
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$000(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    move-result-object p1

    invoke-interface {p1}, Lcom/chery/libvr/apps/IVrFunctionBinderPool;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$600(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 194
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$002(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;Lcom/chery/libvr/apps/IVrFunctionBinderPool;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    .line 202
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$100(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V

    .line 203
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/chery/libvr/bean/InitListener;->onDisconnectedToRemote()V

    return-void
.end method
