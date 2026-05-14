.class Lcom/chery/media/TunerAIDLTool$1$1;
.super Lcom/chery/media/ITunerListener$Stub;
.source "TunerAIDLTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/TunerAIDLTool$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/TunerAIDLTool$1;


# direct methods
.method constructor <init>(Lcom/chery/media/TunerAIDLTool$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/chery/media/TunerAIDLTool$1$1;->this$1:Lcom/chery/media/TunerAIDLTool$1;

    invoke-direct {p0}, Lcom/chery/media/ITunerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public callback(IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool$1$1;->this$1:Lcom/chery/media/TunerAIDLTool$1;

    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {p0}, Lcom/chery/media/TunerAIDLTool;->access$300(Lcom/chery/media/TunerAIDLTool;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/TunerAIDLTool$Listener;

    .line 73
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/media/TunerAIDLTool$Listener;->callback(IZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public regionCallback(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/chery/media/TunerAIDLTool$1$1;->this$1:Lcom/chery/media/TunerAIDLTool$1;

    iget-object v0, v0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {v0, p1}, Lcom/chery/media/TunerAIDLTool;->access$200(Lcom/chery/media/TunerAIDLTool;I)V

    .line 80
    iget-object v0, p0, Lcom/chery/media/TunerAIDLTool$1$1;->this$1:Lcom/chery/media/TunerAIDLTool$1;

    iget-object v0, v0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {v0}, Lcom/chery/media/TunerAIDLTool;->access$400(Lcom/chery/media/TunerAIDLTool;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/TunerAIDLTool$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/TunerAIDLTool$1$1$1;-><init>(Lcom/chery/media/TunerAIDLTool$1$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
