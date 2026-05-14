.class Lcom/chery/media/TunerAIDLTool$1;
.super Ljava/lang/Object;
.source "TunerAIDLTool.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/TunerAIDLTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/TunerAIDLTool;


# direct methods
.method constructor <init>(Lcom/chery/media/TunerAIDLTool;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/chery/media/TunerAIDLTool;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected   "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {p2}, Lcom/chery/media/ITunerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/media/ITunerInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chery/media/TunerAIDLTool;->access$102(Lcom/chery/media/TunerAIDLTool;Lcom/chery/media/ITunerInterface;)Lcom/chery/media/ITunerInterface;

    .line 55
    :try_start_0
    iget-object p1, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    iget-object p2, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {p2}, Lcom/chery/media/TunerAIDLTool;->access$100(Lcom/chery/media/TunerAIDLTool;)Lcom/chery/media/ITunerInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/chery/media/ITunerInterface;->getArea()I

    move-result p2

    invoke-static {p1, p2}, Lcom/chery/media/TunerAIDLTool;->access$200(Lcom/chery/media/TunerAIDLTool;I)V

    .line 56
    iget-object p1, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {p1}, Lcom/chery/media/TunerAIDLTool;->access$300(Lcom/chery/media/TunerAIDLTool;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/TunerAIDLTool$Listener;

    .line 57
    invoke-interface {p2}, Lcom/chery/media/TunerAIDLTool$Listener;->onConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {p1}, Lcom/chery/media/TunerAIDLTool;->access$100(Lcom/chery/media/TunerAIDLTool;)Lcom/chery/media/ITunerInterface;

    move-result-object p1

    new-instance p2, Lcom/chery/media/TunerAIDLTool$1$1;

    invoke-direct {p2, p0}, Lcom/chery/media/TunerAIDLTool$1$1;-><init>(Lcom/chery/media/TunerAIDLTool$1;)V

    invoke-interface {p1, p2}, Lcom/chery/media/ITunerInterface;->registerCallback(Lcom/chery/media/ITunerListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 91
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/chery/media/TunerAIDLTool;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chery/media/TunerAIDLTool;->access$102(Lcom/chery/media/TunerAIDLTool;Lcom/chery/media/ITunerInterface;)Lcom/chery/media/ITunerInterface;

    .line 99
    iget-object p0, p0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {p0}, Lcom/chery/media/TunerAIDLTool;->access$500(Lcom/chery/media/TunerAIDLTool;)V

    return-void
.end method
