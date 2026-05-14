.class public Lcom/chery/media/util/RunnableThread;
.super Ljava/lang/Object;
.source "RunnableThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;

.field private mThreadHandler:Landroid/os/Handler;

.field private mThreadRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/chery/media/util/RunnableThread;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/util/RunnableThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/util/RunnableThread;->mRunnables:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chery/media/util/RunnableThread;->mThreadRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/chery/media/util/RunnableThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/util/RunnableThread;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/chery/media/util/RunnableThread;->mThreadRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/util/RunnableThread;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/chery/media/util/RunnableThread;->mThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/chery/media/util/RunnableThread;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/chery/media/util/RunnableThread;->mThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/chery/media/util/RunnableThread;)Ljava/util/ArrayList;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/chery/media/util/RunnableThread;->mRunnables:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread;->mThreadRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 62
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :goto_0
    iget-object p0, p0, Lcom/chery/media/util/RunnableThread;->mThreadRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 49
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread;->mThreadRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 50
    iget-object v0, p0, Lcom/chery/media/util/RunnableThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/chery/media/util/RunnableThread;->mThreadHandler:Landroid/os/Handler;

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/chery/media/util/RunnableThread;->mThreadRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 21
    sget-object v0, Lcom/chery/media/util/RunnableThread;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Lcom/chery/media/util/RunnableThread$1;

    invoke-direct {v0, p0}, Lcom/chery/media/util/RunnableThread$1;-><init>(Lcom/chery/media/util/RunnableThread;)V

    iput-object v0, p0, Lcom/chery/media/util/RunnableThread;->mThread:Ljava/lang/Thread;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
