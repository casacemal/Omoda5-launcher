.class Lcom/chery/libvr/manager/platformmanager/VrPlatformService$1;
.super Ljava/lang/Object;
.source "VrPlatformService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->startThreadToConnectPlatformService()V
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

    .line 51
    iput-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$1;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$1;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$000(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$1;->this$0:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-static {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->access$100(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V

    :cond_0
    return-void
.end method
