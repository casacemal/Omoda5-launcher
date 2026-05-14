.class Lcom/chery/media/model/service/RadioAIDLService$1;
.super Ljava/lang/Object;
.source "RadioAIDLService.java"

# interfaces
.implements Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/RadioAIDLService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/RadioAIDLService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/RadioAIDLService;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAreaChanged(I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    invoke-static {v0}, Lcom/chery/media/model/service/RadioAIDLService;->access$000(Lcom/chery/media/model/service/RadioAIDLService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 53
    iget-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v0, v0, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v2, v2, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v2, v2, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v2, v2, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/chery/media/ITunerListener;

    invoke-interface {v2, p1}, Lcom/chery/media/ITunerListener;->regionCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 60
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object p1, p1, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 64
    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    invoke-static {p0}, Lcom/chery/media/model/service/RadioAIDLService;->access$000(Lcom/chery/media/model/service/RadioAIDLService;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onChannelChanged(Lcom/chery/media/model/business/RadioDef;I)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    invoke-static {v0}, Lcom/chery/media/model/service/RadioAIDLService;->access$000(Lcom/chery/media/model/service/RadioAIDLService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    iget-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v0, v0, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v2, v2, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v2, v2, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object v2, v2, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/chery/media/ITunerListener;

    iget v3, p1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget-boolean v4, p1, Lcom/chery/media/model/business/RadioDef;->isValid:Z

    invoke-interface {v2, v3, v4, p2}, Lcom/chery/media/ITunerListener;->callback(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 43
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object p1, p1, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 47
    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService$1;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    invoke-static {p0}, Lcom/chery/media/model/service/RadioAIDLService;->access$000(Lcom/chery/media/model/service/RadioAIDLService;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method
