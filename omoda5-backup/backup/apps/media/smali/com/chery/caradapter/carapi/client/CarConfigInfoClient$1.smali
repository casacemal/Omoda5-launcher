.class Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$1;
.super Ljava/lang/Object;
.source "CarConfigInfoClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;


# direct methods
.method constructor <init>(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$1;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$1;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1900(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Z

    move-result v0

    .line 113
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$1;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$2000(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$1;->this$0:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->access$2000(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
