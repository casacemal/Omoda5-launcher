.class Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;
.super Lcom/chery/libvr/apps/IVrInitStatusCallback$Stub;
.source "VrPlatformService.java"


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

    .line 225
    iput-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-direct {p0}, Lcom/chery/libvr/apps/IVrInitStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrInitStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDuOsInitStatus status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onDuOsInitStatus mInitListener == null"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1, v1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$702(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;Z)Z

    .line 231
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/chery/libvr/bean/InitListener;->onConnectedToRemote()V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$702(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;Z)Z

    .line 240
    iget-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 241
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/chery/libvr/bean/InitListener;->onDisconnectedToRemote()V

    goto :goto_0

    .line 244
    :cond_2
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
