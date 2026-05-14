.class Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;
.super Ljava/lang/Object;
.source "AAModel.java"

# interfaces
.implements Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/androidauto/AAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyAABindServiceStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/androidauto/AAModel;


# direct methods
.method private constructor <init>(Lcom/chery/androidauto/AAModel;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/androidauto/AAModel;Lcom/chery/androidauto/AAModel$1;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;-><init>(Lcom/chery/androidauto/AAModel;)V

    return-void
.end method


# virtual methods
.method public onBindServiceConnected()V
    .locals 2

    .line 482
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBindServiceConnected: "

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;->this$0:Lcom/chery/androidauto/AAModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chery/androidauto/AAModel;->access$802(Lcom/chery/androidauto/AAModel;Z)Z

    .line 484
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/chery/androidauto/AAModel$AAHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBindServiceDisConnected()V
    .locals 2

    .line 489
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBindServiceDisConnected: "

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;->this$0:Lcom/chery/androidauto/AAModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chery/androidauto/AAModel;->access$802(Lcom/chery/androidauto/AAModel;Z)Z

    .line 491
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/chery/androidauto/AAModel$AAHandler;->sendEmptyMessage(I)Z

    return-void
.end method
