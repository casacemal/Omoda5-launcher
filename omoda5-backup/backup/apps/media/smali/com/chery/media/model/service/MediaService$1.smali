.class Lcom/chery/media/model/service/MediaService$1;
.super Ljava/lang/Object;
.source "MediaService.java"

# interfaces
.implements Lcom/chery/libvr/bean/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/MediaService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/MediaService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/MediaService;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/chery/media/model/service/MediaService$1;->this$0:Lcom/chery/media/model/service/MediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedToRemote()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/chery/media/model/service/MediaService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectedToRemote"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/chery/media/model/business/VrMediaBusiness;->getInstance()Lcom/chery/media/model/business/VrMediaBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/service/MediaService$1;->this$0:Lcom/chery/media/model/service/MediaService;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->init(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/chery/media/model/business/VrRadioBusiness;->getInstance()Lcom/chery/media/model/business/VrRadioBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/service/MediaService$1;->this$0:Lcom/chery/media/model/service/MediaService;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/VrRadioBusiness;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onDisconnectedToRemote()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/chery/media/model/service/MediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onDisconnectedToRemote"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
