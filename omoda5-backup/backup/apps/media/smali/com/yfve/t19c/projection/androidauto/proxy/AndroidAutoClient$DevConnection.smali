.class final Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;
.super Ljava/lang/Object;
.source "AndroidAutoClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DevConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;


# direct methods
.method private constructor <init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;-><init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$502(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;Z)Z

    .line 354
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p2}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$602(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onServiceConnected called, ComponentName= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AndroidAutoClient"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :try_start_0
    iget-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$600(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p1

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$700(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->registerListener(Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener;)V

    .line 358
    iget-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$600(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    move-result-object p1

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$800(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;->registerCallStatusListener(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 363
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onServiceConnected notify bind state"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$900(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 365
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;

    .line 368
    :try_start_1
    invoke-interface {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;->onBindServiceConnected()V

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v3}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " onBindServiceConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 371
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$602(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;)Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoClient;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onServiceDisconnected called, ComponentName= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidAutoClient"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$900(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 381
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;

    .line 384
    :try_start_0
    invoke-interface {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;->onBindServiceDisConnected()V

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$DevConnection;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v4}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " onBindServiceDisConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 387
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
