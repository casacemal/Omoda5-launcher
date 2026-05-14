.class Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;
.super Ljava/lang/Object;
.source "CarplayModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->onNotifyVideoChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

.field final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;Z)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->this$1:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    iput-boolean p2, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->val$isStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 598
    iget-boolean v0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->val$isStart:Z

    iget-object v1, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->this$1:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    iget-object v1, v1, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v1}, Lcom/chery/carplay/CarplayModel;->access$400(Lcom/chery/carplay/CarplayModel;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->this$1:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    iget-object v0, v0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    iget-boolean v1, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->val$isStart:Z

    invoke-static {v0, v1}, Lcom/chery/carplay/CarplayModel;->access$402(Lcom/chery/carplay/CarplayModel;Z)Z

    .line 602
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->this$1:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    iget-object v0, v0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->this$1:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    iget-object v0, v0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    iget-boolean p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;->val$isStart:Z

    invoke-interface {v0, p0}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onNotifyVideoChange(Z)V

    :cond_1
    return-void
.end method
