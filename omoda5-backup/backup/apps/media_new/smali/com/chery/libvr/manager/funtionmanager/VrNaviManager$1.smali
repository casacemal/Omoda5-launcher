.class Lcom/chery/libvr/manager/funtionmanager/VrNaviManager$1;
.super Lcom/chery/libvr/apps/navi/IVrNaviCallback$Stub;
.source "VrNaviManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/manager/funtionmanager/VrNaviManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/libvr/manager/funtionmanager/VrNaviManager;


# direct methods
.method constructor <init>(Lcom/chery/libvr/manager/funtionmanager/VrNaviManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/chery/libvr/manager/funtionmanager/VrNaviManager$1;->this$0:Lcom/chery/libvr/manager/funtionmanager/VrNaviManager;

    invoke-direct {p0}, Lcom/chery/libvr/apps/navi/IVrNaviCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrNaviManager$1;->this$0:Lcom/chery/libvr/manager/funtionmanager/VrNaviManager;

    invoke-static {p0}, Lcom/chery/libvr/manager/funtionmanager/VrNaviManager;->access$000(Lcom/chery/libvr/manager/funtionmanager/VrNaviManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/libvr/manager/funtionmanager/VrNaviManager$NaviTool;

    .line 71
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/libvr/manager/funtionmanager/VrNaviManager$NaviTool;->onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
