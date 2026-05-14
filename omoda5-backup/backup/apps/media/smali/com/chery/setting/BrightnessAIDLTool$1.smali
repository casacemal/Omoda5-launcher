.class Lcom/chery/setting/BrightnessAIDLTool$1;
.super Ljava/lang/Object;
.source "BrightnessAIDLTool.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/setting/BrightnessAIDLTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/setting/BrightnessAIDLTool;


# direct methods
.method constructor <init>(Lcom/chery/setting/BrightnessAIDLTool;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/chery/setting/BrightnessAIDLTool$1;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/chery/setting/BrightnessAIDLTool;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/chery/setting/BrightnessAIDLTool$1;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    invoke-static {p2}, Lcom/chery/settings/IBrightnessInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/settings/IBrightnessInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chery/setting/BrightnessAIDLTool;->access$102(Lcom/chery/setting/BrightnessAIDLTool;Lcom/chery/settings/IBrightnessInterface;)Lcom/chery/settings/IBrightnessInterface;

    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/chery/setting/BrightnessAIDLTool$1;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    invoke-static {p1}, Lcom/chery/setting/BrightnessAIDLTool;->access$100(Lcom/chery/setting/BrightnessAIDLTool;)Lcom/chery/settings/IBrightnessInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/setting/BrightnessAIDLTool$1;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    iget-object p2, p2, Lcom/chery/setting/BrightnessAIDLTool;->callback:Lcom/chery/settings/IBrightnessCallback$Stub;

    invoke-interface {p1, p2}, Lcom/chery/settings/IBrightnessInterface;->registerCallBack(Lcom/chery/settings/IBrightnessCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    :goto_0
    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool$1;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    invoke-static {p0}, Lcom/chery/setting/BrightnessAIDLTool;->access$200(Lcom/chery/setting/BrightnessAIDLTool;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;

    .line 79
    invoke-interface {p1}, Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;->onConnected()V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 85
    invoke-static {}, Lcom/chery/setting/BrightnessAIDLTool;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool$1;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/setting/BrightnessAIDLTool;->access$102(Lcom/chery/setting/BrightnessAIDLTool;Lcom/chery/settings/IBrightnessInterface;)Lcom/chery/settings/IBrightnessInterface;

    return-void
.end method
