.class final Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;
.super Ljava/lang/Object;
.source "CarPlayJAVAClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DevConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;


# direct methods
.method private constructor <init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 367
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected::component class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$202(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    .line 371
    :try_start_0
    iget-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$200(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$300(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->registeListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 375
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 378
    :goto_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 379
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    const/4 p2, 0x1

    .line 382
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateClientSts(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 386
    sget-object p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 394
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected::component class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$202(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    .line 396
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 397
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    const/4 v0, 0x0

    .line 400
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateClientSts(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 404
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
