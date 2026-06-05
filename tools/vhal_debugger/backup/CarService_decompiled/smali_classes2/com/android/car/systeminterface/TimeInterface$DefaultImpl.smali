.class public Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "TimeInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/TimeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/TimeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public cancelAllActions()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 55
    return-void
.end method

.method public scheduleAction(Ljava/lang/Runnable;J)V
    .locals 7
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMs"    # J

    .line 49
    iget-object v0, p0, Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 50
    return-void
.end method
