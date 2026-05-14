.class Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;
.super Ljava/lang/Thread;
.source "AndroidAutoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->bindProxyService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;


# direct methods
.method constructor <init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, " InterruptedException:"

    const-string v1, "id:"

    const-string v2, "AndroidAutoClient"

    .line 413
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "vendor.yfvet.projection.androidauto"

    .line 414
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.yfve.t19c.projection.androidauto.uiproxy.uiproxyservice"

    .line 415
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v4, 0x7d0

    .line 417
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v7}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bind androidauto ui java service"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v6, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v6}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$1100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v7}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$1000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    .line 421
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 422
    iget-object v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v3}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$1200(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 424
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v7}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v7}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " SecurityException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 431
    iget-object v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v3}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$1200(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$3;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
