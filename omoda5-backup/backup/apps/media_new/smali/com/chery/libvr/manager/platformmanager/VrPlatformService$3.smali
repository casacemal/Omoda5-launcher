.class Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;
.super Ljava/lang/Object;
.source "VrPlatformService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 210
    iput-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDeathRecipient binderDied"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$000(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$000(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/chery/libvr/apps/IVrFunctionBinderPool;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {v1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$600(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$002(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;Lcom/chery/libvr/apps/IVrFunctionBinderPool;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    .line 221
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$100(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V

    return-void
.end method
