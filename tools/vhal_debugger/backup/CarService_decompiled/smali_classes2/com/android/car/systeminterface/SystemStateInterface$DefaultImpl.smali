.class public Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "SystemStateInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/SystemStateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/SystemStateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# static fields
.field private static final MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

.field private static final SUSPEND_TRY_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private mActionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/time/Duration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;

    invoke-direct {v0, p0}, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;-><init>(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mContext:Landroid/content/Context;

    .line 95
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    .line 72
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    .line 72
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public enterDeepSleep()Z
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/android/internal/car/ICarServiceHelper;->forceSuspend(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v0, "retVal":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 115
    .local v0, "deviceEnteredSleep":Z
    goto :goto_1

    .line 112
    .end local v0    # "deviceEnteredSleep":Z
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->TAG:Ljava/lang/String;

    const-string v2, "Unable to enter deep sleep"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "deviceEnteredSleep":Z
    :goto_1
    return v0
.end method

.method public scheduleActionForBootCompleted(Ljava/lang/Runnable;Ljava/time/Duration;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delay"    # Ljava/time/Duration;

    .line 121
    sget-object v0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

    invoke-virtual {v0, p2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gez v0, :cond_0

    .line 123
    sget-object p2, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "corePoolSize":I
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 128
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    .end local v0    # "corePoolSize":I
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public setCarServiceHelper(Lcom/android/internal/car/ICarServiceHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/internal/car/ICarServiceHelper;

    .line 136
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    .line 137
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 101
    return-void
.end method
