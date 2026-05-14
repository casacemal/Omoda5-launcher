.class Lcom/chery/media/util/RunnableThread$1;
.super Ljava/lang/Thread;
.source "RunnableThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/RunnableThread;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/util/RunnableThread;


# direct methods
.method constructor <init>(Lcom/chery/media/util/RunnableThread;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/chery/media/util/RunnableThread$1;->this$0:Lcom/chery/media/util/RunnableThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/chery/media/util/RunnableThread;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " run ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 30
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread$1;->this$0:Lcom/chery/media/util/RunnableThread;

    invoke-static {v0}, Lcom/chery/media/util/RunnableThread;->access$100(Lcom/chery/media/util/RunnableThread;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 31
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread$1;->this$0:Lcom/chery/media/util/RunnableThread;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/chery/media/util/RunnableThread;->access$202(Lcom/chery/media/util/RunnableThread;Landroid/os/Handler;)Landroid/os/Handler;

    .line 32
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread$1;->this$0:Lcom/chery/media/util/RunnableThread;

    invoke-static {v0}, Lcom/chery/media/util/RunnableThread;->access$300(Lcom/chery/media/util/RunnableThread;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 33
    iget-object v2, p0, Lcom/chery/media/util/RunnableThread$1;->this$0:Lcom/chery/media/util/RunnableThread;

    invoke-static {v2}, Lcom/chery/media/util/RunnableThread;->access$200(Lcom/chery/media/util/RunnableThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread$1;->this$0:Lcom/chery/media/util/RunnableThread;

    invoke-static {v0}, Lcom/chery/media/util/RunnableThread;->access$300(Lcom/chery/media/util/RunnableThread;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread$1;->this$0:Lcom/chery/media/util/RunnableThread;

    invoke-static {v0}, Lcom/chery/media/util/RunnableThread;->access$100(Lcom/chery/media/util/RunnableThread;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 40
    invoke-static {}, Lcom/chery/media/util/RunnableThread;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " run finished!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
