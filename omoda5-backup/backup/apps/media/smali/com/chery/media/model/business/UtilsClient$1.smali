.class Lcom/chery/media/model/business/UtilsClient$1;
.super Ljava/lang/Object;
.source "UtilsClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/UtilsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UtilsClient;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UtilsClient;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/chery/media/model/business/UtilsClient$1;->this$0:Lcom/chery/media/model/business/UtilsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/chery/media/model/business/UtilsClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/chery/media/model/business/UtilsClient$1;->this$0:Lcom/chery/media/model/business/UtilsClient;

    invoke-static {p2}, Lcom/chery/media/IUtilsServiceAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/media/IUtilsServiceAidlInterface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/UtilsClient;->access$102(Lcom/chery/media/model/business/UtilsClient;Lcom/chery/media/IUtilsServiceAidlInterface;)Lcom/chery/media/IUtilsServiceAidlInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/chery/media/model/business/UtilsClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Lcom/chery/media/model/business/UtilsClient$1;->this$0:Lcom/chery/media/model/business/UtilsClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/media/model/business/UtilsClient;->access$102(Lcom/chery/media/model/business/UtilsClient;Lcom/chery/media/IUtilsServiceAidlInterface;)Lcom/chery/media/IUtilsServiceAidlInterface;

    return-void
.end method
