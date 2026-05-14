.class Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;
.super Ljava/lang/Object;
.source "VrConfigManager.java"

# interfaces
.implements Lcom/chery/libvr/bean/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/manager/platformmanager/VrConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitListenerWrapper"
.end annotation


# instance fields
.field private mInitListener:Lcom/chery/libvr/bean/InitListener;

.field final synthetic this$0:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;


# direct methods
.method public constructor <init>(Lcom/chery/libvr/manager/platformmanager/VrConfigManager;Lcom/chery/libvr/bean/InitListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;->this$0:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;->mInitListener:Lcom/chery/libvr/bean/InitListener;

    return-void
.end method


# virtual methods
.method public onConnectedToRemote()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;->this$0:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->access$002(Lcom/chery/libvr/manager/platformmanager/VrConfigManager;Z)Z

    .line 61
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;->mInitListener:Lcom/chery/libvr/bean/InitListener;

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0}, Lcom/chery/libvr/bean/InitListener;->onConnectedToRemote()V

    :cond_0
    return-void
.end method

.method public onDisconnectedToRemote()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;->this$0:Lcom/chery/libvr/manager/platformmanager/VrConfigManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chery/libvr/manager/platformmanager/VrConfigManager;->access$002(Lcom/chery/libvr/manager/platformmanager/VrConfigManager;Z)Z

    .line 68
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrConfigManager$InitListenerWrapper;->mInitListener:Lcom/chery/libvr/bean/InitListener;

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0}, Lcom/chery/libvr/bean/InitListener;->onDisconnectedToRemote()V

    :cond_0
    return-void
.end method
